class TopicForm < FormBase
	validates :topic, :content, presence: true

	delegate :topic, :content, to: :model

	private

	def self.name
		"Topic"
	end
end