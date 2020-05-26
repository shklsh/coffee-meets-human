# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'alex', email: 'alex@email.com', password_digest: Password.create('password'))
user2 = User.create(username: 'brian', email: 'brian@email.com', password_digest: Password.create('password'))

post1 = Post.create(user_id: user1.id, title: 'Hello', content: 'Nice to meet you')
post2 = Post.create(user_id: user2.id, title: 'Hello', content: 'I am a traveller')

comment1 = Comment.create(user_id: user2.id, post_id: post1.id, title: 'reply', content: 'Nice to meet you too')
comment2 = Comment.create(user_id: user1.id, post_id: post2.id, title: 'reply', content: 'I am a traveller too')
