FactoryBot.define do
  factory :acts_as_historiable_history, class: 'History' do
    log { "MyText" }
    owner { "" }
    historiable { "" }
    ip_address { "MyString" }
    user_agent { "MyString" }
  end
end
