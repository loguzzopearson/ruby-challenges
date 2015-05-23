class Blog
	attr_accessor :author, :time, :title, :all_blog_posts

	def initialize
		@author = author
		@time = Time.now
		puts "Enter name of blog"
		@title = gets.chomp
		@all_blog_posts = {}
		@nr_blog_posts = 0
	end	

	def create_blogpost
		new_post = Blog_Post.new
		@all_blog_posts << new_post
		@nr_blog_posts +=1
	end
	
	def collect_blog_posts
		return @all_blog_posts
	end
		
	def publish(all_blog_posts)
		all_blog_posts.each do |blog_post|
		print blog_post.author
		print blog_post.time
		print blog_post.title
		print blog_post.content
	end

end

class Blog_Post 
attr_accessor :author, :time, :title, :content

	def intialize
		@author = "E A Poe"
		@time = Time.now
		puts "Enter blog title"
		@title = gets.chomp
		puts "Write your post"
		@content = gets.chomp
	end
end
end

# Create Objects
simple_blog = Blog.new
blogpost1 = simple_blog.create_blogpost

# Call Methods
simple_blog.publish
simple_blog.sort
