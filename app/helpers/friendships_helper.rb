module FriendshipsHelper
  def can_friend?(out_friend_id, in_friend_id)
    if out_friend_id == in_friend_id
      false
    else
      true
    end
  end

  def can_unfriend?(out_friend_id)
    if current_user.in_friendships.where(:out_friend_id => out_friend_id).empty?
      false
    else
      true
    end
  end
end
