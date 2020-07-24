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
puts "Creating new careers.."





clown= Career.create(title: 'clown', summary:'very funny clown' , detailed_description: 'make living a funny story',
                     social_interaction: 'very high', salary: 23 ,  entry_barriers: 'easy', remote_flexibility: 'none',
                     international_flexibility: 'high', working_hour_flexibility:'very high',
                     next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

housekeeping= Career.create(title: 'housekeeping', summary:'clean is your passion' , detailed_description: 'make a living of cleaning',
                            social_interaction: 'easy', salary: 21 ,  entry_barriers: 'medium', remote_flexibility: 'none',
                            international_flexibility: 'very high', working_hour_flexibility:'low', next_steps:'1.  , 2. , 3. ')

chef= Career.create(title: 'chef', summary:'Love cooking' , detailed_description: 'make a living of cooking',
                    social_interaction: 'high', salary: 27 ,  entry_barriers: 'medium', remote_flexibility: 'none',
                    international_flexibility: 'high', working_hour_flexibility:'low',
                    next_steps:'1. Take cooking classes , 2. Go to culinary school, 3. Buy your knives')

teacher= Career.create(title: 'teacher', summary:'Transmit knowledge' ,
                       detailed_description: 'make a living of leading the new generations to a better future',
                       social_interaction: 'very high', salary: 30 ,  entry_barriers: 'difficult',
                       remote_flexibility: 'medium', international_flexibility: 'medium',
                       working_hour_flexibility:'high',
                       next_steps:'1. Read books about the topic , 2. Go to school, 3. Be patient')

itdeveloper= Career.create(title: 'itdeveloper', summary:'be in the most demanding career of the future' ,
                           detailed_description: 'make a living in the best tech companies', social_interaction: 'high',
                           salary: 35 ,  entry_barriers: 'medium', remote_flexibility: 'high',
                           international_flexibility: 'high', working_hour_flexibility:'very high',
                           next_steps:'1. Learn coding , 2. Go to coding school, 3. Buy a good laptop')


astronaut= Career.create(title: 'astronaut', summary:'see the stars' ,
                         detailed_description: 'you will be on board of a taking samples of Mars surface ',
                         social_interaction: 'high', salary: 60 ,  entry_barriers: 'really difficult',
                         remote_flexibility: 'none', international_flexibility: 'very high', working_hour_flexibility:'low',
                         next_steps:'1. Learn physics , 2. Go to NASA, 3. Train hard')

pilot= Career.create(title: 'pilot', summary:'love speed' , detailed_description: 'be always ready for the greeen light',
                     social_interaction: 'very high', salary: 35 ,  entry_barriers: 'medium', remote_flexibility: 'none',
                     international_flexibility: 'high', working_hour_flexibility:'very high',
                     next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

singer= Career.create(title: 'singer', summary:'show your voice to the world' , detailed_description: 'singing',
                      social_interaction: 'very high', salary: 26 ,  entry_barriers: 'easy', remote_flexibility: 'none',
                      international_flexibility: 'high', working_hour_flexibility:'very high',
                      next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

actor= Career.create(title: 'actor', summary:'better than clooney?' , detailed_description: 'learn the script and be natural',
                     social_interaction: 'very high', salary: 50 ,  entry_barriers: 'easy', remote_flexibility: 'none',
                     international_flexibility: 'high', working_hour_flexibility:'very high',
                     next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

spy= Career.create(title: 'spy', summary:'hitman' , detailed_description: 'XXXclassified infoXXX',
                   social_interaction: 'very high', salary: 007 ,  entry_barriers: 'almost impossible',
                   remote_flexibility: 'none', international_flexibility: 'high', working_hour_flexibility:'very high',
                   next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

consultant= Career.create(title: 'consultant', summary:'make you richer' , detailed_description: 'help others to handle their investing',
                          social_interaction: 'very high', salary: 56 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                          international_flexibility: 'high', working_hour_flexibility:'very high',
                          next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

banker= Career.create(title: 'banker', summary:'money is all for you' , detailed_description: 'make a living in a groing sector',
                      social_interaction: 'high', salary: 45 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                      international_flexibility: 'high', working_hour_flexibility:'very high',
                      next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

doctor= Career.create(title: 'doctor', summary:'help others and cure cancer' , detailed_description: 'basic knowledge of medicine',
                      social_interaction: 'very high', salary: 52 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                      international_flexibility: 'high', working_hour_flexibility:'very high',
                      next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

lawyer= Career.create(title: 'lawyer', summary:'Perform legal work for individuals or businesses.',
                      detailed_description: 'As advocates, they represent one of the parties in a criminal or civil trial by presenting evidence and arguing in support of their client.
                                            As advisors, lawyers counsel their clients about their legal rights and obligations and suggest courses of action in business and personal matters.
                                            All attorneys research the intent of laws and judicial decisions and apply the laws to the specific circumstances that their clients face.',
                                            social_interaction: 'very high', salary: 52 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                                             international_flexibility: 'high', working_hour_flexibility:'very high',
                                             next_steps:'1. Study law 2. Get an internship 3. Study even more')



puts "Creating questions..."

Question.create(question: 'You often spend time exploring unrealstic yet intriguing ideas')
Question.create(question: 'It would be a challenge to to spend the whole weekend by yourself in your pyjamas without feeling bored')
Question.create(question: 'When you sleep, your dreams tend to be bizarre and fantastical')
Question.create(question: 'Your personal work style is closer to spontaneous bursts of energy than to organized and consistent efforts')
Question.create(question: 'I see myself as anxious and I easily get upset')
Question.create(question: 'I see myself as conventional and uncreative')
Question.create(question: 'I prefer variety to routine')
Question.create(question: 'I panic easily')

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
file = URI.open('https://media3.s-nbcnews.com/i/newscms/2014_29/573886/ss-140719-apollo-11-01_4396b2820b1792587ced6204c09099fb.jpg')
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
