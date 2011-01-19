class Character < ActiveRecord::Base
  attr_accessible :name, :real_name, :gender, :alignment,
                  :energy_projection, :strength, :durability,
                  :fighting_skill, :intelligence, :speed, :images_attributes, :power_ids

  has_many  :images
  accepts_nested_attributes_for :images
  has_and_belongs_to_many :powers

  validates :name,              :presence => true
  validates :real_name,         :presence => true
  validates :energy_projection, :presence => true,
                                :inclusion => 1..7
  validates :strength,          :presence => true,
                                :inclusion => 1..7
  validates :durability,        :presence => true,
                                :inclusion => 1..7
  validates :fighting_skill,    :presence => true,
                                :inclusion => 1..7
  validates :intelligence,      :presence => true,
                                :inclusion => 1..7
  validates :speed,             :presence => true,
                                :inclusion => 1..7
end
