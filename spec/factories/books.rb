FactoryBot.define do
  factory :book do
    user { nil }
    title { "MyString" }
    author { "MyString" }
    isbn { "MyString" }
    cover_url { "MyString" }
    description { "MyText" }
    category { "MyString" }
    section { "MyString" }
    loaned_to { "MyString" }
    loan_due_date { "2025-01-20" }
    price { "9.99" }
    notes { "MyText" }
  end
end
