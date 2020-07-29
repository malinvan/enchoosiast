# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Deleting careers..."
Career.destroy_all
puts "Deleting questions..."
Question.destroy_all
puts "Deleting traits..."
Trait.destroy_all
puts "Deleting trait questions..."
TraitQuestion.destroy_all
puts "Creating new careers..."




# DEMO CAREERS

project_manager = Career.create(
  title: 'pm',
  summary:'very funny clown',
  detailed_description: '??',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'???'
)

entreprneur = Career.create(
  title: 'clown',
  summary:'very funny clown',
  detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
  social_interaction: 'very high',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.'
)

creative_director= Career.create(
  title: 'clown',
  summary:'very funny clown',
  detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
  social_interaction: 'very high',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.'
)

sales_manager = Career.create(
  title: 'clown',
  summary:'very funny clown',
  detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
  social_interaction: 'very high',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.'
)

innovation_consultant = Career.create(
  title: 'clown',
  summary:'very funny clown',
  detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
  social_interaction: 'very high',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.'
)

paramedic = Career.create(
  title: 'clown',
  summary:'very funny clown',
  detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
  social_interaction: 'very high',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.'
)

pilot = Career.create(
  title: 'clown',
  summary:'very funny clown',
  detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
  social_interaction: 'very high',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.'
)

real_estate_broker = Career.create(
  title: 'clown',
  summary:'very funny clown',
  detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
  social_interaction: 'very high',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.'
)

photographer = Career.create(
  title: 'clown',
  summary:'very funny clown',
  detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
  social_interaction: 'very high',
  salary: 23000 ,
  entry_barriers: 'easy',
  remote_flexibility: 'none',
  international_flexibility: 'high',
  working_hour_flexibility:'very high',
  next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.'
)



