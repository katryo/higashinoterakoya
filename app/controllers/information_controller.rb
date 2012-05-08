class InformationController < ApplicationController
  skip_before_filter :authorize
  def index
    @articles = Article.order(:title)
  end
end
