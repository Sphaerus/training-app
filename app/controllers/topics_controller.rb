class TopicsController < ApplicationController
	expose :topic, parent: :current_user

	def show

	end

	def new
		@topic_form = TopicForm.new(topic)
	end

	def edit
		@topic_form = TopicForm.new(topic)
	end

	def create
		@topic_form = TopicForm.new(topic)

		respond_to do |format|
			if @topic_form.submit(topic_params)
				format.html { redirect_to topic_path(topic) , notice: "success" }
			else
				format.html { render action: :new, alert: "no success:(" }
			end
		end
	end

	def update
		@topic_form = TopicForm.new(topic)

		respond_to do |format|
			if @topic_form.submit(topic_params)
				format.html { redirect_to topic_path(topic) , notice: "success" }
			else
				format.html { render action: :new, alert: "no success:(" }
			end
		end
	end

	def destroy
		topic.destroy
		redirect_to root_path
	end

	private

	def topic_params
		params.require(:topic).permit(:user_id, :topic, :content)
	end
end