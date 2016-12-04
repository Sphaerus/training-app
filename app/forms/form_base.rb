class FormBase
	include ActiveModel::Model

	delegate :id, to: :model

	attr_reader :model

	def initialize(model)
		@model = model
	end

	def submit(params = {})
		@params = params
		assign_attributes_to_model(params)

		if valid?
			apply_form
			return true
		else
			return false
		end
	end

	def self.model_name
		ActiveModel::Name.new(self, nil, name)
	end

	def persisted?
		!model.new_record?
	end

	private

	def apply_form
		model.save
	end

	#true for record already existing in the database
	def persisted?
		false
	end

	#forms can assign attributes automatically for us and its default
	def assign?
		true
	end

	def assign_attributes_to_model(params)
		@model.assign_attributes(params)
	end
end