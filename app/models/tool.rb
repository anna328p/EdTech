class Tool < ApplicationRecord
	monetize :price, as: :price_dollars
	def grade
		if grade_low == grade_high
			grade_low&.zero? ? 'K' : grade_low
		else
			"#{grade_low&.zero? ? 'K' : grade_low}-#{grade_high}"
		end
	end

	def full_price
		# noinspection Style/RedundantSelf
		"$#{# noinspection RubyResolve
		self.price_dollars}"
	end

	def self.filter(params)
		result = self.all
		%i[	creativity communication collaboration citizenship
				critical_thinking empowered_learner digital_citizen
				knowledge_constructor innovative_designer computational_thinker
				creative_communicator global_collaborator].each do |p|
			result = result.where p => true if params[p]
		end
		if params[:enable_grade_level_filtering]
			result = result.where('grade_low >= :a AND grade_low <= :b OR grade_high >= :a AND grade_high <= :b',
														{a: params[:grade_low], b: params[:grade_high]})
		end
		return result
	end
end
