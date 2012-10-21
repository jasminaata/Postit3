module ApplicationHelper
    def fix_url(url)
        url.starts_with?('http://') ? url : 'http://' + url  
    end

    def display_name(user)
        user ? user.name : 'anon'
    end
    
    def display_title(post)
        post ? post.title : 'no post'
    end
end
