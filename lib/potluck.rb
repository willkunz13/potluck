class Potluck
	attr_reader :date, :dishes

	def initialize(date)
		@date = date
		@dishes = []
	end

	def add(dish)
		@dishes << dish
	end
	
	def get_all_from_category(desired_category)
		dishes_in_category = @dishes.select do |dish|
					dish.category == desired_category
					end
		return dishes_in_category
	end
	
end

