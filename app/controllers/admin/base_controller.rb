class Admin::BaseController < ApplicationController
  before_action :require_admin

  private

  def require_admin
    render status: 404 if !current_admin?
  end
end
