# Organizations (username, name, email, password)
redCross = Organization.create(
  username: "arc",
  name: "American Red Cross",
  email: Faker::Internet.email,
  password: "password1"
)
oxfam = Organization.create(
  username: "oxfam",
  name: "Oxfam",
  email: Faker::Internet.email,
  password: "password1"
)
unicef = Organization.create(
  username: "us-unicef",
  name: "US Fund for UNICEF",
  email: Faker::Internet.email,
  password: "password1"
)

# Donors (username, first_name, last_name, email, password)
10.times do
  Donor.create(
    username: Faker::Internet.user_name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password1"
  )
end

# Funds (organization, title, description, goal)
3.times do
  Fund.create(
    organization_id: 1,
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    goal: 20000,
    raised: Faker::Number.number(3),
    picture: 'https://www.grammy.com/sites/com/files/styles/news_detail_header/public/gettyimages-840756000.jpg?itok=ryiDCquu'
  )
end
5.times do
  Fund.create(
    organization_id: 2,
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    goal: 20000,
    raised: Faker::Number.number(3),
    picture: 'https://www.grammy.com/sites/com/files/styles/news_detail_header/public/gettyimages-840756000.jpg?itok=ryiDCquu'
  )
end

2.times do
  Fund.create(
    organization_id: 3,
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    goal: 20000,
    raised: Faker::Number.number(3),
    picture: 'https://www.grammy.com/sites/com/files/styles/news_detail_header/public/gettyimages-840756000.jpg?itok=ryiDCquu'
  )
end

# Donations (donor, fund, amount)
arr = [1,2,3,4,5,6,7,8,9,10]

100.times do
  Donation.create(
    donor_id: arr.sample,
    fund_id: arr.sample,
    amount: Faker::Number.number(2)
  )
end
