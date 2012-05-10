class InformationController < ApplicationController
  skip_before_filter :authorize
  def index
    @articles = Article.order("created_at DESC").first
  end
end
