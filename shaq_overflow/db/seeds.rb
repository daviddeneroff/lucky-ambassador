User.create!(username: 'Anna', email: 'aftaberski@gmail.com', password: '123')

User.create!(username: 'Lucas', email: 'lucase@gmail.com', password: '123')

Question.create!(user_id: 1, url: 'http://upload.wikimedia.org/wikipedia/commons/1/13/Rundown_Shack.jpg', title: 'more bacon')

Question.create!(user_id: 1, url: 'http://upload.wikimedia.org/wikipedia/commons/6/6c/Shack_in_Pigeon_Forge,_TN_by_Zachary_Davies.jpg', title: 'thats mr. bacon to you')

Question.create!(user_id: 1, url: 'http://upload.wikimedia.org/wikipedia/commons/9/98/Arvin,_Kern_County,_California._One_in_a_community_of_shacks_in_subdivided_orchard_rented_to_agricul_._._._-_NARA_-_521661.jpg', title: 'aaaaaa')

Answer.create!(question_id: 1, user_id: 1, content: 'NO! I WANT CHICKEN!')

Answer.create!(question_id: 1, user_id: 1, content: 'NO! I WANT CHICKEN!')

Comment.create!(commentable_id: 1, commentable_type: 'Question', content: 'Veggie Bacon')

Comment.create!(commentable_id: 1, commentable_type: 'Answer', content: 'Veggie Bacon')

Vote.create!(votable_id: 1, votable_type: 'Question', user_id: 1, value: 1)

Vote.create!(votable_id: 1, votable_type: 'Answer', user_id: 1, value: 1)

Vote.create!(votable_id: 2, votable_type: 'Answer', user_id: 1, value: 1)

Vote.create!(votable_id: 2, votable_type: 'Question', user_id: 2, value: 1)

Vote.create!(votable_id: 2, votable_type: 'Question', user_id: 1, value: 1)


