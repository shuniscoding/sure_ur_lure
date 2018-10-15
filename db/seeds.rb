# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 色のデータの生成
colors = [
  {
    name: '赤'
  },
  {
    name: '青'
  },
  {
    name: '緑'
  },
  {
    name: '黄'
  },
  {
    name: 'オレンジ'
  },
  {
    name: 'ピンク'
  },
  {
    name: '白'
  },
  {
    name: '黒'
  }
]
Color.create!(colors) { |c| puts c.name }

# おもさのデータ生成
def weight_data_generator(i)
  while(i <= 4.1)
      Weight.create!(
        milligram: i.to_s
      )
      i += 0.1
      puts Weight.last
  end
end

weight_data_generator(0.1)

# 天気のデータを生成
weathers = [{ name: '晴れ' }, { name: '曇り' }, { name: '雨' }]
Weather.create!(weahters) { |w| puts w.name}

# 釣り場のデータを生成
locations = [
  {
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
  puts User.last
end
puts "Created #{User.count} users"


