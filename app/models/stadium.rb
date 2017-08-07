class Stadium < ApplicationRecord

	def race(horses)

    end	

    #stadium = Stadium.last
    #stadium.rank_horses(horses)
    def rank_horses(horses)
    	speed_hash = {}
    	race_count  = 0
    	horses_hash = {}
    	horses.to_a.each_slice(self.tracks){|set|
    		if set.size > 1
    			race_count += 1 
    			set.map{|_horse| horses_hash[_horse] = _horse.speed}
    		end
    	}
    	#fastest_horses = horses.order("speed desc").take(2)
    	fastest_horses = horses_hash.sort_by{|_horse, speed| speed}.reverse.take(2)
    	result = {race_count: race_count}
    	result[:ranked_horses] = fastest_horses.map{|horse_arr| {name: horse_arr[0].name, speed: horse_arr[0].speed}}
    	result
    end	
end
