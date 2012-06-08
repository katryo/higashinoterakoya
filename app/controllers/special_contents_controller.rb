class SpecialContentsController < ApplicationController
  skip_before_filter :authorize
  def index
  end

  def raiko_question
@location = Twitter.user("katryo").location
@icon = Twitter.profile_image('katryo', :size => 'bigger')
@tweet = Twitter.user_timeline("katryo").first.text
  end
end
