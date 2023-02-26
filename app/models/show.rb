class Show < ActiveRecord::Base
   has_many :characters
   has_many :actors, through: :characters

   def actors_list
      actors_full_names = []
      self.actors.map do |actor|
         name = "#{actor.first_name} #{actor.last_name}"
         actors_full_names << name
      end

      actors_full_names
   end
end