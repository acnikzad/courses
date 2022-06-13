# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


f_names = ["Adam", "Alex", "Aaron", "Ben", "Carl", "Dan", "David", "Edward", "Fred", "Frank", "George", "Hal", "Hank", "Ike", "John", "Jack", "Joe", "Larry", "Monte", "Matthew", "Mark", "Nathan", "Otto", "Paul", "Peter", "Roger", "Roger", "Steve", "Thomas", "Tim", "Ty", "Victor", "Walter", "Mike", "Jim", "Carol", "Barbara", "Kelly", "Michelle", "Amanda", "Janice", "Juanita", "Natalie", "Amy", "Karen", "Stephanie", "Crystal", "Katharine", "Paula", "Melissa", "Gwen", "Francesca", "Harry","Ross", "Bruce", "Cook", "Carolyn", "Morgan", "Albert", "Walker", "Randy", "Reed", "Larry", "Barnes", "Lois", "Wilson", "Jesse", "Campbell", "Ernest","Rogers", "Theresa", "Patterson", "Henry","Simmons", "Michelle", "Perry", "Frank", "Butler", "Shirley", "Shivani", "Danica", "Emilie", "Halley", "Galen", "Callie", "Reese", "Antonia", "Cade", "Alisha", "Jarrett", "Erik", "Yasmine", "Samantha", "Sophie", "Davis", "Abigale", "Jensen", "Demond", "Trent", "Ignacio", "Freddie", "Jada", "Annelise", "Carl", "Jillian", "India", "Clayton", "Nautica", "Leroy", "Stephen", "Jaycob", "Tyron", "Josephine", "Anton", "Kelley", "Kaiden", "Blaise", "Madelyne", "Glen", "Ramsey", "Conor", "Craig", "Cedrick", "Lucero", "Messiah", "Ricky", "Stanley", "Emilio", "Jaron", "Donte", "Madeleine", "Arman", "Brynne", "Marvin", "Jalynn", "Brayden", "Stacie", "Hernan", "Alicia", "Iman", "Kirstyn", "Daron", "Tristen", "Jade", "Shea", "Priscilla", "Emerson", "Skylar", "Carl", "Jarred", "Keyanna", "Kent", "Korbin", "Kayden", "Blair", "Lacy", "Sydney", "Edgar", "Celina", "Coleman", "Dequan", "Calvin", "Hector", "Sage", "Adan", "Madysen", "Yajaira", "Sierra", "Ronan", "Rodrigo", "Isabela", "Symone", "Larry", "Frida", "Xochitl", "Ester", "Yehuda", "Andrew", "Kassie", "Deana", "Christa", "Liberty", "Cristal", "Stanley", "Dorien", "Kevin", "Kaylynn", "Breanne", "Ciarra", "Maya", "Mark", "Kendall", "Jadah", "Benny", "Jamari", "Natalya", "Gilbert", "Brock", "Douglas", "Alonso", "Kasey", "Victor", "Deonte", "Paula", "Hattie", "Alessandro", "Katrina", "Emma", "Mikayla", "Alexis", "Adrian", "Barrett", "Preston", "Ivanna", "Carissa", "Zainab", "Amia", "Arnold", "Luca", "Terra", "Kalob", "Kenny", "Aria", "Angelo", "Rayshawn", "Jasper", "Payne", "Skyler", "Kiah", "Kalen", "Zariah", "Mariano", "Braiden", "Jadyn", "Lesly", "Dane", "Octavio", "Joel", "Leigh", "Iris", "Layton", "Alejandro", "Tyree", "Halee", "Cailin", "Reuben", "Krysta", "Brandi", "Devlin", "Frank", "Uriah", "Harris", "Jarett", "Yesica", "Cristobal", "Chelsie", "Brittney", "Joanna", "Lena", "Kenton", "Kaitlin", "Terrell", "Jaquelin", "Howard", "Kade", "Audrey", "Conner", "Joan", "Leo", "Charisma", "Randi", "Brissa", "Tyler", "Darrell", "Kinsey", "Jayda", "Keshaun", "Charles", "Mauricio", "Ronaldo", "Cortney", "Drew", "Katie", "Demetria", "Raelynn", "Eryn", "Sofia", "Lilly", "Dustyn", "Jala", "Ariel", "Myles", "Trevon", "Kody", "Keelan", "Kourtney", "Lia", "Autumn", "Morgan", "Roland", "Fabian", "Darryl", "Abner", "Natalie", "Emerald", "Jairo", "Allyssa", "Hanna", "Winter", "Kylah", "Stevie", "Shawn", "Saira", "Briley", "Deangelo", "Kaleigh", "Cesar", "Jasmyn", "Olivia", "Cornelius", "Alfred", "Sarai", "Jovany", "Bradly", "Britany", "Darian", "Sariah", "Angeles", "Winston", "Michael" ]

