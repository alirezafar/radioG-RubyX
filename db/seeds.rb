# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(id: '1', artsyname: 'Faravaz', facebook: 'facebook.com/faravaz', likes: '23000', followers: '12000')
Artist.create(id: '2', artsyname: 'Madmazel', facebook: 'facebook.com/faravaz', likes: '23000', followers: '12000')
Artist.create(id: '3', artsyname: 'Hooman', facebook: 'facebook.com/faravaz', likes: '23000', followers: '12000')
Artist.create(id: '4', artsyname: 'Mohsen', facebook: 'facebook.com/faravaz', likes: '23000', followers: '12000')

Video.create(id: '1', title: 'Avalin', artwork: '001.png', format: 'mp4', url: 'rg_RanaMansour_BooyeEidi.mp4', artist_id: '1')
Video.create(id: '2', title: 'Vasatin', artwork: '002.jpg', format: 'mp4', url: 'rg_RanaMansour_BooyeEidi.mp4', artist_id: '2')
Video.create(id: '3', title: 'Akharin', artwork: '003.jpg', format: 'mp4', url: 'rg_RanaMansour_BooyeEidi.mp4', artist_id: '3')