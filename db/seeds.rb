# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts "Deleting trait questions..."
TraitQuestion.destroy_all
puts "Deleting career traits"
CareerTrait.destroy_all
puts "Deleting user traits"
UserTrait.destroy_all
puts "Deleting answers"
Answer.destroy_all
puts "Deleting careers..."
Career.destroy_all
puts "Deleting questions..."
Question.destroy_all
puts "Deleting traits..."
Trait.destroy_all

puts "Creating new careers..."




# DEMO CAREERS

photographer = Career.create(
  title: 'photographer',
  summary:'A professional photographer is likely to take photographs for a session and image purchase fee, by salary or through the display, resale or use of those photographs.',
  detailed_description: 'A professional photographer may be an employee, for example of a newspaper, or may contract to cover a particular planned event such as a wedding or graduation, or to illustrate an advertisement. Others, like fine art photographers, are freelancers, first making an image and then licensing or making printed copies of it for sale or display. Some workers, such as crime scene photographers, estate agents, journalists and scientists, make photographs as part of other work. Photographers who produce moving rather than still pictures are often called cinematographers, videographers or camera operators, depending on the commercial context.',
  social_interaction: 'low',
  salary: 25000 ,
  entry_barriers: 'low',
  remote_flexibility: 'low',
  international_flexibility: 'high',
  working_hour_flexibility:'medium',
  next_steps:''
)

product_manager = Career.create(
  title: 'product manager',
  summary:'A product manager is a professional role that is responsible for the development of products for an organization, known as the practice of product management. Product managers own the business strategy behind a product (both physical and digital products), specify its functional requirements, and generally manage the launch of features. They coordinate work done by many other functions (like software engineers, data scientists, and product designers) and are ultimately responsible for the business success of the product.',
  detailed_description: 'A product manager considers numerous factors such as intended customer or user of a product, the products offered by the competition, and how well the product fits with the company\'s business model. The scope of a product manager varies greatly, some may manage one or more product lines and others (especially in large companies) may manage small components or features of a product. In the financial services industry (banking, insurance etc.), product managers manage products (for example, credit card portfolios), their profit and loss, and also determine the business development strategy.',
  social_interaction: 'high',
  salary: 80000,
  entry_barriers: 'medium',
  remote_flexibility: 'high',
  international_flexibility: 'high',
  working_hour_flexibility:'medium',
  next_steps:''
)

entrepreneur = Career.create(
  title: 'entrepreneur',
  summary:'Entrepreneurship is the creation or extraction of value. With this definition, entrepreneurship is viewed as change, which may include other values than simply economic ones.',
  detailed_description: 'Some more narrow definitions has described entrepreneurship as the process of designing, launching and running a new business, which is often initially a small business, or as the "capacity and willingness to develop, organize and manage a business venture along with any of its risks to make a profit." The people who create these businesses are often referred to as entrepreneurs. While definitions of entrepreneurship typically focus on the launching and running of businesses, due to the high risks involved in launching a start-up, a significant proportion of start-up businesses have to close due to "lack of funding, bad business decisions, an economic crisis, lack of market demand, or a combination of all of these."',
  social_interaction: 'high',
  salary: 60000 ,
  entry_barriers: 'low',
  remote_flexibility: 'high',
  international_flexibility: 'high',
  working_hour_flexibility:'high',
  next_steps:''
)

creative_director = Career.create(
  title: 'creative director',
  summary:'Creative directors are the creative leads at advertising and marketing companies, working with designers, artists, copywriters, sales teams and marketers to create a vision for products sold. Creative directors plan advertising, oversee the creative process and give guidance to the creative people that work under them. They approve all work created by their staff and often work directly with clients to present that work.',
  detailed_description: 'A creative director is a vital role in all of the arts and entertainment industries, and can be seen as another element in any product development process. The creative director may also assume the roles of an art director, copywriter, or lead designer. The responsibilities of a creative director include leading the communication design, interactive design, and concept forward in any work assigned. For example, this responsibility is often seen in industries related to advertisement. The creative director is known to guide a team of employees with skills and experience related to graphic design, fine arts, motion graphics, and other creative industry fields. Some example works can include visual layout, brainstorming, and copywriting. To assume the role of a creative director, one must already have an existing set of skills and expertise in many areas. Often, these types of artists start up from the very beginning in fields that can relate to motion graphics, advertisement in television and book (or magazine) publishing.',
  social_interaction: 'high',
  salary: 80000,
  entry_barriers: 'medium',
  remote_flexibility: 'medium',
  international_flexibility: 'medium',
  working_hour_flexibility:'medium',
  next_steps:''
)


