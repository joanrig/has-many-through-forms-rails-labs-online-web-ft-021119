class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def show
  end

end
