# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Food.destroy_all

Food.create(name: 'potato', calories: 45)
Food.create(name: 'tofu', calories: 90)
Food.create(name: 'rice', calories: 70)
Food.create(name: 'celery', calories: 10)
Food.create(name: 'corn', calories: 35)

