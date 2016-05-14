class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true

  default_scope { order('created_at DESC') }

  scope :text_shouts, -> {where(content_type: 'TextShout')}

  searchable do
    text :content do
      content.index
    end
  end
end
