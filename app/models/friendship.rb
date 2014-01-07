class Friendship < ActiveRecord::Base
  attr_accessible :out_friend_id, :in_friend_id

  validates :out_friend_id, :in_friend_id, :presence => true


  belongs_to :out_friend,
             :class_name => "User",
             :primary_key => :id,
             :foreign_key => :out_friend_id

  belongs_to :in_friend,
             :class_name => "User",
             :primary_key => :id,
             :foreign_key => :in_friend_id

end
