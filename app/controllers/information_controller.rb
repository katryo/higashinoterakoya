class InformationController < ApplicationController
  def index
    @articles = Article.order(:title)
  end
end
