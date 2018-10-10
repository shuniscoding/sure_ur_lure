# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 天気のデータを生成
weathers = [{ name: '晴れ' }, { name: '曇り' }, { name: '雨' }]
Weather.create!(weahters) { |w| puts w.name}

# 釣り場のデータを生成
locations = [{
    name: 'としまえんフィッシングエリア'
  },
  {
    name: '開成水辺フォレストスプリングス'
  },
  {
    name: '浅川国際鱒釣場'
  },
  {
    name: '秋川国際鱒釣場'
  },
  {
    name: '奥多摩フィッシングセンター'
  },
  {
    name: '氷川国際ます釣り場'
  },
  {
    name: 'TOKYOトラウトカントリー'
  },
  {
    name: 'フィッシュオン王禅寺'
  }
]
Location.create!(locations) { |l| puts l.name}

# ユーザーのデータを生成
3.times do |i|
  User.create!(
    email: Faker::Internet.safe_email,
    password: Faker::Internet.password
  )
end
puts "Created #{User.count} users"


