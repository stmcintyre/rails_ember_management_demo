namespace :db do
  task populate: :environment do

    Employee.destroy_all

    def random_status
      ['New', 'Probation', 'Vacation', 'Sick', 'Suspended', 'Departed', 'Deceased'].sample
    end

    15.times do
      Employee.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number,
        status: random_status,
        notes: Faker::HipsterIpsum.words(10).join(' ')
        )
    end

  end
end
