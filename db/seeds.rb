# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating interests"

Interest.destroy_all
User.destroy_all
Condition.destroy_all
Child.destroy_all



animals = Interest.create(
    name: "Animals",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/lyoxtaxeycrd2gzc00ec.png"
)

sport = Interest.create(
    name: "Sport",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/f6axcef5pslv8gjkclyy.png"
)

reading = Interest.create(
    name: "Reading",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292142/samples/interests/wfprxjwepftmm8gpjn2y.png"
)

gaming = Interest.create(
    name: "Gaming",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/zqjvm1kafawfiabqza14.png"
)

movies = Interest.create(
    name: "Movies",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/zsbsvhagltxhm56zhnjy.png"
)

music = Interest.create(
    name: "Music",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/rsp1vlxb9awpcpns7cwx.png"
)

acting = Interest.create(
    name: "Acting",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/mhd2ajxbmyfvoaz6hts1.png"
)

dancing = Interest.create(
    name: "Dancing",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/grximpgyjr5qpt5etatk.png"
)

drawing = Interest.create(
    name: "Drawing",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/yr0jaw30leyoikyfzwl4.png"
)

singing = Interest.create(
    name: "Singing",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566292143/samples/interests/l6usjmgmdjrz1wrbbpeb.png"
)

reading.save!
animals.save!
sport.save!
gaming.save!
movies.save!
music.save!
acting.save!
dancing.save!
drawing.save!
singing.save!

puts "interests saved!"

puts "creating conditions"



adhd = Condition.create(
    name: "ADHD",
    description: "Attention deficit hyperactivity disorder (ADHD) is a mental disorder of the neurodevelopmental type. It is characterized by difficulty paying attention, excessive activity, and behavior without regards to consequences, which are otherwise not appropriate for a person's age."
)

anxiety = Condition.create(
    name: "Anxiety Disorder",
    description: "Anxiety disorders are a group of mental disorders characterized by significant feelings of anxiety and fear. Anxiety is a worry about future events, and fear is a reaction to current events."
)

auditory = Condition.create(
    name: "Auditory Processing Disorder",
    description: "Auditory processing disorder (APD), also known as central auditory processing disorder (CAPD), is a hearing problem that affects about 5% of school-aged children. Kids with this condition can't process what they hear in the same way other kids do because their ears and brain don't fully coordina"
)

autism = Condition.create(
    name: "Autism Spectrum Disorder",
    description: "Autism spectrum, also known as autism spectrum disorder (ASD), is a range of mental disorders of the neurodevelopmental type."
)

cerebral = Condition.create(
    name: "Cerebral Palsy",
    description: "Cerebral palsy (CP) is a group of permanent movement disorders that appear in early childhood. Signs and symptoms vary among people and over time. Often, symptoms include poor coordination, stiff muscles, weak muscles, and tremors. "
)

depression = Condition.create(
    name: "Depression",
    description: "Childhood depression is different from the normal 'blues' and everyday emotions that occur as a child develops."
)

developmental = Condition.create(
    name: "Developmental Delays",
    description: "A developmental delay is more than just being 'slower to develop' or “a little behind.” It means a child is continually behind in gaining the skills expected by a certain age. A developmental delay can happen in just one area or in a few. A global developmental delay is when kids have delays in at least two areas."
)

downsyndrome = Condition.create(
    name: "Down Syndrome",
    description: "Down syndrome (DS or DNS), also known as trisomy 21, is a genetic disorder caused by the presence of all or part of a third copy of chromosome 21. It is usually associated with physical growth delays, mild to moderate intellectual disability, and characteristic facial features."
)

dyslexia = Condition.create(
    name: "Dyslexia",
    description: "Dyslexia, also known as reading disorder, is characterized by trouble with reading despite normal intelligence. Different people are affected to varying degrees."
)

neuro = Condition.create(
    name: "Neuro-Typical",
    description: "Neurotypical or NT, an abbreviation of neurologically typical, is a neologism widely used in the autistic community as a label for people who are not on the autism spectrum.
"
)

obsessive = Condition.create(
    name: "Obsessive Compulsive Disorder",
    description: "Obsessive-Compulsive Disorder (OCD) is a common, chronic and long-lasting disorder in which a person has uncontrollable, reoccurring thoughts (obsessions) and behaviors (compulsions) that he or she feels the urge to repeat over and over."
)

oppositional = Condition.create(
    name: "Oppositional Defiance Disorder",
    description: "Oppositional defiant disorder (ODD) is a type of behavior disorder. It is mostly diagnosed in childhood. Children with ODD are uncooperative, defiant, and hostile toward peers, parents, teachers, and other authority figures. They are more troubling to others than they are to themselves."
)

seizure = Condition.create(
    name: "Seizure Disorder",
    description: "It can cause numerous signs and symptoms like convulsions, thought disturbances, loss of consciousness, and/or other symptoms. Usually, doctors consider seizures a symptom of a disease."
)

sensory = Condition.create(
    name: "Sensory Processing Disorder",
    description: "Sensory processing disorder is a condition in which the brain has trouble receiving and responding to information that comes in through the senses. "
)

speach = Condition.create(
    name: "Speach and Language Delay",
    description: "A speech and language delay is when a child isn't developing speech and language at an expected rate. "
)

