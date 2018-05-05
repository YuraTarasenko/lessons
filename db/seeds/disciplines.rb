if Discipline.count.zero?
  puts 'Seeding Disciplines'

  %W(График Скечинг).each do |name|
    Discipline.create!(name: name)
  end
end
