require_relative 'dish.rb'

class Potluck
	attr_reader :date, :dishes

	def initialize(date)
		@date = date
		@dishes = []
	end

	def add(dish)
		@dishes << dish
	end
	
	def get_all_from_category(category)
		dishes_in_category = []
		dishes_in_category = @dishes.select do |dish|
					dish.category == category
					end
		return dishes_in_category
	end
	
	def menu
		menu = {}
		appetizers = []
		get_all_from_category(:appetizer).each do |dish|
			appetizers << dish.name
			menu[:appetizers] = appetizers.sort
			end	
		entres = []
		get_all_from_category(:entre).each do |dish|
			entres << dish.name
			menu[:entres] = entres.sort
			end
		desserts = []
		get_all_from_category(:dessert).each do |dish|
			desserts << dish.name
			menu[:desserts] = desserts.sort
			end
		return menu		
	end

	def ratio(category)
		if @dishes == []
			return "no dishes"
		else
			get_all_from_category(category).count.to_f / @dishes.count * 100
		end
	end	
	
end

