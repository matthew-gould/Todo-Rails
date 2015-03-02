class Item < ActiveRecord::Base
  belongs_to :list

  validates_uniqueness_of :item_name
  validates_presence_of :item_name
end
