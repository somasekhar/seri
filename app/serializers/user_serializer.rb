class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :posts

end


# (1..50).to_a.each{|i|
# 	user = User.create(:username => "som#{i}", :email => "som#{i}@ss.com")
# 	(1..5).to_a.each{|j|
# 		post = Post.create(:user_id => user.id, :title => "post#{j}")
# 		(1..5).to_a.each{|k|
# 			Comment.create(:post_id => post.id, :content => "content#{k}")
# 		}
# 	}

# }
