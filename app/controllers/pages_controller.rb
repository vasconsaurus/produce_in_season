# frozen_string_literal: true

class PagesController < ApplicationController
  def index; end

  def show
    slug = params[:slug]
    view_file = Rails.root.join('app', 'views', 'pages', "#{slug}.html.erb")

    return render 'pages/404', status: :not_found unless view_file.exist?

    render "pages/#{slug}"
  end
end
