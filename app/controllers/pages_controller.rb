# frozen_string_literal: true

class PagesController < ApplicationController
  def index; end

  def show
    slug = params[:slug]
    view_file = Rails.root.join('app', 'views', 'pages', "#{slug}.html.erb")

    unless view_file.exist?
      render 'pages/404', status: :not_found
      return
    end

    render "pages/#{slug}"
  end
end
