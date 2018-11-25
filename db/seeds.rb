# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
branch_array = [ {branch_name: 'Treasury Branch', branch_city: 'Solapur', assets: 90210000},
                 {branch_name: 'Balewadi', branch_city: 'Pune', assets: 7602300},
                 {branch_name: 'Laxmi Road', branch_city: 'Pandharpur', assets: 9000000},
                 {branch_name: 'Baner', branch_city: 'Pune', assets: 8500000},
                 {branch_name: 'Dadar', branch_city: 'Mumbai', assets: 9800000},
                 {branch_name: 'Lutyens Delhi', branch_city: 'Delhi', assets: 9023000},
                 {branch_name: 'Gandhi Road', branch_city: 'Nashik', assets: 8700000},
                 {branch_name: 'City Chowk', branch_city: 'Solapur', assets: 9087000},
                 {branch_name: 'Station Road', branch_city: 'Solapur', assets: 9000045},
                 {branch_name: 'Andheri', branch_city: 'Mumbai', assets: 8700000},
                 {branch_name: 'Parel', branch_city: 'Mumbai', assets: 9300000},
                 {branch_name: 'Ambegaon', branch_city: 'Pune', assets: 9100000},
                 {branch_name: 'Narhe', branch_city: 'Pune', assets: 9840000},
                ]
branch_array.each{|branch_hash| Branch.create!(branch_hash)}
