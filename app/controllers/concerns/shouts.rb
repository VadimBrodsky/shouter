module Shouts
  extend ActiveSupport::Concern

  included do
    def create
      content = build_content
      shout = current_user.shouts.build(content: content)
      if shout.save
        redirect_to dashboard_path
      else
        lash.alert = 'Could not shout.'
        redirect_to dashboard_path
      end
    end
  end
end
