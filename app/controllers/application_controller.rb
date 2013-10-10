include ApplicationHelper
class ApplicationController < ActionController::Base
    protect_from_forgery

    # For devise
    def after_sign_in_path_for(resource)
        admin_posts_path
    end
end