innovation_consultant = Career.create(
  title: 'innovation consultant',
  summary:'Innovation consulting is a combination of the management of innovation processes, and change management. It refers to product, business process, marketing and organizational innovation.',
  detailed_description: 'Innovation management is based on some of the ideas put forth by the Austrian economist Joseph Schumpeter, working during the 1930s, who identified innovation as a significant factor in economic growth. His book “Capitalism, Socialism and Democracy” first fully developed the concept of creative destruction. Innovation management helps an organization grasp an opportunity and use it to create and introduce new ideas, processes, or products industriously. Creativity is the basis of innovation management; the end goal is a change in services or business process. Innovative ideas are the result of two consecutive steps, imitation and invention. By utilizing innovation management tools, management can trigger and deploy the creative capabilities of the work force for the continuous development of an organization.[3] Common tools include brainstorming, prototyping, product lifecycle management, ideation, TRIZ, Phase–gate model, project management, product line planning and portfolio management. The process can be viewed as an evolutionary integration of organization, technology, and market, by iterating series of activities: search, select, implement and capture. Innovation processes can either be pushed or pulled through development. A pushed process is based on existing or newly invented technology that the organization has access to. The goal is to find profitable applications for the already-existing technology. A pulled process, by contrast, is based on finding areas where customers\' needs are not met and finding solutions to those needs. To succeed with either method, an understanding of both the market and the problems are needed. By creating multi-functional development teams, containing both workers or users plus marketers, both dimensions can be solved. Innovation, although not sufficient alone, is a necessary prerequisite for the continued survival and development of enterprises. The most direct way of business innovation is through technological innovation, disruptive innovation or social innovation. Management of innovation, however, plays a significant role in promoting technological and institutional innovation.',
  social_interaction: 'high',
  salary: 90000 ,
  entry_barriers: 'low',
  remote_flexibility: 'high',
  international_flexibility: 'high',
  working_hour_flexibility:'medium',
  next_steps:''
)

sales_manager = Career.create(
  title: 'sales manager',
  summary:'Sales management is a business discipline which is focused on the practical application of sales techniques and the management of a firm\'s sales operations. It is an important business function as net sales through the sale of products and services and resulting profit drive most commercial business. These are also typically the goals and performance indicators of sales management.Sales manager is the typical title of someone whose role is sales management. The role typically involves talent development.',
  detailed_description: 'Sales management is the process of developing a sales force, coordinating sales operations, and implementing sales techniques that allow a business to consistently hit, and even surpass, its sales targets. If your business brings in any revenue at all, a sales management strategy is an absolute must. When it comes to boosting sales performance for any size of operation, no matter the industry, the secret to success is always precise sales management processes.',
  social_interaction: 'high',
  salary: 70000 ,
  entry_barriers: 'medium',
  remote_flexibility: 'medium',
  international_flexibility: 'high',
  working_hour_flexibility:'low',
  next_steps:''
)

