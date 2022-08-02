namespace :dev do
  desc "Configures the development environment"
  task setup: :environment do
    puts "Cadastrando contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 75.years.ago, to: 18.years.ago)
      )
    end
    puts "Contatos cadastrados..."
  end

end
