class PhotoShout < ActiveRecord::Base
  has_attached_file :image, styles: {
                      shout: '200x200>'
                    }
  validates :image, attachment_presence: true
  validates_attachment :image, content_type: {
                         content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
                       }
end
