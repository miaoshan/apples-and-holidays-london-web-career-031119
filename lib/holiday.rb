require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  # given that holiday_hash looks like this:

  {
   :winter => {
     :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
    },
   :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
    },
   :fall => {
     :thanksgiving => ["Turkey"]
     },
   :spring => {
     :memorial_day => ["BBQ"]
    }
   }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter].each do|key, value|
   value<< supply
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def all_winter_holiday_supplies(holiday_hash)
    # return an array of all of the supplies that are used in the winter season
    array=holiday_hash[:winter].collect do |holiday, supplies|
      supplies
    end
    array.flatten
  end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
 holiday_hash.each do |season, values|
   #binding.pry
   values[holiday_name]=supply_array   # add new holiday with supply_array to inner
  #binding.pry                                                      # hash object season (add elements to nested hash)
 holiday_hash
end
end




  def all_supplies_in_holidays(holiday_hash)
    result =nil
    holiday_hash.each do |season, values|
      puts "#{season.to_s.capitalize}:"
      values.each do |holiday,supplies|
        if holiday.to_s.include? ("_")
          result=holiday.to_s.split("_").map {|e|e.capitalize}.join(" ")
        else
          result =holiday.to_s.capitalize
          end
          puts "  #{result}: #{supplies.join(", ")}"
        end
      end
    end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.






def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_name_bbq = []
  holiday_hash.each do |season, values|
    values.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_name_bbq << holiday
      end
    end
  end
  return holiday_name_bbq
end
