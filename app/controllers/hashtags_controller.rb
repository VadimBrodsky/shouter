class HashtagsController < ApplicationController
  def show
    @hashtag = params[:id]
    @shouts = []

  end
end
