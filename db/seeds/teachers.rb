if Teacher.count.zero?
  puts 'Seeding Teachers'
  Teacher.create!(first_name: 'Юра', last_name: 'Тарасенко', description: 'Main Teacher')
  Teacher.create!(first_name: 'John', last_name: 'Dow', description: 'Second Teacher')
  Teacher.create!(first_name: 'Jone', last_name: 'Dow', description: 'Third Teacher')
end
