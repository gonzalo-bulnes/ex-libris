# See http://blog.chrisblunt.com/rails-3-how-to-simulate-paperclip-attachments-with-factorygirl/
FactoryGirl.define do
  factory :record do
    location "1A"
    number_of_books_estimate "3"
    picture File.open("spec/support/sample_picture.png")
  end
end
