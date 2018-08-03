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
  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/2015_Nepal_depremi_%284%29.jpg/1599px-2015_Nepal_depremi_%284%29.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/1/16/2010_Haiti_earthquake_relief_efforts_by_the_US_Army.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Direct_Relief_Nepal_Earthquake_Relief_Airlift.JPG/1599px-Direct_Relief_Nepal_Earthquake_Relief_Airlift.JPG',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/2016_Amatrice_earthquake.jpg/800px-2016_Amatrice_earthquake.jpg'
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
  'https://media.defense.gov/2017/Aug/29/2001800239/-1/-1/0/170829-A-YG824-0001.JPG',
  'https://media.defense.gov/2017/Sep/05/2001803250/825/780/0/170905-A-YG824-001.JPG',
  'https://upload.wikimedia.org/wikipedia/commons/5/55/Katrina-14501.jpg',
  'https://media.defense.gov/2016/Nov/03/2001663380/-1/-1/0/161008-Z-ZO737-149.JPG',
  'https://upload.wikimedia.org/wikipedia/commons/e/ea/US_Navy_070907-N-1810F-074_Amphibious_assault_ship_USS_Wasp_crew_members_participating_in_Hurricane_Felix_disaster_relief_operations_prepare_water_for_delivery_to_local_residents.jpg'
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
  'https://c1.staticflickr.com/5/4103/4971832860_8c25345e37_b.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/c/ca/FEMA_-_33364_-_A_helicopter_drops_water_on_the_wildfire_in_California.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Air_attack_on_southern_Oregon_wildfire_--_2015_%2820297448766%29.jpg/1599px-Air_attack_on_southern_Oregon_wildfire_--_2015_%2820297448766%29.jpg',
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
