puts "Cleaning the db..."
Charge.destroy_all
Crime.destroy_all
Criminal.destroy_all
Prison.destroy_all

puts "Creating a prison..."
alcatraz = Prison.create!(
  name: 'Alcatraz',
  banner_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Alcatraz_Island_photo_Don_Ramey_Logan.jpg/1200px-Alcatraz_Island_photo_Don_Ramey_Logan.jpg'
)

Criminal.create!(
  name: 'Yann',
  image_url: 'https://avatars.githubusercontent.com/u/26819547?v=4',
  prison: alcatraz
)

students = {
  'Sarah' => 'https://avatars.githubusercontent.com/u/134185886?v=4',
  'Dan' => 'https://avatars.githubusercontent.com/u/91101275?v=4',
  'Noah' => 'https://avatars.githubusercontent.com/u/135783511?v=4',
  'Justin' => 'https://avatars.githubusercontent.com/u/125636129?v=4',
  'Yoshio' => 'https://avatars.githubusercontent.com/u/155868378?v=4',
  'Felix' => 'https://avatars.githubusercontent.com/u/150349821?v=4',
  'Koji' => 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1705391870/uqft3rjdivg7y56bxe05.jpg',
  'Leo' => 'https://avatars.githubusercontent.com/u/106044460?v=4',
  'Hiroshi' => 'https://avatars.githubusercontent.com/u/126639333?v=4',
  'Nikita' => 'https://avatars.githubusercontent.com/u/155894260?v=4',
  'Hellen' => 'https://avatars.githubusercontent.com/u/105838459?v=4',
  'JD' => 'https://avatars.githubusercontent.com/u/138870996?v=4',
  'Go' => 'https://avatars.githubusercontent.com/u/92448616?v=4',
  'Ruby' => 'https://avatars.githubusercontent.com/u/155926927?v=4',
  'Glenn' => 'https://avatars.githubusercontent.com/u/122960936?v=4',
  'Alex' => 'https://avatars.githubusercontent.com/u/122443545?v=4',
  'Nick' => 'https://avatars.githubusercontent.com/u/155470148?v=4',
  'Nina' => 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1704756676/mvpmpm89yjxrjwfrywet.jpg'
}

students.each do |name, image_url|
  Criminal.create!(
    name: name,
    image_url: image_url,
    prison: alcatraz
  )
end

puts "Creating crimes..."
crimes = ['arson', 'cooking meth', 'ate last gyoza', 'cannnibalism', 'poor indentation', 'tiktoking' ]
crimes.each do |crime|
  Crime.create!(
    name: crime
  )
end
puts "... created #{Crime.count} crimes"
