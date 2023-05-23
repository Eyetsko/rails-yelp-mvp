#frozen_string_literal: true

#this is a comment

Restaurant.destroy_all

puts "populating db.."

5.times do
  new_restaurant = Restaurant.new(name: Faker::TvShows::RuPaul.queen,
                                  address: Faker::Address.full_address,
                                  phone_number: Faker::PhoneNumber.cell_phone,
                                  category: ['italian', 'french', 'japanese', 'belgian', 'chinese'].sample)

  if new_restaurant.save
    puts "#{new_restaurant.id} was created.."
  end
end
