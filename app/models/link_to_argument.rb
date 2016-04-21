# This class is a linking table that links a statement (which
# is an instance of the class Statement) with arguments for that 
# statement (which are also instances of the class Statement).
#
# Additionally it contains the information whether the argument is
# a pro argument for that statement or a contra argument. (The
# attribute of type boolean, that holds that information, is :is_pro_argument)
class LinkToArgument < ApplicationRecord
  belongs_to :statement
  belongs_to :argument, class_name: "Statement" # In this app, arguments are statements themselves

  validates :is_pro_argument, inclusion: { in: [true, false] } # Make sure it's a boolean
end
