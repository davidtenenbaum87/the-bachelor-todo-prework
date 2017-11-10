def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant|
        contestant.each do |info, data|
          if data == "Winner"
            return contestant["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_num, contestants|
    contestants.each do |contestant|
      contestant.each do |info, data|
        if data == occupation
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  result = 0
  data.each do |season_num, contestants|
    contestants.each do |contestant|
      contestant.each do |info, data|
        if data == hometown
          result += 1
        end
      end
    end
  end
  result
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, contestants|
    contestants.each do |contestant|
      contestant.find do |info, data|
        if data == hometown
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages_array = []
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant|
        contestant.each do |info, data|
          if info == "age"
            ages_array << contestant["age"].to_i
          end
        end
      end
    end
  end
  (ages_array.reduce(:+) / ages_array.length.to_f).round
end