# OTHER CAREERS
clown = Career.create(title: 'clown', summary:'very funny clown' , detailed_description: 'A clown is a public entertainer who dresses in outlandish
                     attire and attempts to please audiences with comical and chaotic behaviour.
                     Clowns are typically hired to entertain children at events such as birthday parties and public gatherings.
                     Most, though, choose to freelance, travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.',
                     social_interaction: 'very high', salary: 23000 ,  entry_barriers: 'easy', remote_flexibility: 'none',
                     international_flexibility: 'high', working_hour_flexibility:'very high',
                     next_steps:'A clown is a public entertainer who dresses in outlandish attire and attempts to please
                     audiences with comical and chaotic behaviour. Clowns are typically hired to entertain children at
                     events such as birthday parties and public gatherings. Most, though, choose to freelance,
                     travelling wherever the booking may take them. They will tell jokes, stories,
                     perform slapstick routines and involve the audiences in an attempt to make them laugh and enjoy the performance.')

housekeeper = Career.create(title: 'housekeeping', summary:'clean is your passion' , detailed_description: 'make a living of cleaning',
                            social_interaction: 'easy', salary: 21000 ,  entry_barriers: 'medium', remote_flexibility: 'none',
                            international_flexibility: 'very high', working_hour_flexibility:'low', next_steps:'1.  , 2. , 3. ')

chef = Career.create(title: 'chef', summary:'Love cooking' , detailed_description: 'make a living of cooking',
                    social_interaction: 'high', salary: 27000 ,  entry_barriers: 'medium', remote_flexibility: 'none',
                    international_flexibility: 'high', working_hour_flexibility:'low',
                    next_steps:'1. Take cooking classes , 2. Go to culinary school, 3. Buy your knives')

teacher = Career.create(title: 'teacher', summary:'Transmit knowledge' ,
                       detailed_description: 'make a living of leading the new generations to a better future',
                       social_interaction: 'very high', salary: 30000 ,  entry_barriers: 'difficult',
                       remote_flexibility: 'medium', international_flexibility: 'medium',
                       working_hour_flexibility:'high',
                       next_steps:'1. Read books about the topic , 2. Go to school, 3. Be patient')

astronaut = Career.create(title: 'astronaut', summary:'see the stars' ,
                         detailed_description: 'you will be on board of a taking samples of Mars surface ',
                         social_interaction: 'high', salary: 60000 ,  entry_barriers: 'really difficult',
                         remote_flexibility: 'none', international_flexibility: 'very high', working_hour_flexibility:'low',
                         next_steps:'1. Learn physics , 2. Go to NASA, 3. Train hard')


singer = Career.create(title: 'singer', summary:'show your voice to the world' , detailed_description: 'singing',
                      social_interaction: 'very high', salary: 26000 ,  entry_barriers: 'easy', remote_flexibility: 'none',
                      international_flexibility: 'high', working_hour_flexibility:'very high',
                      next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

actor = Career.create(title: 'actor', summary:'better than clooney?' , detailed_description: 'learn the script and be natural',
                     social_interaction: 'very high', salary: 50000 ,  entry_barriers: 'easy', remote_flexibility: 'none',
                     international_flexibility: 'high', working_hour_flexibility:'very high',
                     next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

spy = Career.create(title: 'spy', summary:'hitman' , detailed_description: 'XXXclassified infoXXX',
                   social_interaction: 'very high', salary: 007 ,  entry_barriers: 'almost impossible',
                   remote_flexibility: 'none', international_flexibility: 'high', working_hour_flexibility:'very high',
                   next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

consultant = Career.create(title: 'consultant', summary:'make you richer' , detailed_description: 'help others to handle their investing',
                          social_interaction: 'very high', salary: 56000 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                          international_flexibility: 'high', working_hour_flexibility:'very high',
                          next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

banker= Career.create(title: 'banker', summary:'money is all for you' , detailed_description: 'make a living in a groing sector',
                      social_interaction: 'high', salary: 45000 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                      international_flexibility: 'high', working_hour_flexibility:'very high',
                      next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

doctor= Career.create(title: 'doctor', summary:'help others and cure cancer' , detailed_description: 'basic knowledge of medicine',
                      social_interaction: 'very high', salary: 52000 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                      international_flexibility: 'high', working_hour_flexibility:'very high',
                      next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

lawyer= Career.create(title: 'lawyer', summary:'Perform legal work for individuals or businesses.',
                      detailed_description: 'As advocates, they represent one of the parties in a criminal or civil trial by presenting evidence and arguing in support of their client.
                                            As advisors, lawyers counsel their clients about their legal rights and obligations and suggest courses of action in business and personal matters.
                                            All attorneys research the intent of laws and judicial decisions and apply the laws to the specific circumstances that their clients face.',
                                            social_interaction: 'very high', salary: 53000 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                                             international_flexibility: 'high', working_hour_flexibility:'very high',
                                             next_steps:'1. Study law 2. Get an internship 3. Study even more')



puts "Creating questions..."

questions = []
questions << Question.create(question: 'I often spend time exploring unrealistic yet intriguing ideas')
questions << Question.create(question: 'I prefer variety to routine')
questions << Question.create(question: 'When I face a problem, I prefer talking to others about it and involve them in my problem solving process.')
questions << Question.create(question: 'When working in teams, I usually take the initiative and the other team members follow my lead.')
questions << Question.create(question: 'When making a decision, I rather analise the situation than trust my gut feeling.')

puts "Creating traits..."

traits = []
traits << Trait.create(title: "creative")
traits << Trait.create(title: "practical")

traits << Trait.create(title: "flexible")
traits << Trait.create(title: "inflexible")

traits << Trait.create(title: "social")
traits << Trait.create(title: "insocial")

traits << Trait.create(title: "leadering")
traits << Trait.create(title: "submissive")

traits << Trait.create(title: "structured")
traits << Trait.create(title: "impulsive")

puts "Connecting traits to questions..."

TraitQuestion.create(question: questions[0], trait: traits[0], answer_value: true)
TraitQuestion.create(question: questions[0], trait: traits[1], answer_value: false)

TraitQuestion.create(question: questions[1], trait: traits[2], answer_value: true)
TraitQuestion.create(question: questions[1], trait: traits[3], answer_value: false)

TraitQuestion.create(question: questions[2], trait: traits[4], answer_value: true)
TraitQuestion.create(question: questions[2], trait: traits[5], answer_value: false)

TraitQuestion.create(question: questions[3], trait: traits[6], answer_value: true)
TraitQuestion.create(question: questions[3], trait: traits[7], answer_value: false)

TraitQuestion.create(question: questions[4], trait: traits[8], answer_value: true)
TraitQuestion.create(question: questions[4], trait: traits[9], answer_value: false)

puts "Connecting traits to careers..."

# PROJECT MANAGER
CareerTrait.create(career: project_manager, trait: traits[0])
CareerTrait.create(career: project_manager, trait: traits[3])
CareerTrait.create(career: project_manager, trait: traits[4])
CareerTrait.create(career: project_manager, trait: traits[6])
CareerTrait.create(career: project_manager, trait: traits[8])

# ENTREPRENEUR
CareerTrait.create(career: entreprneur, trait: traits[0])
CareerTrait.create(career: entreprneur, trait: traits[3])
CareerTrait.create(career: entreprneur, trait: traits[4])
CareerTrait.create(career: entreprneur, trait: traits[6])
CareerTrait.create(career: entreprneur, trait: traits[8])

# CREATIVE-DIRECTOR
CareerTrait.create(career: creative_director, trait: traits[0])
CareerTrait.create(career: creative_director, trait: traits[3])
CareerTrait.create(career: creative_director, trait: traits[4])
CareerTrait.create(career: creative_director, trait: traits[6])
CareerTrait.create(career: creative_director, trait: traits[8])

# SALES-MANAGER
CareerTrait.create(career: sales_manager, trait: traits[0])
CareerTrait.create(career: sales_manager, trait: traits[3])
CareerTrait.create(career: sales_manager, trait: traits[4])
CareerTrait.create(career: sales_manager, trait: traits[6])
CareerTrait.create(career: sales_manager, trait: traits[8])

# INNOVATION CONSULTANT
CareerTrait.create(career: innovation_consultant, trait: traits[0])
CareerTrait.create(career: innovation_consultant, trait: traits[3])
CareerTrait.create(career: innovation_consultant, trait: traits[4])
CareerTrait.create(career: innovation_consultant, trait: traits[6])
CareerTrait.create(career: innovation_consultant, trait: traits[8])

# PARAMEDIC
CareerTrait.create(career: paramedic, trait: traits[0])
CareerTrait.create(career: paramedic, trait: traits[3])
CareerTrait.create(career: paramedic, trait: traits[4])
CareerTrait.create(career: paramedic, trait: traits[6])
CareerTrait.create(career: paramedic, trait: traits[8])

# PILOT
CareerTrait.create(career: pilot, trait: traits[0])
CareerTrait.create(career: pilot, trait: traits[3])
CareerTrait.create(career: pilot, trait: traits[4])
CareerTrait.create(career: pilot, trait: traits[6])
CareerTrait.create(career: pilot, trait: traits[8])

# REAL ESTATE BROKER
CareerTrait.create(career: real_estate_broker, trait: traits[0])
CareerTrait.create(career: real_estate_broker, trait: traits[3])
CareerTrait.create(career: real_estate_broker, trait: traits[4])
CareerTrait.create(career: real_estate_broker, trait: traits[6])
CareerTrait.create(career: real_estate_broker, trait: traits[8])

# PHOTOGRAPHER
CareerTrait.create(career: photographer, trait: traits[0])
CareerTrait.create(career: photographer, trait: traits[3])
CareerTrait.create(career: photographer, trait: traits[4])
CareerTrait.create(career: photographer, trait: traits[6])
CareerTrait.create(career: photographer, trait: traits[8])

#OTHER CAREERS

# clown
CareerTrait.create(career: clown, trait: traits[0])
CareerTrait.create(career: clown, trait: traits[2])
CareerTrait.create(career: clown, trait: traits[4])
CareerTrait.create(career: clown, trait: traits[6])
CareerTrait.create(career: clown, trait: traits[9])

# housekeeper
CareerTrait.create(career: housekeeper, trait: traits[1])
CareerTrait.create(career: housekeeper, trait: traits[2])
CareerTrait.create(career: housekeeper, trait: traits[4])
CareerTrait.create(career: housekeeper, trait: traits[7])
CareerTrait.create(career: housekeeper, trait: traits[8])

# chef
CareerTrait.create(career: chef, trait: traits[0])
CareerTrait.create(career: chef, trait: traits[2])
CareerTrait.create(career: chef, trait: traits[4])
CareerTrait.create(career: chef, trait: traits[7])
CareerTrait.create(career: chef, trait: traits[8])

# teacher
CareerTrait.create(career: teacher, trait: traits[1])
CareerTrait.create(career: teacher, trait: traits[2])
CareerTrait.create(career: teacher, trait: traits[4])
CareerTrait.create(career: teacher, trait: traits[6])
CareerTrait.create(career: teacher, trait: traits[8])

# astronaut
CareerTrait.create(career: astronaut, trait: traits[1])
CareerTrait.create(career: astronaut, trait: traits[2])
CareerTrait.create(career: astronaut, trait: traits[5])
CareerTrait.create(career: astronaut, trait: traits[7])
CareerTrait.create(career: astronaut, trait: traits[8])

# singer
CareerTrait.create(career: singer, trait: traits[0])
CareerTrait.create(career: singer, trait: traits[3])
CareerTrait.create(career: singer, trait: traits[5])
CareerTrait.create(career: singer, trait: traits[7])
CareerTrait.create(career: singer, trait: traits[9])

# actor
CareerTrait.create(career: actor, trait: traits[0])
CareerTrait.create(career: actor, trait: traits[2])
CareerTrait.create(career: actor, trait: traits[4])
CareerTrait.create(career: actor, trait: traits[7])
CareerTrait.create(career: actor, trait: traits[9])

# spy
CareerTrait.create(career: spy, trait: traits[1])
CareerTrait.create(career: spy, trait: traits[2])
CareerTrait.create(career: spy, trait: traits[4])
CareerTrait.create(career: spy, trait: traits[7])
CareerTrait.create(career: spy, trait: traits[8])

# consultant
CareerTrait.create(career: consultant, trait: traits[0])
CareerTrait.create(career: consultant, trait: traits[2])
CareerTrait.create(career: consultant, trait: traits[4])
CareerTrait.create(career: consultant, trait: traits[6])
CareerTrait.create(career: consultant, trait: traits[8])

# banker
CareerTrait.create(career: banker, trait: traits[1])
CareerTrait.create(career: banker, trait: traits[3])
CareerTrait.create(career: banker, trait: traits[5])
CareerTrait.create(career: banker, trait: traits[7])
CareerTrait.create(career: banker, trait: traits[8])

# lawyer
CareerTrait.create(career: lawyer, trait: traits[1])
CareerTrait.create(career: lawyer, trait: traits[3])
CareerTrait.create(career: lawyer, trait: traits[5])
CareerTrait.create(career: lawyer, trait: traits[6])
CareerTrait.create(career: lawyer, trait: traits[8])



puts "Attaching images to careers"

file = URI.open('https://static8.depositphotos.com/1051435/932/i/450/depositphotos_9327706-stock-photo-happy-clown.jpg')
clown.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://homemaidbetter.com/wp-content/uploads/2019/07/shutterstock_395889778.jpg')
housekeeping.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://cdn.shortpixel.ai/client/q_glossy,ret_img/https://blackbarnrestaurant.com/wp-content/uploads/2017/01/BR_ChefsTable-01.jpg')
chef.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://img2.chinadaily.com.cn/images/201911/23/5dd88492a310cf3e97a7eee3.jpeg')
teacher.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://inteng-storage.s3.amazonaws.com/img/iea/9lwjAVnM6E/sizes/ocde_resize_md.jpg')
itdeveloper.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/5d8cc0875bafe8b4043c986a/astronauta-rock.jpg')
astronaut.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://www.pilots.nu/wp-content/uploads/piloter.jpg')
pilot.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://www.musictoyourhome.com/wp-content/uploads/2019/06/How-to-be-a-Versatile-Singer-notes-from-a-Pro.-720x376.png')
singer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://businessfirstfamily.com/wp-content/uploads/2016/09/how-to-become-an-actor-job-seekers-guide.jpg')
actor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://belsat.eu/wp-content/uploads/2018/03/david-baldaacci-espionage-spy-novels-spy-films.png')
spy.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://tuvanbanquyen.vn/datafiles/4686/upload/images/Services/Consultant-1-1024x683-1.jpg?t=1587613946')
consultant.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://www.ekn.se/globalassets/bilder/content/banker-konjunktur-artikel.jpg')
banker.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://mk0aanmclgjj7059fc.kinstacdn.com/wp-content/uploads/2017/05/Becoming-an-ND-1024x683.jpg')
doctor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://images05.military.com/sites/default/files/styles/full/public/2018-10/legal_court_justice_lawyer_18x12.png.jpg?itok=ebyoFLGm')
lawyer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
