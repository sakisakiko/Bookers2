class Book < ApplicationRecord

  has_one_attached :image
  belongs_to :user
 
# titleは空でないこと
# bodyは空でないかつ最大200文字であること
   validates:title, presence: true
   validates:body, presence: true,length: {maximum:200}
  
   
end