real_estate_broker = Career.create(
  title: 'real estate broker',
  summary:'A real estate broker, real estate agent or realtor is a person who represents sellers or buyers of real estate or real property. While a broker may work independently, an agent usually works under a licensed broker to represent clients. Brokers and agents are licensed by the state to negotiate sales agreements and manage the documentation required for closing real estate transactions. In North America, some brokers and agents are members of the National Association of Realtors (NAR), the largest trade association for the industry. NAR members are obligated by a code of ethics that go above and beyond state legal requirements to work in the best interest of the client. Buyers and sellers are generally advised to consult a licensed real estate professional for a written definition of an individual state\'s laws of agency, and many states require written disclosures to be signed by all parties outlining the duties and obligations.',
  detailed_description: 'A real estate broker typically receives a real estate commission for successfully completing a sale. Across the U.S. this commission can generally range between 5-6% of the property\'s sale price for a full service broker but this percentage varies by state and even region. This commission can be divided up with other participating real estate brokers or agents. Flat-fee brokers and Fee-for-Service brokers can charge significantly less depending on the type of services offered.',
  social_interaction: 'high',
  salary: 40000 ,
  entry_barriers: 'low',
  remote_flexibility: 'low',
  international_flexibility: 'medium',
  working_hour_flexibility:'low',
  next_steps:''
)

paramedic = Career.create(
  title: 'paramedic',
  summary:'A paramedic is a healthcare professional who responds to emergency calls for medical help outside of a hospital. Paramedics mainly work as part of the emergency medical services (EMS), most often in ambulances. The scope of practice of a paramedic varies among countries, but generally includes autonomous decision making around the emergency care of patients.',
  detailed_description: 'Not all ambulance personnel are paramedics, although the term is sometimes used informally to refer to any ambulance personnel. In English-speaking countries, there is an official distinction between paramedics and emergency medical technicians (or emergency care assistants), in which paramedics have additional qualifications and are accountable to a professional regulatory body. The paramedic role is closely related to other healthcare positions, especially the emergency medical technician role, with paramedics often being a higher grade role, with more responsibility and autonomy. The role of a paramedic varies widely across the world, as EMS providers operate with many different models of care. In the Anglo-American model, paramedics are autonomous decision-makers. In some countries such as the United Kingdom and South Africa, the paramedic role has developed into an autonomous health profession. In the Franco-German model, ambulance care is led by physicians. In some versions of this model, such as France, there is no direct equivalent to a paramedic. Ambulance staff have either the more advanced qualifications of a physician or less advanced training in first aid. In other versions of the Franco-German model, such as Germany, paramedics do exist. Their role is to support a physician in the field, in a role more akin to a hospital nurse, rather than operating with clinical autonomy. The development of the profession has been a gradual move from simply transporting patients to hospital, to more advanced treatments in the field. In some countries, the paramedic may take on the role as part of a system to prevent hospitalisation entirely and, through practitioners, are able to prescribe certain medications, or undertaking \'see and refer\' visits, where the paramedic directly refers a patient to specialist services without taking them to hospital.',
  social_interaction: 'high',
  salary: 45000 ,
  entry_barriers: 'low',
  remote_flexibility: 'low',
  international_flexibility: 'medium',
  working_hour_flexibility:'low',
  next_steps:''
)

music_producer = Career.create(
  title: 'music producer',
  summary:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique officiis eveniet repellat, necessitatibus natus dolorem laborum provident quaerat itaque. Reprehenderit tenetur in itaque eum dignissimos. Ipsa reprehenderit molestias ut aspernatur!',
  detailed_description: ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus reprehenderit blanditiis dolore mollitia porro facere distinctio natus voluptatum iusto cupiditate deleniti, unde dolor, praesentium culpa vel illo eos sunt magnam!',
  social_interaction: 'low',
  salary: 25000 ,
  entry_barriers: 'low',
  remote_flexibility: 'low',
  international_flexibility: 'high',
  working_hour_flexibility:'medium',
  next_steps:''
)

pilot = Career.create(
  title: 'pilot',
  summary:'An aircraft pilot or aviator is a person who controls the flight of an aircraft by operating its directional flight controls. Some other aircrew members, such as navigators or flight engineers, are also considered aviators, because they are involved in operating the aircraft\'s navigation and engine systems. Other aircrew members, such as flight attendants, mechanics and ground crew, are not classified as aviators.',
  detailed_description: 'Pilots are required to go through many hours of flight training and theoretical study, that differ depending on the country. The first step is acquiring the Private Pilot License (PPL), or Private Pilot Certificate. In the United States of America, this includes a minimum of 35 to 40 hours of flight training, the majority of which with a Certified Flight Instructor.',
  social_interaction: 'medium',
  salary: 65000 ,
  entry_barriers: 'medium',
  remote_flexibility: 'low',
  international_flexibility: 'high',
  working_hour_flexibility:'low',
  next_steps:''
)


