User.connection.execute("TRUNCATE TABLE users;")

max = 100
1.upto(max) do |i|
  user = User.new(
    :email => "common_user#{i}@example.com",
    :password => "common_user#{i}",
    :password_confirmation => "common_user#{i}"
  )
  user.skip_confirmation!
  user.save!
  print "\r#{i}/#{max}"
end

user = User.new(
  :email => "common_admin@example.com",
  :password => "common_admin",
  :password_confirmation => "common_admin",
  :admin_flg => true
)
user.skip_confirmation!
user.save!

puts " End"