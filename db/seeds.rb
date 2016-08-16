

1000.times do
  Support.create name: Faker::StarWars.character,
                  email: Faker::Internet.email,
                  department: ["sales", "marketing", "technical"].sample,
                  message: Faker::Hipster.paragraph,
                  mark: ["done", "undone"].sample
        end
