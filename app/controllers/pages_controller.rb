# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :set_slug, only: %i[show]

  def index; end

  def show
    view_file = Rails.root.join('app', 'views', 'pages', "#{@slug}.html.erb")

    return render 'pages/404', status: :not_found unless view_file.exist?

    render "pages/#{slug}"
  end

  private

  def set_slug
    @slug = params[:slug]
  end
end
