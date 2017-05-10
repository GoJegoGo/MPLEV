# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Package.count == 0
    Package.create!([
            { name: 'Regular', package_type: 'Refreshers w/ mock tests', initial_price: 7500 },
            { name: 'Extended', package_type: 'Refreshers w/ tours and mock tests', initial_price: 9500 }
    ])
end

if ClassCatalog.count == 0
    ClassCatalog.create!([
        {
            venue_address: 'Golden Crescent Mansion 104',
            time_start: '8:00',
            time_end: '12:00',
            subject_list: 'Algebra, Trigonometry, Economics',
            date_start: '2017-03-21',
            date_end:    '2017-04-21'
        },
        {
            venue_address: 'ISO 104',
            time_start: '13:00',
            time_end: '17:00',
            subject_list: 'Algebra, Trigonometry, Economics',
            date_start: '2017-03-21',
            date_end:    '2017-04-21'
        }
    ])
end