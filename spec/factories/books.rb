FactoryGirl.define do
  factory :book do
    title "How to make a telescope"
    publisher "Willmann-Bell"
    year "1984"
  end

  factory :complete_book, parent: :book do
    isbn 9782264039880
  end
end
