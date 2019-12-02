require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/potluck.rb'
require_relative '../lib/dish.rb'

class PotluckTest < Minitest::Test

	def setup
		@potluck = Potluck.new("7-13-18")
		@couscous_salad = Dish.new("Couscous Salad", :appetizer)
		@cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
	end

	def test_it_exists
		assert_instance_of @potluck, Potluck
	end

	def test_date
		assert_equal "7-13-18", @potluck.date
	end

	def test_dishes
		assert_equal [], potluck.dishes
	end

	def test_add
		assert_equal @potluck.add(@couscous_salad), @potluck.dishes
		assert(@potluck.add(@cocktail_meatballs)
		assert_equal @potluck.dishes.lenght, 2
	end
end

	
		

	
