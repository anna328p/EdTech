class Tool < ApplicationRecord
	monetize :price, as: :price_dollars
	def grade
		if self.grade_low == self.grade_high then
			self.grade_low == 0 ? 'K' : self.grade_low
		else
			"#{self.grade_low == 0 ? 'K' : self.grade_low}-#{self.grade_high}"
		end
	end
	def full_price
		'$' + self.price_dollars.to_s
	end
end
