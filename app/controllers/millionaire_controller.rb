class MillionaireController < ApplicationController
  def start
  	@nameid = params[:nameid]
  	@score = params[:erocs435]
  	@dataset = params[:dataset]
  	@users = User.all
  	@user_list = Hash.new

  	@users.each do |user|
  		@user_list[user.name] = user.score  	
 	end

  	@user_list = @user_list.sort_by{|k,v| v}.reverse
  end

  def game
  	@nameid = params[:nameid]
  	@dataset = params[:dataset]
  end

  def game_over
  	@nameid = params[:nameid]
  	@score = params[:erocs435]
  	@dataset = params[:dataset]
  	@@users = User.find_by(name: @nameid)
  	current_score = 0
  	unless @@users.nil?
  		current_score = @@users.d1.to_i + @@users.d2.to_i + @@users.d3.to_i + @@users.d4.to_i + @@users.d5.to_i 
  	else
  		current_score = @score.to_i
  	end
  	 puts "----------------------- #{current_score}"

  	# if  @@users.nil? || @score.to_i > @@users.current_dataset.to_i
  	# 	unless @@users.nil?
  	# 		current_score = @@users.score.to_i + @score.to_i
  	# 	end
  	# 	puts "user is saved"
  	# 	#current_dataset = "d"+ @dataset + ": "+@score.to_i
  	# 	User.find_by(name: @nameid).destroy if (@@users.nil? !=true)
  	# 	current_user = User.create(name: @nameid, score: @score)
  	# 	current_user.save

  	# end

  	case @dataset.to_i
  	when 1
  		if  (@@users.nil? != true) && @score.to_i > @@users.d1.to_i
  			User.find_by(name: @nameid).destroy if (@@users.nil? !=true)
  			current_user = User.create(name: @nameid, score: current_score + @score.to_i - @@users.d1.to_i, d1: @score.to_i, d2: @@users.d2, d3: @@users.d3, d4: @@users.d4, d5: @@users.d5)
  			current_user.save
  		elsif @@users.nil? 
  			current_user = User.create(name: @nameid, score: @score.to_i, d1: @score.to_i)
  			current_user.save
  		end
  	when 2
  		if  (@@users.nil? != true) && @score.to_i > @@users.d2.to_i
  			User.find_by(name: @nameid).destroy if (@@users.nil? !=true)
  			current_user = User.create(name: @nameid, score: current_score+ @score.to_i- @@users.d2.to_i, d1: @@users.d1, d2: @score.to_i, d3: @@users.d3, d4: @@users.d4, d5: @@users.d5)
  			current_user.save
  		elsif @@users.nil? 
  			current_user = User.create(name: @nameid, score: @score.to_i, d2: @score.to_i)
  			current_user.save
  		
  		end
  	when 3
  		if  (@@users.nil? != true) && @score.to_i > @@users.d3.to_i
  			User.find_by(name: @nameid).destroy if (@@users.nil? !=true)
  			current_user = User.create(name: @nameid, score: current_score+ @score.to_i- @@users.d3.to_i, d1: @@users.d1, d2: @@users.d2, d3: @score.to_i, d4: @@users.d4, d5: @@users.d5)
  			current_user.save
  		elsif @@users.nil? 
  			current_user = User.create(name: @nameid, score: @score.to_i, d3: @score.to_i)
  			current_user.save	
  		end
  	when 4
  		if  (@@users.nil? != true) && @score.to_i > @@users.d4.to_i
  			User.find_by(name: @nameid).destroy if (@@users.nil? !=true)
  			current_user = User.create(name: @nameid, score: current_score+ @score.to_i- @@users.d4.to_i, d1: @@users.d1, d2: @@users.d2, d3: @@users.d3, d4: @score.to_i, d5: @@users.d5)
  			current_user.save
  		elsif @@users.nil? 
  			current_user = User.create(name: @nameid, score: @score.to_i, d4: @score.to_i)
  			current_user.save
  		
  		end
  	when 5
  		if  (@@users.nil? != true) && @score.to_i > @@users.d5.to_i
  			User.find_by(name: @nameid).destroy if (@@users.nil? !=true)
  			current_user = User.create(name: @nameid, score: current_score+ @score.to_i- @@users.d5.to_i, d1: @@users.d1, d2: @@users.d2, d3: @@users.d3, d4: @@users.d4, d5: @score.to_i)
  			current_user.save
  		elsif @@users.nil? 
  			current_user = User.create(name: @nameid, score: @score.to_i, d5: @score.to_i)
  			current_user.save
  		end
  	end





  	
  	#current_user = User.create(name: @nameid, score: @score.to_i)
  	#puts "user is saved" if @@users.nil? || @score.to_i > @@users.score.to_i
  	#User.find_by(name: @nameid).destroy if (@@users.nil? !=true) && @score.to_i > @@users.score.to_i
  	#current_user = User.create(name: @nameid, score: @score.to_i) if @@users.nil? || @score.to_i > @@users.score.to_i
  	#current_user.save if @@users.nil? || @score.to_i > @@users.score.to_i
  	
  end

end

