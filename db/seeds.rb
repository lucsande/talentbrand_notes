require 'faker'
require 'date'

fulano = User.create!({ email:"fulano@talentbrand.com", password:"senha123", first_name: "Fulano", last_name: "Silva" })

date = Date.today - 15
15.times do
  note = Note.create!({
    title:"#{Faker::Verb.base.capitalize} #{Faker::Relationship.familial.downcase}",
    note: Faker::Lorem.paragraph(sentence_count: 4, supplemental: false, random_sentences_to_add: 10),
    date: date,
    priority: ["alta", "média", "baixa"].sample,
    user: fulano
  })
  p note
  date += 1
end
