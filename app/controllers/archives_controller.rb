class ArchivesController < ApplicationController
  skip_before_filter :authorize
  def index
    @articles = Article.order("created_at DESC").limit(10)
  end
end
