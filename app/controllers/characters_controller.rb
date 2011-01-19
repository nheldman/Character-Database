require 'rubygems'
require 'google_chart'

class CharactersController < ApplicationController

  def show
    @character = Character.find(params[:id])
    @title = "#{@character.name} | #{@character.real_name}"
    @power_rank = create_power_rank
  end

  def new
    @title = "New Character"
    @character = Character.new
    @character.images.build
  end

  def create
    @character = Character.new(params[:character])
    if @character.save
      flash[:success] = "Character saved successfully"
      redirect_to @character
    else
      @title = "New Character"
      render :new
    end
  end

  private
    def create_power_rank
      labels = []
      ranks = []
      total = 0
      @character.attributes.each { |k,v|
        if (1..10).member?(v) and k != 'id'
          labels << k.humanize
          ranks << v
          total += v
        end
      }

      GoogleChart::BarChart.new("400x230", "Power Rank (#{total} Total)", :horizontal, false) do |bc|
        bc.data "Power Rank", ranks, '0000ff'
        bc.axis :y, :labels => labels, :font_size => 10
        bc.axis :x, :range => 0..7
        bc.show_legend = false
        bc.data_encoding = :extended
        bc.fill :background, :gradient, :angle => 0, :color => [['76A4FB',1], ['ffffff',0]]        
        return bc.to_url
      end
    end
end
