User.destroy_all
Goal.destroy_all
Post.destroy_all

jess = User.create(first_name: 'Jess', last_name: 'Bohn', email: 'jess@jess.com', password: 'cat', zipcode: '78748')
kim = User.create(first_name: 'Kim', last_name: 'Patton', email: 'kim@kim.com', password: 'password', zipcode: '78748')
caryn = User.create(first_name: 'Caryn', last_name: 'Ligon', email: 'caryn@caryn.com', password: 'password', zipcode: '78748')
david = User.create(first_name: 'David', last_name: 'Finger', email: 'david@david.com', password: 'password', zipcode: '78748')
carlos = User.create(first_name: 'Carlos', last_name: 'Ortuno', email: 'carlos@carlos.com', password: 'password', zipcode: '78748')

everest = Goal.create(name: 'Climb Mount Everest', description: "This goal is for the adventurous who wish to climb the world's tallest mountain and want to do so by finding local friends with the same wacky wish!")
foodie = Goal.create(name: "Try all Thai restaurants", description: "This goal is for those Austin foodies out there who wish to try all of the Thai restaurants that their city has to offer, but who doesn't want to do it alone!")
starwars = Goal.create(name: "Nonstop Star Wars Marathon", description: "This goal is for those who wish to watch all of installments of the Star Wars saga in an epic one-sitting, nonstop, marathon adventure that are also seeking friends to do this with (Don't worry, order is up to you)")
marathon = Goal.create(name: "Run a Marathon", description: "This goal is for those who are super ambitious and wish to complete a marathon in their lifetime. (Totally won't judge on how soon you do it). This goal is hard and will take a lot to complete so this is where you can connect with others just as crazy as you and share some tips and events!")
python = Goal.create(name: "Learn Python", description: "This goal is for those who want to learn the programming language Python with a community of people who are the same track as you. Those who share this goal can post tips on helpful blogs/courses and events such as Python meetups")
bass_guitar = Goal.create(name: "Play Bass Guitar", description: "This is for those who want jam out (in a low tone), but more behind the scenes by playing the bass guitar. So share some of your personal tips about what you have encountered trying to reach this goal so that others can too!")

jess.goals << starwars << python << bass_guitar
kim.goals << starwars << python << foodie
caryn.goals << starwars << foodie << everest
david.goals << everest << marathon << foodie
carlos.goals << everest << python << foodie << bass_guitar

everest.posts << Post.create(type: 'Tip', content: 'Dress warm!')
everest.posts << Post.create(type: 'Tip', content: "Be sure to fully prepare yourself for this trip in the weeks/month leading up to your actual climb! You wouldn't want to miss out on great feat just becuase your mind was someone else and forgot to pack certain essentials")