chef = Career.create(
  title: 'chef',
  summary:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse itaque voluptates vitae ipsum natus magnam omnis consequuntur! Quas ea nulla dolor similique, unde, nam quia officia obcaecati amet maxime consectetur.',
  detailed_description: ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo asperiores, reprehenderit molestias obcaecati voluptatum aspernatur facere nulla, nihil at quos maxime distinctio iste odit itaque aperiam dicta, consequuntur autem quod!',
  social_interaction: 'low',
  salary: 25000 ,
  entry_barriers: 'low',
  remote_flexibility: 'low',
  international_flexibility: 'high',
  working_hour_flexibility:'medium',
  next_steps:''
)

conductor = Career.create(
  title: 'conductor',
  summary:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non iure harum doloribus, minus aliquid id quibusdam, odio accusantium quasi dicta laborum officia corporis quia. Veritatis officiis necessitatibus exercitationem hic debitis!',
  detailed_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem maxime aspernatur, dolor consequatur dolorem unde sit explicabo dolores libero inventore harum tenetur totam asperiores, consectetur odio quae! Reiciendis veniam, voluptas!',
  social_interaction: 'low',
  salary: 25000 ,
  entry_barriers: 'low',
  remote_flexibility: 'low',
  international_flexibility: 'high',
  working_hour_flexibility:'medium',
  next_steps:''
)

