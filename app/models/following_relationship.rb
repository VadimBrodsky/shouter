class FollowingRelationship < ActiveRecord::Base
  # Override Rails file naming convention to point to th correct Class
  belongs_to :follower, class_name: 'User'
  belongs_to :followed_user, class_name: 'User'
end
