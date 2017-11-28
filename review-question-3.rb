# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

require 'pry'

#users have many photos
#photos have one user
#photos have many comments
#do users have many comments through photos?  i guess.. but comments don't make sense divorced from the photo to which they belong.

class User

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name
  attr_accessor :photos

  def initialize(user_name)
    @name = user_name
    @photos = []
    @@all << self
  end

end

class Photo

  attr_reader :user
  attr_accessor :comments

  def initialize
    @comments = []
  end

  def user=(some_user)
    @user = some_user
    self.user.photos << self
  end

  def make_comment(comment_string)
    new_comment = Comment.new(comment_string)
    self.comments << new_comment
  end

end

class Comment

  @@all =[]

  def self.all
    @@all
  end

  def initialize(string)
    @string = string
    @@all << self
  end

end

binding.pry
#
# photo = Photo.new
# user = User.new("Sophie")
# photo.user = user
# photo.user.name
# # => "Sophie"
# user.photos
# # => [<photo 1>]
#
#
# photo.comments
# # => []
#
# photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
# photo.comments
# # => [<comment1>]
#
# Comment.all
# #=> [<comment1>]
