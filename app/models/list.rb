class List < ActiveRecord::Base
  has_many :items

  validates_uniqueness_of :list_name
  validates_presence_of :list_name
end
