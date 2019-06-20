parks_to_create = [{
              name: 'Hollywood Studios', 
              opening_time: '9:00 AM',
              closing_time: '9:00 PM',
              image: 'https://media2.fdncms.com/orlando/imager/u/original/2409999/1000w_disneyhwoodstudios.jpg'
            }, {
              name: "Epcot",
              opening_time: '9:00 AM',
              closing_time: '9:00 PM',
              image: 'https://secure.cdn1.wdpromedia.com/resize/mwImage/1/640/360/75/dam/wdpro-assets/gallery/destinations/epcot/epcot-gallery-00.jpg?1537220971715'
            }, {
              name: "Magic Kingdom", 
              opening_time: '9:00 AM',
              closing_time: '10:00 PM',
              image: '/public/magic_kingdom.png'
            }, {
              name: "Animal Kingdom", 
              opening_time: "9:00 AM",
              closing_time: "10:00 PM",
              image: "https://cdn7.wdwnt.com/wp-content/uploads/2018/06/Tree-of-Life-the-Stars-990x556.jpg"
            }]
parks_to_create.each do |park| 
  Park.create(park).save 
end 
