# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = [
  {
    content: "Fix up projects."
  },
  {
    content: "Talk through final project with instrctors."
  },
  {
    content: "Complete rails CRUD app."
  },
  {
    content: "Go through SQL docs to learn about joins."
  },
  {
    content: "Go through the Pubnub website to learn how to impliment the service in final project"
  }
]

data.each do |todo_data|
  Todo.create(todo_data)
end