l_names = ["Donnelly", "Elrod", "Foust", "Griswold", "Simmons", "Milam", "Lance", "Peacock", "Byrne", "Yeager", "Barone", "Worden", "Wylie", "Cantu", "Bello", "Whatley", "George", "Bland", "Larue", "Ceballos", "Ritter", "Meeks", "Cho", "Artis", "Suggs", "Rader", "Ramsey", "Randolph", "Benavides", "Culbertson", "Argueta", "Hahn", "Forster", "Chew", "Turpin", "Behrens", "Garrett", "Upton", "Frost", "Prado", "Rojas", "Wenger", "DeJesus", "Barnett", "Callahan", "Simms", "Griggs", "Early", "Valencia", "Giron", "Cowart", "Eckert", "Stern", "Sadler", "Hardin", "Villarreal", "Gardiner", "Swisher", "Branson", "Weller", "Calvin", "Frye", "Whiteside", "Ridgeway", "Grogan", "Osorio", "Strand", "Whiting", "Kendrick", "Hartley", "Rincon", "Gale", "Forsythe", "McMahan", "Nikzad," "Vargas", "Cheney", "Iverson", "Engle", "Neuman", "Roman", "Pak", "Farley", "Royal", "Davila", "Packard", "Hollins", "Negrete", "Fortune", "Ontiveros", "Augustine", "Zuniga", "Clarke", "Hills", "Granger", "Waggoner", "Witte", "Warden", "Kohn", "Thacker", "Shen", "Kirkpatrick", "Contreras", "Harder", "Waite", "Durbin", "Looney", "Vega", "Dykes", "Sanborn", "Penny", "Fowler", "Sargent", "Lovett", "Lujan", "StClair", "Santiago", "Sharpe", "Nagy", "Edmondson", "Rucker", "Nixon", "Kessler", "Kuykendall", "Dorman", "Pappas", "Gilliam", "Barksdale", "Beal", "Comstock", "Borges", "Phan", "Swope", "Rushing", "Pierson", "Mayes", "Altman", "Alvarez", "Yanez", "Everett", "Welsh", "German", "Bingham", "Cloud", "Delagarza", "Connelly", "Stubblefield", "Jaime", "Hook", "Dover", "Hutchings", "Cardenas", "McIntyre", "Cole", "Alderman", "Zavala", "Earley", "Clayton", "Crandall", "Blakely", "Cardona", "Berman", "Conley", "Winters", "Hammons", "Morales", "Martins", "Madrid", "Koontz", "Salinas", "Windham", "Jaeger", "Pineda", "Fitzsimmons", "Stine", "Thurman", "Donnell", "Marlow", "Poirier", "Peebles", "Jaramillo", "Dawkins", "McDermott", "Connor", "Wasson", "Wheaton", "Ennis", "Sturgeon", "Bailey", "Perrin", "Ainsworth", "Ewing", "Massey", "Lauer", "Hodge", "Ballard", "Corbin", "Reedy", "Dobbs", "Fairbanks", "Brito"]


student = Student.all

50.times do
  random_f_name = f_names[rand(0..f_names.length)]
  random_l_name = l_names[rand(0..l_names.length)]
  @student = Student.create({
    "first_name" => random_f_name,
    "last_name" => random_l_name,
    "course_id" => rand(0..15)})
  end
puts Student.all 

teacher = Teacher.all

15.times do
  random_f_name = f_names[rand(0..f_names.length)]
  random_l_name = l_names[rand(0..l_names.length)]
  @teacher = teacher.create({
    "first_name" => random_f_name,
    "last_name" => random_l_name,
    "course_id" => rand(0..15)})
  end
puts Teacher.all 


# Student.all.each do |student|
#   Course.first(3).each do |course|
#     student.courses << course
#   end
# end

# Student.all.each do |student|
#   Course.first(3).each do |course|
#     student.courses << course
#   end
# end
