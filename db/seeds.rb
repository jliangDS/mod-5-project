Cart.destroy_all
Item.destroy_all
User.destroy_all

User.create( { name: 'josh', password: '1234' })

Item.create( { name: '1000 PIECE JIGSAW PUZZLE', image: 'https://images-na.ssl-images-amazon.com/images/I/81HHTN%2BBlyL._AC_SL1500_.jpg', price: 19.99 })
Item.create( { name: 'ETCH A SKETCH', image: 'https://images-na.ssl-images-amazon.com/images/I/71U0trs1aNL._AC_SL1500_.jpg', price: 21.99 })
Item.create( { name: 'FINGER PAINTING KIT', image: 'https://images-na.ssl-images-amazon.com/images/I/613t0gUxtDL._AC_SL1500_.jpg', price: 15.95 })
Item.create( { name: 'WOODEN TRAIN SET', image: 'https://images-na.ssl-images-amazon.com/images/I/716diTt8SIL._AC_SL1000_.jpg', price: 54.95 })
Item.create( { name: 'WOODEN FIRE ENGINE', image: 'https://images-na.ssl-images-amazon.com/images/I/817vxXg3sEL._AC_SL1500_.jpg', price: 59.99 })
Item.create( { name: 'ROCKING HORSE', image: 'https://images-na.ssl-images-amazon.com/images/I/71C746Jb61L._AC_SL1500_.jpg', price: 78.99 })
Item.create( { name: 'SCRABBLE', image: 'https://images-na.ssl-images-amazon.com/images/I/91DAaXqPkYL._AC_SL1500_.jpg', price: 19.45 })
Item.create( { name: 'STUNT KITE', image: 'https://images-na.ssl-images-amazon.com/images/I/61eJeR7wzJL._AC_SL1500_.jpg', price: 29.99 })
Item.create( { name: 'NERF SUPER SOAKER', image: 'https://images-na.ssl-images-amazon.com/images/I/61qph8gfkML._AC_SL1456_.jpg', price: 29.99 })
Item.create( { name: 'MAGIC WAND', image: 'https://images-na.ssl-images-amazon.com/images/I/51MHNbVWSaL._AC_SL1500_.jpg', price: 9.99 })