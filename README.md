# Sinatra: Getting Started! 

## couple of hints

You gonna want to build out your domain in a one to many context
think through two models that can relate to each other (people can have many kittens, kitten belong to person) 
(person has_many guitars, guitars belong to person)(student has_many notes, note belong to student_ etc

> `bundle install`
> `rake db:create_migration NAME=create_resources` (substitute resource for your table name)
> `rake db:migrate` to send migrations to database




We want at least a one to many relationship (two models)
With full CRUD functionality on ONE  model
