Cart.destroy_all
Item.destroy_all
User.destroy_all

User.create( { name: 'josh', password: '1234' })


Item.create( { name: '1200 PIECE JIGSAW PUZZLE', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 19.99 })
Item.create( { name: 'ETCH A SKETCH', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 21.99 })
Item.create( { name: 'FINGER PAINTING KIT', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 15.95 })
Item.create( { name: 'WOODEN TRAIN SET', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 54.95 })
Item.create( { name: 'WOODEN FIRE ENGINE', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 59.99 })
Item.create( { name: 'ROCKING HORSE', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 78.99 })
Item.create( { name: 'SCRABBLE', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 19.45 })
Item.create( { name: 'STUNT KITE', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 29.99 })
Item.create( { name: 'NERF SUPER SOAKER', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 29.99 })
Item.create( { name: 'MAGIC WAND', image: 'https://react.semantic-ui.com/images/wireframe/image.png', price: 9.99 })