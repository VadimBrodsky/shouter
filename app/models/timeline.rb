class Timeline
  # not a concern of the timeline to know template, extend the AC naming instead
  # def to_partial_path
  #   'timelines/timeline'
  # end
  # make into an active model compliant object
  # include ActiveModel::Conversion
  include ActiveModel::Model

  def initialize(user)
    @user = user
  end

  def shouts
    Shout.where(user_id: shout_user_ids)
  end

  private

  def shout_user_ids
    [@user.id] + @user.followed_user_ids
  end
end
