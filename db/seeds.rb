# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
def cities
  city = [
    'atl' => {
      name: 'Welcome to Atlanta',
      image_url: 'https://unsplash.com/photos/F8mx5zBVbyA',
      description: "What\'s next, Michael? Are you going to make dancing illegal? Is this the tiny town from Footloose? I don\'t care if it takes from now till the end of Shrimpfest. It seems like only yesterday you were bursting forth from your mother\'s fertile womb. I know she\'s a brownish area! With points! And I love her! Although George Michael had only got to second base, he\'d gone in head first, like Pete Rose. It\'s a jetpack, Michael. What could possibly go wrong? I\'m gonna build me an airport, put my name on it. Why, Michael? So you can fly away from your feelings? Why are you squeezing me with your body? It\'s a hug, Michael. I\'m hugging you",
      rating: 4,
      post: "kndf;knadkfa;kmsl;dma;l,sdl;am"


    },
    'london' => {
      name: 'Welcome to London',
      image_url: 'https://unsplash.com/photos/3l1sjp562qQ',
      description: "The Man Inside Me seems well reviewed. It's as Ann as the nose on plain's face.",
      rating: 5,
      post: "lknsdflknsdlkfnklsdnfklna;kwmeopqjwornwjksdnf g"


    },
    'san_fran' => {
      name: "If You're Going to San Francisco...",
      image_url: 'https://unsplash.com/photos/uYc-sDEVkV8',
      description: "A Colombian cartel that WON'T kidnap and kill you. Mr. Zuckerkorn, you've been warned about touching. You said spanking. One of the guys told me to take my head out of my BOTTOM and get back to work…my BOTTOM! Hahahaha.",
      rating: 4,
      post: "knsdlakwnemaowmpmgskd f s,mbjlbjbj hvuyv oi oij vyu f uygohjpjejnrfaf"
    }
  ]
  city
end
