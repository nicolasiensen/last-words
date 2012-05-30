class Message < ActiveRecord::Base
  attr_accessible :days_to_send, :text, :mortal_id
  belongs_to :mortal
end
