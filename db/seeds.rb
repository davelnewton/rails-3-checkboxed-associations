#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

if Category.all.size == 0
  ['Cat 1', 'Cat 2', 'Cat 3', 'Cat 4'].each do |c|
    Category.new(:name => c).save
  end
end
