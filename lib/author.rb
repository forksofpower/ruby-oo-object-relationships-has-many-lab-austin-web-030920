require_relative 'post'
require 'pry'
class Author
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{|x| x.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        # binding.pry
        post
    end

    def self.post_count
        Post.all.select{|x| x.author}.count
    end

end