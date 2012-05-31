class Message < ActiveRecord::Base
  attr_accessible :days_to_send, :text, :mortal_id
  belongs_to :mortal
  validates :days_to_send, :text, :mortal_id, :presence => true
end
