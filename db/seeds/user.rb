User.connection.execute("TRUNCATE TABLE users;")

max = 100
1.upto(max) do |i|
  user = User.new(
    :email => "user#{i}@example.com",
    :password => "aaaaaa",
    :password_confirmation => "aaaaaa"
  )
  user.skip_confirmation!
  user.save!
  print "\r#{i}/#{max}"
end

user = User.new(
  :email => "admin@example.com",
  :password => "aaaaaa",
  :password_confirmation => "aaaaaa",
  :admin_flg => true
)
user.skip_confirmation!
user.save!

puts " End"