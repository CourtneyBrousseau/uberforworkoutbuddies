class Exercise < ApplicationRecord
	# This is required because you can't technically name an attribute of a model "type" but this fixes it 
	self.inheritance_column = :_type_disabled
end
