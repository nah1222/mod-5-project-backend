# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end
class ApplicationController < ActionController::Base
    before_action :logged_in_user?

    def logged_in_user?
        @current_user = User.find_by(id:session[:user_id])
    end
end