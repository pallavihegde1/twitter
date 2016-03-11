desc "This is afile to generate fake data"
	task:fake_data =>:environment do  # fake_data is the file name

10.times do
      	user=User.new
      	user.name=Faker::Name.name	
      	user.location= Faker::Address.country
      	user.save

      	3.times do 
      	tweet=Tweet.new
      	tweet.tweet= Faker::Lorem.sentence 
      	tweet.user_id=user.id
      	tweet.save
      	end
	end
end
