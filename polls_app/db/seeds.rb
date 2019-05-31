# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'Luke Skywalker')
user2 = User.create(username: 'Jim Skywalker')
user3 = User.create(username: 'Paul Skywalker')

poll1 = Poll.create(user_id: user1.id, title: 'Star Wars')
poll2 = Poll.create(user_id: user2.id, title: 'Active recors Wars')
poll3 = Poll.create(user_id: user3.id, title: 'Pain to write seeds')
poll4 = Poll.create(user_id: user3.id, title: 'Never do seeds.rb')


question1 = Question.create(poll_id: poll1.id, text: 'Star Wars I')
question3 = Question.create(poll_id: poll3.id, text: 'Star Wars III')
question2 = Question.create(poll_id: poll2.id, text: 'Star Wars II')


ans_choice1 = AnswerChoice.create(question_id: question1.id, text: 'Choice 1 ')
ans_choice2 = AnswerChoice.create(question_id: question1.id, text: 'Choice 2 ')
ans_choice3 = AnswerChoice.create(question_id: question2.id, text: 'Choice 3 ')
ans_choice4 = AnswerChoice.create(question_id: question1.id, text: 'Choice 4 ')


response1 = Response.create(user_id: user2.id, question_id: question1.id, answer_choice_id: ans_choice1.id)
response2 = Response.create(user_id: user2.id, question_id: question3.id, answer_choice_id: ans_choice2.id)
response3 = Response.create(user_id: user2.id, question_id: question2.id, answer_choice_id: ans_choice3.id)
response4 = Response.create(user_id: user3.id, question_id: question2.id, answer_choice_id: ans_choice3.id)

