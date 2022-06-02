#--------------<><><> erase and rewind <><><>--------------
User.destroy_all
Question.destroy_all
CharacterProfile.destroy_all
Characteristic.destroy_all
Character.destroy_all

puts' '
print "Hello! "
puts "\u{1F44B}"
print "Let's load some seeds "
puts "\u{1F331}"

#--------------<><><> user - admin <><><>--------------
admin = [
  { email: "janedoe@guesswho.com", password: "Have fun!"}, #id=1
]

puts' '
print "\u{1F6A7}"
print ' ~~~ Creating 1 user admin '
puts "\u{1F510}"
User.create!(admin)
puts '... ... ...'
print "\u{2728} "
puts "Created #{User.count} user"

#--------------<><><> characters <><><>--------------

characters = [
  { character_name: "Zelda", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489459/zelda_iur4ev.png"}, #id=1
  { character_name: "Link", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/link_yg5jbq.png"}, #id=2
  { character_name: "Tingle", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489459/tingle_izu0ms.png"}, #id=3
  { character_name: "Ganondorf", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/ganondorf_rpz5pb.png"}, #id=4

  { character_name: "Epona", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489457/epona_qz8ns7.png"}, #id=5
  { character_name: "Slippy", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/slippy_grhuzm.png"}, #id=6
  { character_name: "Peppy", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/peppy_hnl56g.png"}, #id=7
  { character_name: "Fox", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489457/fox_kfdtja.png"}, #id=8

  { character_name: "Falco", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489457/falco_p5ngfp.png"}, #id=9
  { character_name: "Yoshi", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489459/yoshi_f3j5bh.png"}, #id=10
  { character_name: "Wario", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489459/wario_ogywva.png"}, #id=11
  { character_name: "Toad", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489459/toad_qjl0cd.png"}, #id=12

  { character_name: "Shyguy", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/shyguy_ka9tia.png"}, #id=13
  { character_name: "Peach Princess", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/peach_cx2jjp.png"}, #id=14
  { character_name: "Mario", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/mario_deyzzj.png"}, #id=15
  { character_name: "Luigi", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489459/luigi_yeqqjq.png"}, #id=16

  { character_name: "Koopa", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/koopa_vnseba.png"}, #id=17
  { character_name: "Kamek", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489457/kamek_hyi2ze.png"}, #id=18
  { character_name: "Goomba", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489458/goomba_g0grtr.png"}, #id=19
  { character_name: "Bowser", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489457/bowser_fm8rwx.png"}, #id=20

  { character_name: "Donkey Kong", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489457/donkeykong_vucqtx.png"}, #id=21
  { character_name: "Cappy", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489457/cappy_evicgf.jpg"}, #id=22
  { character_name: "Tethu", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489459/tethu_vgtqdi.jpg"}, #id=23
  { character_name: "Esna", image_url: "https://res.cloudinary.com/dmtccsbsm/image/upload/v1641489457/esna_wnpr24.jpg"} #id=24
]

puts' '
print "\u{1F6A7}"
print ' ~~~ Creating 24 characters '
puts "\u{1F9D9}"
Character.create!(characters)
puts '... ... ...'
print "\u{2728} "
puts "Created #{Character.count} characters"


#--------------<><><> characteristics <><><>--------------

characteristics = [
  { characteristic_name: 'Female'}, #id= 1
  { characteristic_name: 'Male'}, #id = 2
  { characteristic_name: 'Animal'}, #id = 3
  { characteristic_name: 'Human'}, #id = 4

  { characteristic_name: 'Brown Eyes'}, #id = 5
  { characteristic_name: 'Black Eyes'}, #id = 6
  { characteristic_name: 'Blue Eyes'}, #id = 7
  { characteristic_name: 'Green Eyes'}, #id = 8

  { characteristic_name: 'Red Eyes'}, #id = 9
  { characteristic_name: 'Hair'}, #id = 10
  { characteristic_name: 'No Hair'}, #id = 11
  { characteristic_name: 'Brown Hair'}, #id = 12

  { characteristic_name: 'Blue Hair'}, #id = 13
  { characteristic_name: 'Red Hair'}, #id = 14
  { characteristic_name: 'Blonde Hair'}, #id = 15
  { characteristic_name: 'Grey Hair'}, #id = 16

  { characteristic_name: 'Fur'}, #id = 17
  { characteristic_name: 'No Fur'}, #id = 18
  { characteristic_name: 'Blue Fur'}, #id = 19
  { characteristic_name: 'Brown Fur'}, #id = 20

  { characteristic_name: 'Hazel Fur'}, #id = 21
  { characteristic_name: 'Green Skin'}, #id = 22
  { characteristic_name: 'White Skin'}, #id = 23
  { characteristic_name: 'Yellow Skin'}, #id = 24

  { characteristic_name: 'Brown Skin'}, #id = 25
  { characteristic_name: 'Wears glasses'}, #id = 26
  { characteristic_name: 'No glasses'}, #id = 27
  { characteristic_name: 'Wears Hat'}, #id = 28

  { characteristic_name: 'No Hat'}, #id = 29
  { characteristic_name: 'Beard'}, #id = 30
  { characteristic_name: 'No Beard'}, #id = 31
  { characteristic_name: 'Long Eyebrows'}, #id = 32

  { characteristic_name: 'Small Eyebrows'}, #id = 33
  { characteristic_name: 'No Eyebrows'}, #id = 34
  { characteristic_name: 'Mustache'}, #id = 35
  { characteristic_name: 'No Mustache'}, #id = 36

  { characteristic_name: 'Shell'}, #id = 37
  { characteristic_name: 'No Shell'}, #id = 38
  { characteristic_name: 'Big Ears'}, #id = 39
  { characteristic_name: 'Small Ears'}, #id = 40

  { characteristic_name: 'No Ears'}, #id = 41
  { characteristic_name: 'Beak'}, #id = 42
  { characteristic_name: 'Long Nose'}, #id = 43
  { characteristic_name: 'Big Nose'}, #id = 44

  { characteristic_name: 'Small Nose'}, #id = 45
  { characteristic_name: 'No Nose nor Beak'}, #id = 46
  { characteristic_name: 'Teeth'}, #id = 47
  { characteristic_name: 'No Teeth'}, #id = 48

  { characteristic_name: 'No Skin'} #id = 49
]

puts' '
print "\u{1F6A7}"
print ' ~~~ Creating 49 characteristics '
puts "\u{1F441}"
Characteristic.create!(characteristics)
puts '... ... ...'
print "\u{2728} "
puts "Created #{Characteristic.count} characteristics"


#--------------<><><> character_profiles <><><>--------------

character_profiles = [
    {character_id: 1, characteristic_id: [1, 4, 6, 10, 15, 18, 23, 27, 29, 31, 33, 36, 38, 39, 45, 48]}, #Zelda: female, human, black eyes, hair, blonde hair, no fur, white skin, no glasses, no hat, no beard, small eyebrows, no mustache, no shell, big ears, small nose, no teeth
    {character_id: 2, characteristic_id: [2, 4, 6, 10, 15, 18, 23, 27, 28, 31, 32, 36, 38, 39, 45, 48]}, #Link: male, human, black eyes, hair, blonde hair, no fur, white skin, no glasses, wears hat, no beard, long eyebrows, no mustache, no shell, big ears, small nose, no teeth
    {character_id: 3, characteristic_id: [2, 4, 6, 11, 18, 23, 27, 28, 30, 32, 36, 38, 39, 44, 47]}, #Tingle: male, human, black eyes, no hair, no fur, white skin, no glasses, wears hat, beard, long eyebrows, no mustache, no shell, big ears, big nose, big teeth
    {character_id: 4, characteristic_id: [2, 4, 9, 10, 14, 18, 25, 27, 28, 30, 32, 36, 38, 39, 44, 47]}, #Ganondorf: male, human, red eyes, hair, red hair, no fur, brown skin, no glasses, wears hat, beard, long eyebrows, no mustache, no shell, big ears, big nose, big teeth

    {character_id: 5, characteristic_id: [1, 3, 7, 10, 16, 20, 27, 29, 31, 34, 36, 38, 39, 44, 48]}, #Epona: female, animal, blue eyes, hair, grey hair, brown fur, no glasses, no hat, no beard, no eyebrows, no mustache, no shell, big ears, big nose, no teeth
    {character_id: 6, characteristic_id: [2, 3, 7, 11, 18, 22, 27, 28, 31, 34, 36, 38, 41, 45, 48]}, #Slippy: male, animal, blue eyes, no hair, no fur, green skin, no glasses, wears hat, no beard, no eyebrows, no mustache, no shell, no ears, small nose, no teeth
    {character_id: 7, characteristic_id: [2, 3, 9, 11, 17, 20, 27, 29, 31, 34, 36, 38, 39, 45, 47]}, #Peppy: male, animal, red eyes, no hair, fur, brown fur, no glasses, no hat, no beard, no eyebrows, no mustache, no shell, big ears, small nose, big teeth
    {character_id: 8, characteristic_id: [2, 3, 8, 11, 17, 21, 27, 29, 31, 34, 35, 38, 39, 45, 48]}, #Fox: male, animal, green eyes, no hair, fur, hazel fur, no glasses, no hat, no beard, no eyebrows, mustache, no shell, big ears, small nose, no teeth

    {character_id: 9, characteristic_id: [2, 3, 8, 11, 17, 19, 27, 29, 31, 34, 36, 38, 41, 42, 48]}, #Falco: male, animal, green eyes, no hair, fur, blue fur, no glasses, no hat, no beard, no eyebrows, no mustache, no shell, no ears, beak, no teeth
    {character_id: 10, characteristic_id: [2, 3, 7, 11, 18, 22, 27, 29, 31, 34, 36, 37, 41, 44, 48]}, #Yoshi: male, animal, blue eyes, no hair, no fur, green skin, no glasses, no hat, no beard, no eyebrows, no mustache, shell, no ears, big nose, no teeth
    {character_id: 11, characteristic_id: [2, 4, 6, 10, 12, 18, 23, 27, 28, 31, 32, 35, 38, 39, 44, 47]}, #Wario: male, human, black eyes, hair, brown hair, no fur, white skin, no glasses, wears hat, no beard, long eyebrows, mustache, no shell, big ears, big nose, big teeth
    {character_id: 12, characteristic_id: [2, 4, 6, 11, 18, 23, 27, 28, 31, 34, 36, 38, 41, 46, 48]}, #Toad: male, human, black eyes, no hair, no fur, white skin, no glasses, hat, no beard, no eyebrows, no mustache, no shell, no ears, no nose, no teeth

    {character_id: 13, characteristic_id: [2, 4, 6, 11, 18, 49, 27, 28, 31, 34, 36, 38, 41, 46, 48]}, #Shyguy: male, human, black eyes, no hair, no fur, no skin, no glasses, hat, no beard, no eyebrows, no mustache, no shell, no ears, no nose, no teeth
    {character_id: 14, characteristic_id: [1, 4, 7, 10, 15, 18, 23, 27, 29, 31, 33, 36, 38, 40, 45, 48]}, #Peach Princess: female, human, blue eyes, hair, blonde hair, no fur, white skin, no glasses, no hat, no beard, small eyebrows, no mustache, no shell, small ears, small nose, no teeth
    {character_id: 15, characteristic_id: [2, 4, 7, 10, 12, 18, 23, 27, 28, 31, 32, 35, 38, 39, 44, 48]}, #Mario: male, human, blue eyes, hair, brown hair, no fur, white skin, no glasses, wears hat, no beard, long eyebrows, mustache, no shell, big ears, big nose, no teeth
    {character_id: 16, characteristic_id: [2, 4, 7, 10, 12, 18, 23, 27, 28, 31, 32, 35, 38, 39, 44, 48]}, #Luigi: male, human, blue eyes, hair, brown hair, no fur, white skin, no glasses, wears hat, no beard, long eyebrows, mustache, no shell, big ears, big nose, no teeth

    {character_id: 17, characteristic_id: [2, 3, 6, 11, 18, 24, 27, 29, 31, 34, 36, 37, 41, 42, 48]}, #Koopa: male, animal, black eyes, no hair, no fur, yellow skin, no glasses, no hat, no beard, no eyebrows, no mustache, shell, no ears, beak, no teeth
    {character_id: 18, characteristic_id: [2, 3, 6, 11, 18, 24, 26, 28, 31, 34, 36, 38, 41, 42, 47]}, #Kamek: male, animal, black eyes, no hair, no fur, yellow skin, wears glasses, wears hat, no beard, no eyebrows, no mustache, no shell, no ears, beak, big teeth
    {character_id: 19, characteristic_id: [2, 3, 6, 11, 18, 25, 27, 29, 31, 32, 36, 38, 41, 46, 47]}, #Goomba: male, animal, black eyes, no hair, no fur, brown skin, no glasses, no hat, no beard, long eyebrows, no mustache, no shell, no ears, no nose, big teeth
    {character_id: 20, characteristic_id: [2, 3, 9, 10, 14, 18, 24, 27, 29, 31, 32, 36, 37, 41, 44, 48]}, #Bowser: male, animal, red eyes, hair, red hair, no fur, yellow skin, no glasses, no hat, no beard, long eyebrows, no mustache, shell, no ears, big nose, big teeth

    {character_id: 21, characteristic_id: [2, 3, 5, 11, 17, 21, 20, 27, 29, 31, 34, 36, 38, 39, 45, 48]}, #Donkey Kong: male, animal, brown eyes, no hair, fur, hazel fur, no glasses, no hat, no beard, no eyebrows, no mustache, no shell, big ears, small nose, no teeth
    {character_id: 22, characteristic_id: [2, 3, 9, 11, 18, 23, 27, 28, 31, 34, 36, 38, 41, 46, 48]}, #Cappy: male, animal, red eyes, no hair, no fur, white skin, no glasses, hat, no beard, no eyebrows, no mustache, no shell, no ears, no nose, no teeth
    {character_id: 23, characteristic_id: [2, 4, 7, 10, 15, 18, 25, 27, 28, 31, 34, 36, 38, 41, 46, 48]}, #Tethu: male, human, blue eyes, hair, blonde hair, no fur, brown skin, no glasses, wears hat, no beard, no eyebrows, no mustache, no shell, no ears, no nose, no teeth
    {character_id: 24, characteristic_id: [1, 4, 7, 10, 13, 18, 23, 27, 29, 31, 32, 36, 38, 39, 46, 48]} #Esna: female, human, blue eyes, hair, blue hair, no fur, white skin, no glasses, no hat, no beard, long eyebrows, no mustache, no shell, big ears, no nose, no teeth
]

puts' '
print "\u{1F6A7}"
print ' ~~~ Creating 347 character profiles '
puts "\u{1F4AC}"
character_profiles.each do |character_profile|
  id = character_profile[:character_id]
  character_profile[:characteristic_id].each do |characteristic|
    CharacterProfile.create!(character_id: id, characteristic_id: characteristic)
  end
end
puts '... ... ...'
print "\u{2728} "
puts "Created #{CharacterProfile.count} character profiles"


#--------------<><><> questions <><><>--------------

questions = [
  { title: "Is the character female?", characteristic_id: 1}, #id=1
  { title: "Is the character male?", characteristic_id: 2}, #id=2
  { title: "Is the character an animal?", characteristic_id: 3}, #id=3
  { title: "Is the character human?", characteristic_id: 4}, #id=4

  { title: "Does the character have brown eyes?", characteristic_id: 5}, #id=5
  { title: "Does the character have black eyes?", characteristic_id: 6}, #id=6
  { title: "Does the character have blue eyes?", characteristic_id: 7}, #id=7
  { title: "Does the character have green eyes?", characteristic_id: 8}, #id=8

  { title: "Does the character have red eyes?", characteristic_id: 9}, #id=9
  { title: "Does the character have hair?", characteristic_id: 10}, #id=10
  { title: "Does the character have no hair?", characteristic_id: 11}, #id=11
  { title: "Does the character have brown hair?", characteristic_id: 12}, #id=12

  { title: "Does the character have blue hair?", characteristic_id: 13}, #id=13
  { title: "Does the character have red hair?", characteristic_id: 14}, #id=14
  { title: "Does the character have blonde hair?", characteristic_id: 15}, #id=15
  { title: "Does the character have grey hair?", characteristic_id: 16}, #id=16

  { title: "Does the character have fur?", characteristic_id: 17}, #id=17
  { title: "Does the character have no fur?", characteristic_id: 18}, #id=18
  { title: "Does the character have blue fur?", characteristic_id: 19}, #id=19
  { title: "Does the character have brown fur?", characteristic_id: 20}, #id=20

  { title: "Does the character have hazel fur?", characteristic_id: 21}, #id=21
  { title: "Does the character have green fur?", characteristic_id: 22}, #id=22
  { title: "Does the character have white skin?", characteristic_id: 23}, #id=23
  { title: "Does the character have yellow skin?", characteristic_id: 24}, #id=24

  { title: "Does the character have brown skin?", characteristic_id: 25}, #id=25
  { title: "Does the character wear glasses?", characteristic_id: 26}, #id=26
  { title: "Does the character wear no glasses?", characteristic_id: 27}, #id=27
  { title: "Does the character wear a hat?", characteristic_id: 28}, #id=28

  { title: "Does the character wear no hat?", characteristic_id: 29}, #id=29
  { title: "Does the character have a beard?", characteristic_id: 30}, #id=30
  { title: "Does the character have no beard?", characteristic_id: 31}, #id=31
  { title: "Does the character have long eyebrows?", characteristic_id: 32}, #id=32

  { title: "Does the character have small eyebrows?", characteristic_id: 33}, #id=33
  { title: "Does the character have no eyebrows?", characteristic_id: 34}, #id=34
  { title: "Does the character have a mustache?", characteristic_id: 35}, #id=35
  { title: "Does the character have no mustache?", characteristic_id: 36}, #id=36

  { title: "Does the character have a shell?", characteristic_id: 37}, #id=37
  { title: "Does the character have no shell?", characteristic_id: 38}, #id=38
  { title: "Does the character have big ears?", characteristic_id: 39}, #id=39
  { title: "Does the character have small ears?", characteristic_id: 40}, #id=40

  { title: "Does the character have no ears?", characteristic_id: 41}, #id=41
  { title: "Does the character have a beak?", characteristic_id: 42}, #id=42
  { title: "Does the character have a long nose?", characteristic_id: 43}, #id=43
  { title: "Does the character have a big nose?", characteristic_id: 44}, #id=44

  { title: "Does the character have a small nose?", characteristic_id: 45}, #id=45
  { title: "Does the character have no nose nor beak?", characteristic_id: 46}, #id=46
  { title: "Does the character have teeth?", characteristic_id: 47}, #id=47
  { title: "Does the character have no teeth?", characteristic_id: 48}, #id=48

  { title: "Does the character have no skin?", characteristic_id: 49} #id=49
  #{ title: "Is the character a plumber?", characteristic_id: },
  #{ title: "Is the character a vilant?", characteristic_id: },
  #{ title: "Is the character a spaceman?", characteristic_id: },
  #{ title: "Is the character a princess?", characteristic_id: }
]

puts' '
print "\u{1F6A7}"
print ' ~~~ Creating 49 questions '
puts "\u{2753}"
Question.create!(questions)
puts '... ... ...'
print "\u{2728} "
puts "Created #{Question.count} questions"


#--------------<><><> end <><><>--------------

puts' '
print "\u{1F389} "
puts 'Seeds completed!'
puts' '
