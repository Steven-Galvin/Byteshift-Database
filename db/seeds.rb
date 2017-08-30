User.destroy_all
Beacon.destroy_all
Visit.destroy_all

20.times do |i|
  beacon = Beacon.create!(
            name: Faker::GameOfThrones.house + " #{i}",
            identification_number: rand(10..99)
            )
  p "#{beacon.name} ID: #{beacon.identification_number}"
end

p "Made #{Beacon.all.length} beacons"

20.times do |i|
  firstName = Faker::Name.first_name
  lastName = Faker::Name.last_name
  user = User.create!(
          first_name: firstName,
          last_name: lastName,
          status: ["Preferred", "Standard"].sample,
          presence: ["Present", "Away"].sample,
          email: "#{firstName.downcase}.#{lastName.downcase}#{i}@gmail.com",
          password: SecureRandom.hex
          )
  p "Created #{user.first_name} #{user.last_name} with a status of #{user.status} and an email of #{user.email}. #{user.first_name} is currently #{user.presence}. Password is #{user.password}"
end

p "Made #{User.all.length} users"

50.times do |i|
  time = Faker::Time.between(DateTime.now - 10, DateTime.now)
  visit = Visit.create!(
          enter_time: time,
          exit_time: time + rand(1..60)*60,
          day: time.to_date,
          user: User.order("RANDOM()").first,
          beacon: Beacon.order("RANDOM()").first
          )
    p "#{visit.user.first_name} #{visit.user.last_name} visited #{visit.beacon.name} on #{visit.day.strftime("%B %-d, %Y")} between #{visit.enter_time.strftime("%I:%M%p")} and #{visit.exit_time.strftime("%I:%M%p")}."
end

p "Made #{Visit.all.length} visits"
