module ApplicationHelper
    def handle_session
        @domain = "blog"
        @max_comm = Post.most_commented(5)
    end

    def handle_admin_session
        @domain = "admin"
    end
end
