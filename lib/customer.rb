require 'pry'
class Customer
  attr_accessor :name, :age

 @@all = []

 def initialize(name, age)
   @name = name
   @age = age
   @@all << self
 end

 def self.all
   @@all
 end

 def new_meal(waiter, total, tip=0)
   Meal.new(waiter,self, total, tip )
 end

 def meals
   my_meals = Meal.all.find_all do |meal|
      meal.customer == self
    end
  end
  def waiters
    my_meals = Meal.all.find_all do |waiter|
      waiter.customer == self
    end
  my_meals.map{ |waiter| waiter.waiter}

end
end