twice = Condition.create(
    name: "Twice Exceptional",
    description: "The term twice exceptional, often abbreviated as 2e, entered educators' lexicons in mid 1990s and refers to gifted children who have some form of disability."
)

adhd.save!
anxiety.save!
auditory.save!
autism.save!
cerebral.save!
depression.save!
developmental.save!
downsyndrome.save!
dyslexia.save!
neuro.save!
obsessive.save!
oppositional.save!
seizure.save!
sensory.save!
twice.save!

puts "conditions saved"

puts "creating users"




tom = User.create(
    first_name: "Tom",
    last_name: "De Donker",
    email: "tomdedonker@gmail.com",
    password:"password123",
    username: "Tomdedonker",
    address: "Brussels",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297378/samples/people/users/lozwxlxn0ypgccjfvtuk.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
)

john = User.create(
    first_name: "John",
    last_name: "Peeters",
    email: "johnpeeters@gmail.com",
    password:"password123",
    username: "johnpeeters",
    address: "Brussels",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297376/samples/people/users/jrqc3m3ywbmmfth2w5bi.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)

sarah = User.create(
    first_name: "Sarah",
    last_name: "Dubois",
    email: "sarahdubois@gmail.com",
    password:"password123",
    username: "Sarahdubois",
    address: "Molenbeek-Saint-Jean",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297378/samples/people/users/acihmhasaqzwguxrf0cn.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
)

patricia = User.create(
    first_name: "Patricia",
    last_name: "Maes",
    email: "patriciamaes@gmail.com",
    password:"password123",
    username: "Patriciamaes",
    address: "Anderlecht",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297378/samples/people/users/liowss7bgoltmxys1gxz.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)

pieter = User.create(
    first_name: "Pieter",
    last_name: "Jacobs",
    email: "pieter.j@gmail.com",
    password:"password123",
    username: "Pieterjacobs",
    address: "Brussels",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297379/samples/people/users/ma6zsmthrpaexmqmni9m.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)

tomas = User.create(
    first_name: "Tomas",
    last_name: "Claes",
    email: "tomasclaes@gmail.com",
    password:"password123",
    username: "tomclaes",
    address: "Dilbeek",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297379/samples/people/users/ic5n2g7nrpw5thoktrc9.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)

liesa = User.create(
    first_name: "Liesa",
    last_name: "Dupont",
    email: "liesa.dupont@gmail.com",
    password:"password123",
    username: "liesa.dupont",
    address: " Dilbeek",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297379/samples/people/users/f10tc8tsltwjeienrah0.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)

ann = User.create(
    first_name: "Ann",
    last_name: "Hermans",
    email: "annhermans@gmail.com",
    password:"password123",
    username: "Annhermans",
    address: "Anderlecht",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297378/samples/people/users/l2kaaixfqu1tyyfuqrzk.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)

fien = User.create(
    first_name: "Fien",
    last_name: "Beckers",
    email: "missfien@gmail.com",
    password:"password123",
    username: "Fienbeckers",
    address: "Saint-Gilles",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297378/samples/people/users/pfza4igjvwjplwu6lbqw.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)

louis = User.create(
    first_name: "Louis",
    last_name: "Verbeke",
    email: "louisverbeke@gmail.com",
    password:"password123",
    username: "Louisverbeke",
    address: "Uccle",
    remote_photo_url: "https://res.cloudinary.com/linomeert/image/upload/v1566297375/samples/people/users/muho7tltu2ymcycwj9o6.jpg",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

)


tom.save!
john.save!
sarah.save!
patricia.save!
pieter.save!
tomas.save!
liesa.save!
ann.save!
fien.save!
louis.save!

puts "users saved"



puts "creating children"



child1 = Child.create(
    name: "Pieter",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 4,
    user: louis
)


child2 = Child.create(
    name: "Jan",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 6,
    user: fien
)

child3 = Child.create(
    name: "Pierre",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 8,
    user: ann
)

child4 = Child.create(
    name: "Jean",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 3,
    user: liesa
)

child5 = Child.create(
    name: "Sarah",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 13,
    user: tomas
)

child6 = Child.create(
    name: "Fanny",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 13,
    user: pieter
)

child7 = Child.create(
    name: "Lisa",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 11,
    user: patricia
)

child8 = Child.create(
    name: "Clara",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 6,
    user: sarah
)

child9 = Child.create(
    name: "Jo",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 4,
    user: john
)

child10 = Child.create(
    name: "Bella",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    age: 7,
    user: tom
)

child1.conditions << [developmental, speach]
child2.conditions << [auditory, speach]
child3.conditions << [developmental, oppositional]
child4.conditions << [dyslexia]
child5.conditions << [twice]
child6.conditions << [adhd, dyslexia]
child7.conditions << [downsyndrome]
child8.conditions << [twice]
child9.conditions << [developmental, speach]
child10.conditions << [neuro, oppositional]


child1.interests << [reading, gaming]
child2.interests << [sport, movies, singing]
child3.interests << [acting, sport]
child4.interests << [dancing, animals, sport, drawing]
child5.interests << [singing, acting, music, drawing]
child6.interests << [dancing, singing]
child7.interests << [movies, music, gaming]
child8.interests << [singing, animals]
child9.interests << [animals, drawing]
child10.interests << [animals, music, singing]

child1.save!

puts "child saved"

puts "connecting children interests"





