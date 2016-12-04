class AccountForm < FormBase
    validates :nickname, presence: true

	delegate :nickname, to: :model

	def persisted?
		true
	end

	private

	def self.name
		"User"
	end
end