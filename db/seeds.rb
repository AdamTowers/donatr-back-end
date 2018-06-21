# Organizations (username, name, email, password)
redCross = Organization.create(
  username: "arc",
  name: "American Red Cross",
  bio: Faker::Lorem.paragraph,
  email: Faker::Internet.email,
  password: "password1"
)
oxfam = Organization.create(
  username: "oxfam",
  name: "Oxfam",
  bio: Faker::Lorem.paragraph,
  email: Faker::Internet.email,
  password: "password1"
)
unicef = Organization.create(
  username: "us-unicef",
  name: "US Fund for UNICEF",
  bio: Faker::Lorem.paragraph,  
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
orgIds = [1,2,3]
goals = [20000.00, 50000.00, 75000.00, 100000.00, 150000.00]

earthquakes = [
  'https://cdn.pixabay.com/photo/2016/09/07/10/25/crash-1651305_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/09/12/21/58/earthquake-1665894_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/09/01/02/07/construction-1635090_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/01/10/12/29/earthquake-1968985_1280.jpg'
]
ei = 0
4.times do
  Fund.create(
    organization_id: orgIds.sample,
    title: 'Earthquake ' + Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    goal: goals.sample,
    picture: earthquakes[ei]
  )
  ei += 1
end

hurricanes = [
  'https://cdn.pixabay.com/photo/2013/02/18/03/47/pierson-82690_960_720.jpg',
  'https://cdn.pixabay.com/photo/2018/04/06/00/08/calamity-3294654_960_720.jpg',
  'https://cdn.pixabay.com/photo/2015/01/31/17/45/hurricane-flooding-618714_960_720.jpg',
  'https://cdn.pixabay.com/photo/2013/09/08/19/15/hurricane-katrina-180538_960_720.jpg',
  'https://cdn.pixabay.com/photo/2015/10/15/08/10/flood-989084_960_720.jpg'
]
hi = 0
5.times do
  Fund.create(
    organization_id: orgIds.sample,
    title: 'Hurricane ' + Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    goal: goals.sample,
    picture: hurricanes[hi]
  )
  hi += 1
end

fires = [
  'https://cdn.pixabay.com/photo/2015/10/23/03/00/fire-fighters-1002282_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/11/15/13/08/wildfire-1826204_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/04/22/07/21/fire-1345264_1280.jpg'
]
fi = 0
3.times do
  Fund.create(
    organization_id: orgIds.sample,
    title: 'Forest fire ' + Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    goal: goals.sample,
    picture: fires[fi]
  )
  fi += 1
end


# Donations (donor, fund, amount)
arr = [1,2,3,4,5,6,7,8,9,10]

1000.times do
  Donation.create(
    donor_id: arr.sample,
    fund_id: arr.sample,
    amount: Faker::Number.decimal(2)
  )
end
