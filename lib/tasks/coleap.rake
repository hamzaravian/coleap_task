namespace :coleap do
  desc "Save sample response to the database"
  task response_saver: :environment do
    records = JSON.parse(File.read('public/response.json'))
    records.each do |car|
      id = car['id']
      colors = car['colors']
      car.delete('id')
      car.delete('colors')
      car_obj = Car.where(id: id).first_or_create
      car_obj.update(car)
      colors.each do |color|
        color_obj = Color.where(name: color).first_or_create
        car_obj.colors << color_obj unless car_obj.colors.where(id: color_obj).exists?
      end
    end
  end
end
