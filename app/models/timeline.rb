class Timeline
  # make into an active model compliant object
  include ActiveModel::Model

  def initialize(user)
    @user = user
  end

  # not a concern of the timeline, extend the AC naming instead
  # def to_partial_path
  #   'timelines/timeline'
  # end
end
