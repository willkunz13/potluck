require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/potluck.rb'
require_relative '../lib/dish.rb'

class PotluckTest < Minitest::Test

	def setup
		@potluck = Potluck.new("7-13-18")
		@couscous_salad = Dish.new("Couscous Salad", :appetizer)
		@cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
		@summer_pizza = Dish.new("Summer Pizza", :appetizer)
		@roast_pork = Dish.new("Roast Pork", :entre)
		@candy_salad = Dish.new("Candy Salad", :dessert)
	end

	def test_it_exists
		assert_instance_of Potluck, @potluck
	end

	def test_date
		assert_equal "7-13-18", @potluck.date
	end

	def test_dishes
		assert_equal [], @potluck.dishes
	end

	def test_add
		assert_equal @potluck.add(@couscous_salad), @potluck.dishes
		assert(@potluck.add(@cocktail_meatballs))
		assert_equal @potluck.dishes.length, 2
		@potluck.add(@summer_pizza)
		@potluck.add(@roast_pork)
		@potluck.add(@candy_salad)
	end

	def test_get_all_from_category
		@potluck.add(@couscous_salad)
		@potluck.add(@cocktail_meatballs)
		@potluck.add(@summer_pizza)
                @potluck.add(@roast_pork)
                @potluck.add(@candy_salad)
		assert(@potluck.get_all_from_category(:appetizer))
		assert_equal @potluck.get_all_from_category(:appetizer).first.name, "Couscous Salad"
	end

end

	
		

	
