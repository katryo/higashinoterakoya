class InformationController < ApplicationController
  skip_before_filter :authorize
  def index
    @articles = Article.order("created_at DESC").first
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
  end
end
