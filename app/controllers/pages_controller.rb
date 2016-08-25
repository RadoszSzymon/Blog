class PagesController < ApplicationController
	def about
	end
	
	def main
		@posts = Post.all.order('created_at DESC').limit(3)
	end
end
