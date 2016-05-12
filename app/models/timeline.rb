class Timeline
  # make into an active model compliant object
  # include ActiveModel::Conversion
  include ActiveModel::Model

  def initialize(user)
    @user = user
  end

  def shouts
    @user.shouts
  end

  # not a concern of the timeline to know template, extend the AC naming instead
  # def to_partial_path
  #   'timelines/timeline'
  # end
end
