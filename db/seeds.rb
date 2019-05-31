# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!(name:  "admin",
             email: "example@.muhlenberg.edu",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
#Category.create!([{name:'Computer Science'},{name:'mathematics'},{name:'Biology'},{name:'Arts'},{name:'History'}])


# 20.times do |index|
#   Book.create!(title: Faker::Book.title, #=> "The Odd Sister"
#                       subject: "computer Science",
#                       author: "John",
#                       description: Faker::Lorem.sentence(1, false, 0).chop,
#                       publisher: "Pearson",
#                       isbn: "9780803612259",
#                       year: "2013",
#                       price: "20.99"
#                     )
#
# end
#
# p "Created #{Book.count} books"

# Faker::Book.title #=> "The Odd Sister"
#
# # Random Author
# Faker::Book.author #=> "Alysha Olsen"
#
# # Random Publisher
# Faker::Book.publisher #=> "Opus Reader"
#
#
# Book.create!(title: "Photoshop Elements 9: The Missing Manual",subject: "Computer Science", author: "Barbara Brundage",description: "It is about editing photos", publisher: "Pogue Press",isbn: "9781449389673", year: 2010, price: 56.29)
# # Book.create!(title: 'Where Good Ideas Come From: The Natural History of Innovation',subject: 'Computer Science', author: 'Steven Johnson',description: 'I love this book', publisher: 'Riverhead Hardcover',isbn: '9781594487712', year: 2010, price: 97.98)
# # Book.create!(title: 'The Digital Photography Book',subject: 'Computer Science', author: 'Scott Kelby', description: 'Great book', publisher: 'Peachpit Press', isbn: '9780321474049', year: 2006, price: 66.52)
# Book.create!(title: 'The Great Gatsby', subject: 'Computer Science', author: 'F. Scott Fitzgerald', description: 'A paperback and it is about a friend', publisher: 'Scribner', isbn: '978684801520' , year: 1995, price: 90.71)
# # Book.create(isbn: '978-0803612259', title: 'Davis s Drug Guide For Nurses (book With Cd-rom) And Mednotes: Nurse s Pocket Pharmacology Guide', authors: 'Judith Hopfer Deglin, April Hazard Vallerand', publisher: 'F. A. Davis Company', year: 2004, inventory: 15, price: 81.38, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-1111529024', title: 'Microsoft Office 2007: Introductory Concepts and Techniques, Premium Video Edition (Book Only)', authors: 'Gary B. Shelly, Thomas J. Cashman, Misty E. Vermaat', publisher: 'Course Technology', year: 2010, inventory: 1, price: 84.67, format: 'paperback', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0262513593', title: 'The Future of Learning Institutions in a Digital Age (John D. and Catherine T. MacArthur Foundation Reports on Digital Media and Learning)', authors: 'Cathy N. Davidson, David Theo Goldberg', publisher: 'The MIT Press ', year: 2009, inventory: 9, price: 91.51, format: 'paperback', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0470547816', title: 'The New Rules of Marketing and PR: How to Use Social Media, Blogs, News Releases, Online Video, and Viral Marketing to Reach Buyers Directly, 2nd Edition', authors: 'David Meerman Scott', publisher: 'Wiley', year: 2010, inventory: 20, price: 97.32, format: 'paperback', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0321344755', title: 'Dont Make Me Think: A Common Sense Approach to Web Usability, 2nd Edition', authors: 'Steve Krug', publisher: 'New Riders Press', year: 2005, inventory: 8, price: 76.93, format: 'paperback', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0393072228', title: 'The Shallows: What the Internet Is Doing to Our Brains', authors: 'Nicholas Carr', publisher: 'W. W. Norton & Company ', year: 2010, inventory: 11, price: 84.7, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0071701334', title: 'CompTIA A+ Certification All-in-One Exam Guide, Seventh Edition (Exams 220-701 & 220-702)', authors: 'Michael Meyers', publisher: 'McGraw-Hill Osborne Media', year: 2010, inventory: 3, price: 73.62, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0470523988', title: 'Windows 7 For Dummies Book + DVD Bundle', authors: 'Andy Rathbone', publisher: 'For Dummies', year: 2009, inventory: 14, price: 72.74, format: 'paperback', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0262033848', title: 'Introduction to Algorithms, Third Edition', authors: 'Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein', publisher: 'The MIT Press', year: 2009, inventory: 20, price: 93.72, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0321295354', title: 'Algorithm Design', authors: 'Jon Kleinberg, Eva Tardos', publisher: 'Addison Wesley', year: 2005, inventory: 16, price: 79.02, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0321441461', title: 'Data Structures and Algorithm Analysis in C++ (3rd Edition)', authors: 'Mark A. Weiss', publisher: 'Addison Wesley', year: 2006, inventory: 2, price: 95.25, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-1848000698', title: 'The Algorithm Design Manual', authors: 'Steven S. Skiena', publisher: 'Springer', year: 2008, inventory: 18, price: 51.11, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0072467505', title: 'Introduction to Computing Systems: From bits & gates to C & beyond', authors: 'Yale Patt, Sanjay Patel', publisher: 'McGraw-Hill Science/Engineering/Math', year: 2003, inventory: 5, price: 56.38, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-1449389550', title: 'Hackers & Painters: Big Ideas from the Computer Age', authors: 'Paul Graham', publisher: 'O Reilly Media', year: 2010, inventory: 1, price: 77.98, format: 'paperback', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0470383261', title: 'Data Structures and Algorithms in Java', authors: 'Michael T. Goodrich, Roberto Tamassia', publisher: 'Wiley', year: 2010, inventory: 18, price: 52.17, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0596529321', title: 'Programming Collective Intelligence: Building Smart Web 2.0 Applications', authors: 'Toby Segaran', publisher: 'O Reilly Media', year: 2007, inventory: 20, price: 66.97, format: 'paperback', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-1933988665', title: 'Algorithms of the Intelligent Web', authors: 'Haralambos Marmanis, Dmitry Babenko', publisher: 'Manning Publications', year: 2009, inventory: 7, price: 90.77, format: 'paperback', keywords: 'information technology', subject: 'Computer Science')
# Book.create(isbn: '978-0321370136', title: 'Data Structures and Algorithm Analysis in Java (2nd Edition)', authors: 'Mark A. Weiss', publisher: 'Addison Wesley', year: 2006, inventory: 0, price: 71.83, format: 'hardcover', keywords: 'information technology', subject: 'Computer Science')
# Book.crea
#
# description:
