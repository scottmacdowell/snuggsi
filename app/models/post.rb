class Post < ActiveRecord::Base
  belongs_to :thingi
  validates_presence_of :title,   :message => "Title is required!", :allow_nil => false
  validates_length_of   :title,   :message => "Title must have length shorter than %d", :maximum => 200, :allow_nil => false
  validates_presence_of :body,    :message => "Body is required!"
  validates_length_of   :author,  :message => "Author must have length shorter than %d", :maximum => 200, :allow_nil => true
end
