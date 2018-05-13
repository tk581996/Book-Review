admin=User.new({ email: 'admin@gmail.com',
               password: 'admin@123', password_confirmation: 'admin@123'})
    
    admin.toggle!(:admin)

    if admin.valid?
      admin.save()

    elsif admin.errors.any?
      admin.errors.full_messages.each do |msg|
        puts msg
      end
    else
      puts "****NOT VALID****"
    end