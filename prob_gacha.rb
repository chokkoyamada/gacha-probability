#!/usr/bin/ruby

total_trial = 0
max_trial = 0
min_trial = 1.0/0 #infinite

ITEM_NUM = 9
TRIAL_TIME = 10000

(1..TRIAL_TIME).each do |num|
    begin
        dice = Hash.new
        trial = 0
        while true
            num = rand(ITEM_NUM)
            print num.to_s + " "
            dice[num] = 1
            trial += 1
            if dice.length == ITEM_NUM
                max_trial = trial if trial > max_trial
                min_trial = trial if trial < min_trial
                total_trial += trial
                print "\n"
                break
            end
        end
    end
end

puts "average trial time:" + (total_trial / TRIAL_TIME).to_s
puts "max trial time:" + max_trial.to_s
puts "min trial time:" + min_trial.to_s

