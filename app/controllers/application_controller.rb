class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def user_for_paper_trail
    current_account
  end

  def current_account
    AccountDecorator.decorate(super) if super
  end

  def report_errors(resource)
    Rails.logger.warn("Something went wrong:")
    resource.errors.full_messages.each(&method(:error_line))
  end

  def error_line(error)
    Rails.logger.warn("\n  * #{error}")
  end
end
