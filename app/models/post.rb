class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :comments
  has_many :votes
  belongs_to :user

  field :title, type: String
  field :body, type: String
  field :points, type: Integer, default: 0

  validates_presence_of :title
  validates_presence_of :body
end
