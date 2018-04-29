require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].select do |item|
      item["status"] == "Winner"
  end.first["name"].split(" ").first
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
      contestants.each do |contestant|
          return contestant["name"] if contestant["occupation"] == occupation
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants|
      contestants.each do |contestant|
          counter += 1 if contestant["hometown"] == hometown
      end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
      contestants.each do |contestant|
          return contestant["name"] if contestant["hometown"] == hometown
      end
  end
end

def get_average_age_for_season(data, season)
  # code here
end
