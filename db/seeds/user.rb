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
puts " End"