class Blog
	attr_accessor :author, :time_created, :title, :all_blog_posts

#initialize to allow adding title, content to post
	def initialize
		@author = "Jack Kerouac"
		@time_created = Time.now
		puts "Enter name of blog"
		@title = gets.chomp
		@all_blog_posts = []
		@nr_blog_posts = 0
	end	

	def create_blogpost
		new_post = Blog_Post.new
		@nr_blog_posts +=1
	end
	
	def collect_blog_posts
		return @all_blog_posts.sort
	end
		
	def publish(all_blog_posts)
		all_blog_posts.each do |blog_post|
		print blog_post.author
		print blog_post.time_created
		print blog_post.title
		print blog_post.content
	end
end
end

class Blog_Post 
attr_accessor :time_created, :title, :content

	def initialize
		@time_created = Time.now
		puts "Enter post title"
		@title = gets.chomp
		
		puts "Write your post"
		@content = gets.chomp
	end
end

# Create Objects
simple_blog = Blog.new
blogpost1 = simple_blog.create_blogpost
all_blog_posts = simple_blog.collect_blog_posts
puts simple_blog.inspect
simple_blog.publish(all_blog_posts)

blogpost2 = simple_blog.create_blogpost
all_blog_posts = simple_blog.collect_blog_posts
puts simple_blog.inspect
simple_blog.publish(all_blog_posts)
