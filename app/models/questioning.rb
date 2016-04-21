# The Questioning class describes an interrogation someone is interested in, like
# "What politician X has done was correct!". Now other users are able to add pro and contra
# arguments. The clou: those arguments are an instance of class Questioning themselves. So also those
# arguments can be subject of a debate.
class Questioning < ApplicationRecord
  belongs_to :user

  # Has many links to arguments (which are also objects of type Questioning).
  has_many :argumental_questioning_links
  # Has many links to PRO arguments.
  has_many :pro_argumental_questioning_links, -> { where(is_pro_argument: true) }, class_name: "ArgumentalQuestioningLink"
  # Has many links to CONTRA arguments.
  has_many :contra_argumental_questioning_links, -> { where(is_pro_argument: false) }, class_name: "ArgumentalQuestioningLink"
  # Has many arguments (also objects of type Questioning).
  has_many :arguments, through: :argumental_questioning_links
  # Has many pro arguments.
  has_many :pro_arguments, through: :pro_argumental_questioning_links, source: :argument
  # Has many contra arguments.
  has_many :contra_arguments, through: :contra_argumental_questioning_links, source: :argument

  # Validations
  validates :body, presence: true, length: { in: 2..260 }
end
