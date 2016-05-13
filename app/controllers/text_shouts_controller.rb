class TextShoutsController < ApplicationController
  include Shouts

  def create
    create_shout
  end

  private

  def build_content
    TextShout.new(text_shout_parameters)
  end

  def text_shout_parameters
    params.require(:text_shout).permit(:body)
  end
end
