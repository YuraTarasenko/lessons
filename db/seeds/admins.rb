if Admin.count.zero?
  puts 'Seeding Teachers'
  Admin.create!(email: 'test@test.com', first_name: 'John', last_name: 'Dow', password: '123456' )
end
