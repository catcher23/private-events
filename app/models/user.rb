class User < ActiveRecord::Base
  has_many :event_attendings, :foreign_key => :event_attendee_id
  has_many :attended_events, :through => :event_attendings
  has_many :created_events, :foreign_key => :creator_id, :class_name => 'Event'

  validates :name,  presence: true, uniqueness: true
end
