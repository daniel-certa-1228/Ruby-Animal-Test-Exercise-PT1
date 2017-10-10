require 'minitest/autorun'
require_relative 'animals'
# puts "test_animals.rb"
class TestAnimals < MiniTest::Test

	def setup
		puts "set up"
		@animal = Animal.new("Beavis", "Ant")
		@animal.legs = 6
		@dog = Dog.new("Butthead")
		@dog.legs = 4
		puts @animal
		puts @dog
	end

	def test_animal_object_has_correct_name_type
		assert_kind_of String, @animal.name
	end

	def test_animal_object_for_correct_species_value
		assert_match @animal.species, "Ant"
	end

	def test_animal_walk_calculates_correctly
		assert_equal @animal.walk.round(1), 0.6
	end

	def test_dog_walk_calculates_correctly
		assert_equal @dog.walk, 0.8
	end

	def test_instance_of_animal
		assert_instance_of Animal, @animal
	end

	def test_instance_of_dog
		assert_instance_of Dog, @dog
	end

	def teardown
		puts "tear down"
	end

end


# Write test cases to verify the I/O of the following methods of Animal and Dog.

# 1. DONE In the test class' setup method, create an instance of Animal and Dog.
# 2. DONE Animal object has the correct name property.
# 3. DONE Set a species and verify that the object property of species has the correct value.
# 4. DONE Invoking the walk method set the correct speed on the both objects.
# 5. DONE The animal object is an instance of Animal.
# 6. DONE The dog object is an instance of Dog.