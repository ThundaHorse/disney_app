# parks_to_create = [{
#               name: 'Hollywood Studios', 
#               opening_time: '9:00 AM',
#               closing_time: '9:00 PM',
#               image: 'https://media2.fdncms.com/orlando/imager/u/original/2409999/1000w_disneyhwoodstudios.jpg'
#             }, {
#               name: "Epcot",
#               opening_time: '9:00 AM',
#               closing_time: '9:00 PM',
#               image: 'https://secure.cdn1.wdpromedia.com/resize/mwImage/1/640/360/75/dam/wdpro-assets/gallery/destinations/epcot/epcot-gallery-00.jpg?1537220971715'
#             }, {
#               name: "Magic Kingdom", 
#               opening_time: '9:00 AM',
#               closing_time: '10:00 PM',
#               image: '/public/magic_kingdom.png'
#             }, {
#               name: "Animal Kingdom", 
#               opening_time: "9:00 AM",
#               closing_time: "10:00 PM",
#               image: "https://cdn7.wdwnt.com/wp-content/uploads/2018/06/Tree-of-Life-the-Stars-990x556.jpg"
#             }]
# parks_to_create.each do |park| 
#   Park.create(park).save 
# end 

# attractions_to_create = [{
#                           park_id: 4,
#                           name: "Flight Of Passage",
#                           status: 0,
#                           image: "http://www.wdwinfo.com/wp-content/uploads/2017/05/AVATAR-Flight-of-Passage.jpg",
#                           anticipated_wait_time: 120
#                         },
#                         {
#                           park_id: 1,
#                           name: "Rock 'n' Roller Coaster Starring Aerosmith",
#                           status: 0, 
#                           image: "https://www.dadsguidetowdw.com/image-files/rnrc1.jpg",
#                           anticipated_wait_time: 100
#                         },
#                         {
#                           park_id: 2,
#                           name: "Soarin' Around the World",
#                           status: 0,
#                           image: "https://i.ytimg.com/vi/sNtzD34nDVI/maxresdefault.jpg",
#                           anticipated_wait_time: 50 
#                         },
#                         {
#                           park_id: 3,
#                           name: "Space Mountain",
#                           status: 0,
#                           image: "http://www.wdw-magazine.com/wp-content/uploads/2014/11/MOUNTAIN-3-WAYNE.jpg",
#                           anticipated_wait_time: 100
#                         }]
# attractions_to_create.each do |attraction| 
#   Attraction.create(attraction) 
# end 

# Trip.create(
#             user_id: 1, 
#             kids_present: false, 
#             max_wait_time: 200
#             )

# Interest.create(trip_id: 1, attraction_id: 5, start_time: Time.zone.parse('2019-06-20 04:15'), duration: 30)

# Ticket.create(park_id: 1, trip_id: 1)

# attractions_to_create = [{
#   park_id: 1, 
#   name: "Toy Story Mania!",
#   status: 0, 
#   image: "https://www.wdwinfo.com/images/toy-story-mania-new-entrance.jpg",
#   anticipated_wait_time: 60
# }, {
#   park_id: 1, 
#   name: "Slinky Dog Dash",
#   status: 0,
#   image: "http://i3.wp.com/mickeyblog.com/wp-content/uploads/2018/07/Slinky-Dog-Dash-Toy-Story-Land-720x340.jpg",
#   anticipated_wait_time: 85
# }
# ]

# attractions_to_create.each { | attraction| Attraction.create(attraction) }

