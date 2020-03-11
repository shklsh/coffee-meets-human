# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: 'alex', age: 20, email: 'alex@hotmail.com')
user2 = User.create(name: 'brian', age: 21, email: 'brian@hotmail.com')
user3 = User.create(name: 'chris', age: 22, email: 'chris@hotmail.com')

post1 = Post.create(user_id: user1.id, name: 'alex', city: 'Sydney', title: 'Hi', content: 'Nice to meet you')
post2 = Post.create(user_id: user2.id, name: 'brian', city: 'Sydney', title: 'Hello', content: 'I am a traveller')
post3 = Post.create(user_id: user3.id, name: 'chris', city: 'Sydney', title: 'Hi', content: 'I love exercise')

comment1 = Comment.create(user_id: user2.id, post_id: post1.id, title: 'reply', content: 'Nice to meet you too')
comment2 = Comment.create(user_id: user1.id, post_id: post3.id, title: 'reply', content: 'I love exercise too')
comment3 = Comment.create(user_id: user3.id, post_id: post2.id, title: 'reply', content: 'I am a traveller too')