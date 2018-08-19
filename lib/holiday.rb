def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].collect do |holiday,array|
    array<<supply
  end
  holiday_hash


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<<supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, each_holiday_hash|
    puts "#{season.to_s.capitalize!}:"
    each_holiday_hash.each do |holiday_key, supplies_array|
      holiday= holiday_key.to_s
      if holiday.include?("_")==true
        holiday=holiday.split("_")
        holiday.collect do |word|
          word.capitalize!
        end
        holiday=holiday.join(" ")
        holiday= "  #{holiday}: "
      else
        holiday= "  #{holiday.capitalize}: "
      end
      holiday= holiday.chomp
      holiday<< supplies_array.join(", ")
      puts holiday
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_BBQ= []
  holiday_hash.each do |season, holiday_array|
    holiday_array.each do |holiday_key,array|
      if array.include?("BBQ")==true
        holidays_with_BBQ<<holiday_key
      end
    end
  end
  holidays_with_BBQ
end
