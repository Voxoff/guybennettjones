initialize do |app|
  Rails.application.reloader do 
    puts "Reloading!"
  end
end
