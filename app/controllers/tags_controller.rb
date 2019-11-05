class TagsController < ApplicationController
	def index
		@tags = ActsAsTaggableOn::Tag.all
	end

	def show
		# debugger
		@tag = ActsAsTaggableOn::Tag.find(params[:id])
		@posts = Post.tagged_with(@tag.name)
	end
end
