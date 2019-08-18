class Waiter
  @@all = []
  attr_accessor :name, :years_exp
  def initialize(name, years_exp)
    @name = name
    @years_exp = years_exp
    @@all << self
  end
  def self.all
    @@all
  end
  def new_meal(customer, total, tip=0)
    new_meal = Meal.new(self, customer, total, tip )
  end
  def meals
    meals_served = Meal.all.find_all do |meal|
       meal.waiter == self
     end
   end
   def best_tipper
     meals_served = Meal.all.find_all do |meal|
        meal.waiter == self
      end
      xxx = meals_served.sort{ |a, b| b.tip <=> a.tip}
      xxx[0].customer
    end

end
