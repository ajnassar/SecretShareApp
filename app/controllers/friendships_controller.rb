class FriendshipsController < ApplicationController
  def create
    params[:friendship][:in_friend_id] = current_user.id
    @friendship = Friendship.new(params[:friendship])
    @friendship.save!
    render :json => {head: :ok}
  end

  def destroy
    @friendship = Friendship.find_by_in_friend_id_and_out_friend_id(
      current_user.id,
      params[:out_friend_id]
    )
    @friendship.destroy
    render :json => {head: :ok}
  end
end