architect = Career.create(
  title: 'architect',
  summary:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi perferendis natus aut. Corrupti iste impedit fuga, ut? Aspernatur pariatur quae quo unde molestias, qui magni veniam voluptates facilis dolor officiis!',
  detailed_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi ullam nulla, repellendus sequi, exercitationem expedita provident quia similique dolores consequatur inventore maxime ea placeat, unde suscipit sed, temporibus quibusdam aspernatur!',
  social_interaction: 'low',
  salary: 25000 ,
  entry_barriers: 'low',
  remote_flexibility: 'low',
  international_flexibility: 'high',
  working_hour_flexibility:'medium',
  next_steps:''
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

banker = Career.create(title: 'banker', summary:'money is all for you' , detailed_description: 'make a living in a groing sector',
                      social_interaction: 'high', salary: 45000 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                      international_flexibility: 'high', working_hour_flexibility:'very high',
                      next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

doctor = Career.create(title: 'doctor', summary:'help others and cure cancer' , detailed_description: 'basic knowledge of medicine',
                      social_interaction: 'very high', salary: 52000 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                      international_flexibility: 'high', working_hour_flexibility:'very high',
                      next_steps:'1. Take acting classes , 2. Go to clown school, 3. Buy a custume and makeup')

lawyer = Career.create(title: 'lawyer', summary:'Perform legal work for individuals or businesses.',
                      detailed_description: 'As advocates, they represent one of the parties in a criminal or civil trial by presenting evidence and arguing in support of their client.
                                            As advisors, lawyers counsel their clients about their legal rights and obligations and suggest courses of action in business and personal matters.
                                            All attorneys research the intent of laws and judicial decisions and apply the laws to the specific circumstances that their clients face.',
                                            social_interaction: 'very high', salary: 53000 ,  entry_barriers: 'difficult', remote_flexibility: 'none',
                                             international_flexibility: 'high', working_hour_flexibility:'very high',
                                             next_steps:'1. Study law 2. Get an internship 3. Study even more')



puts "Creating questions..."

questions = []
questions << Question.create(question: 'I often spend time exploring unrealistic yet intriguing ideas.')
questions << Question.create(question: 'I prefer variety to routine.')
questions << Question.create(question: 'When I face a problem I prefer talking to others about it and involve them in my problem solving process.')
questions << Question.create(question: 'When working in teams I usually take the initiative and the other team members follow my lead.')
questions << Question.create(question: 'When making a decision I rather analyze the situation than trust my gut feeling.')

puts "Creating traits..."

traits = []
traits << Trait.create(title: "creative")
traits << Trait.create(title: "practical")

traits << Trait.create(title: "flexible")
traits << Trait.create(title: "inflexible")

traits << Trait.create(title: "social")
traits << Trait.create(title: "insocial")

traits << Trait.create(title: "leading")
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

# PRODUCT MANAGER
CareerTrait.create(career: product_manager, trait: traits[0])
CareerTrait.create(career: product_manager, trait: traits[3])
CareerTrait.create(career: product_manager, trait: traits[4])
CareerTrait.create(career: product_manager, trait: traits[6])
CareerTrait.create(career: product_manager, trait: traits[8])

# ENTREPRENEUR
CareerTrait.create(career: entrepreneur, trait: traits[0])
CareerTrait.create(career: entrepreneur, trait: traits[3])
CareerTrait.create(career: entrepreneur, trait: traits[4])
CareerTrait.create(career: entrepreneur, trait: traits[6])
CareerTrait.create(career: entrepreneur, trait: traits[8])

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

# CONDUCTOR
CareerTrait.create(career: conductor, trait: traits[0])
CareerTrait.create(career: conductor, trait: traits[3])
CareerTrait.create(career: conductor, trait: traits[4])
CareerTrait.create(career: conductor, trait: traits[6])
CareerTrait.create(career: conductor, trait: traits[8])
# ARCHITECT
CareerTrait.create(career: architect, trait: traits[0])
CareerTrait.create(career: architect, trait: traits[3])
CareerTrait.create(career: architect, trait: traits[4])
CareerTrait.create(career: architect, trait: traits[6])
CareerTrait.create(career: architect, trait: traits[8])
# MUSICPRODUCER
CareerTrait.create(career: music_producer, trait: traits[0])
CareerTrait.create(career: music_producer, trait: traits[3])
CareerTrait.create(career: music_producer, trait: traits[4])
CareerTrait.create(career: music_producer, trait: traits[6])
CareerTrait.create(career: music_producer, trait: traits[8])
# CHEF
CareerTrait.create(career: chef, trait: traits[0])
CareerTrait.create(career: chef, trait: traits[3])
CareerTrait.create(career: chef, trait: traits[4])
CareerTrait.create(career: chef, trait: traits[6])
CareerTrait.create(career: chef, trait: traits[8])

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
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596101323/jordan-whitfield-qODM8pfwRO4-unsplash_scoaz2.jpg")
photographer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596113243/product_manager_cm7wbh.png")
product_manager.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596103654/ben-rosett-WdJkXFQ4VHY-unsplash_lvff6q.jpg")
entrepreneur.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596111003/daniele-franchi-dt0yhDQmJ4k-unsplash_goom74.jpg")
creative_director.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596100896/sales_p2df7p.jpg")
sales_manager.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596111205/ying-ge-D6AYkHWLR9o-unsplash_icnvss.jpg")
innovation_consultant.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596103696/zhen-hu-Xruf17OrkwM-unsplash_fgeyll.jpg")
paramedic.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596103486/kelvin-zhang-2zOK5j-13MA-unsplash_gm3b02.jpg")
pilot.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596120855/real_estate_jguwiu.png")
real_estate_broker.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596115254/daniel-schludi-mbGxz7pt0jM-unsplash_yfuiak.jpg")
music_producer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596115240/austin-ban-IS6RwpuEJpY-unsplash_ormspm.jpg")
chef.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596115387/sven-mieke-A-btl_OPYWA-unsplash_lntqry.jpg")
architect.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1596120679/austrian-national-library-nS0CjPmK-cY-unsplash_jd1z31.jpg")
conductor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://homemaidbetter.com/wp-content/uploads/2019/07/shutterstock_395889778.jpg')
clown.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://homemaidbetter.com/wp-content/uploads/2019/07/shutterstock_395889778.jpg')
housekeeper.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://images.barrons.com/im-182667?width=620&size=1.5')
teacher.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
file = URI.open('https://inteng-storage.s3.amazonaws.com/img/iea/9lwjAVnM6E/sizes/ocde_resize_md.jpg')
astronaut.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
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
