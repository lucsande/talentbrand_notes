require 'faker'
require 'date'

fulano = User.create!({ email:"fulano@talentbrand.com", password:"senha123", first_name: "Fulano", last_name: "Silva" })

date = Date.today - 15
15.times do
  note = Note.create!({
    title:"#{Faker::Verb.base} #{Faker::Relationship.familial}",
    note: Faker::Lorem.paragraph,
    date: date,
    priority: ["Alta", "Média", "Baixa"].sample,
    user: fulano
  })
  p note
  date += 1
end
