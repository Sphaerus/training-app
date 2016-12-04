class AccountForm < FormBase
    validates :nickname, presence: true

	delegate :nickname, to: :model

	private

	def self.name
		"User"
	end
end