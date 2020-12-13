# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all()
Routine.destroy_all()
WorkoutRoutineObj.destroy_all()
Workout.destroy_all()

user1=User.create(username: 'muscleguy', password:'abc123', email:'muscleguy@aol.com')
user2=User.create(username: 'allpainnogain', password:'abc123', email:'allpainnogain@hotmail.com')
user3=User.create(username: 'nick', password:'abc123', email:'nick@aol.com')
user4=User.create(username: 'owlerytip', password:'abc123', email:'owlerytip@aol.com')
user5=User.create(username: 'marmitecharge', password:'abc123', email:'marmitecharge@aol.com')

routine1=Routine.create(name:"cardio", user: user3, difficulty:3)
routine2=Routine.create(name:"bulking", user: user5, difficulty:5)
routine3=Routine.create(name:"weight", user: user1, difficulty:2)
routine4=Routine.create(name:"cardio", user: user4, difficulty:3)

workout1=Workout.create(name:'squats', description:'is the most basic strength exercise in weightlifting, and one of the most commonly used exercises other than the competition lifts. Execution. Place the barbell behind your neck—retract your shoulder blades tightly and rest the bar in the meat of your upper traps.', image:'https://myfamilychiropractor.com.au/wp-content/uploads/2015/04/squats.png', video_url:'https://www.youtube.com/watch?v=QmZAiBqPvZw&ab_channel=CrossFit%C2%AE')
workout2=Workout.create(name:'bench press', description:'an upper-body weight training exercise in which the trainee presses a weight upwards while lying on a weight training bench', image:'https://cdn2.coachmag.co.uk/sites/coachmag/files/styles/insert_main_wide_image/public/2016/07/1-1-bench-press.jpg?itok=bJYGPFGO', video_url:'https://www.youtube.com/watch?v=XSza8hVTlmM&ab_channel=CrossFit%C2%AE')
workout3=Workout.create(name:'pull-up', description:'an upper-body strength exercise. The pull-up is a closed-chain movement where the body is suspended by the hands and pulls up. As this happens, the elbows flex and the shoulders adduct and extend to bring the elbows to the torso.', image:'https://www.journalmenu.com/wp-content/uploads/2017/11/pull-up-training-description-and-execution.jpg', video_url:'https://www.youtube.com/watch?v=iUNoLR0pYjY&ab_channel=Passion4Profession')
workout4=Workout.create(name:'push up', description:'conditioning exercise performed in a prone position by raising and lowering the body with the straightening and bending of the arms while keeping the back straight and supporting the body on the hands and toes.', image:'https://cdn.prod.openfit.com/uploads/2017/06/01150749/how-to-get-better-at-push-ups2.jpg', video_url:'https://www.youtube.com/watch?v=_l3ySVKYVJ8&ab_channel=CrossFit%C2%AE')
workout5=Workout.create(name:'jump rope', description:'The activity, game or exercise in which a person must jump, bounce or skip repeatedly while a length of rope is swung over and under, both ends held in the hands of the jumper, or alternately, held by two other participants.', image:'https://www.mensjournal.com/wp-content/uploads/mf/101-best-workouts-the-best-jump-rope-workout-3.jpg', video_url:'https://www.youtube.com/watch?v=u3zgHI8QnqE&ab_channel=Well%2BGood')
workout6=Workout.create(name:'front squat', description:'The Front Squat is a lower-body exercise that will strengthen your legs and hips, particularly your quads (thigh muscles) and glutes (butt muscles). Front Squats are similar to Back Squats, however the barbell is placed across the front side of your shoulders instead of your upper back', image:'https://i.ytimg.com/vi/uYumuL_G_V0/maxresdefault.jpg', video_url:'https://www.youtube.com/watch?v=uYumuL_G_V0&ab_channel=CrossFit%C2%AE')
workout7=Workout.create(name:'deadlift', description:'a weight training exercise in which a loaded barbell or bar is lifted off the ground to the level of the hips, torso perpendicular to the floor, before being placed back on the ground. It is one of the three powerlifting exercises, along with the squat and bench press.', image:'https://www.journalmenu.com/wp-content/uploads/2017/11/deadlift-training-description-and-execution.jpg', video_url:'https://www.youtube.com/watch?v=op9kVnSso6Q&ab_channel=CrossFit%C2%AE')
workout8=Workout.create(name:'overhead press', description:'increases strength throughout the shoulders and engages the core for stability. 1﻿ It can be done in either a sitting or standing position, and with dumbbells held horizontally at the shoulders or rotated in a hammer grip. ... You can use this exercise in any upper body strength workout.', image:'https://www.crossfit.com/wp-content/uploads/2019/01/17110721/Julie-collage1.jpg', video_url:'https://www.youtube.com/watch?v=5yWaNOvgFCM&feature=emb_title&ab_channel=CrossFit%C2%AE')
workout9=Workout.create(name:'jumping jacks', description:'physical jumping exercise performed by jumping to a position with the legs spread wide and the hands going overhead, sometimes in a clap, and then returning to a position with the feet together and the arms at the sides', image:'https://www.spotebi.com/wp-content/uploads/2014/10/jumping-jacks-exercise-illustration.jpg', video_url:'https://www.youtube.com/watch?v=1b98WrRrmUs&ab_channel=WahooFitness')
workout10=Workout.create(name:'lunges', description:'a single-leg bodyweight exercise that works your hips, glutes, quads, hamstrings, and core and the hard-to-reach muscles of your inner thighs. Lunges can help you develop lower-body strength and endurance.', image:'https://1.bp.blogspot.com/-lpb98BCGLJg/Tqq42H8AeSI/AAAAAAAAAYg/wjHmuog8vd8/s1600/Walking-lunges.png', video_url:'https://www.youtube.com/watch?v=qsxDeWK6QyI&ab_channel=TrifocusFitnessAcademy')

wro1=WorkoutRoutineObj.create(workout:workout4, routine: routine1, reps:5)
wro2=WorkoutRoutineObj.create(workout:workout6, routine:routine2, reps:5)
wro3=WorkoutRoutineObj.create(workout:workout2, routine:routine3, reps:5)
wro4=WorkoutRoutineObj.create(workout:workout9, routine:routine1, reps:5)
wro5=WorkoutRoutineObj.create(workout:workout10, routine:routine2, reps:5)
wro6=WorkoutRoutineObj.create(workout:workout1, routine:routine3, reps:5)
wro7=WorkoutRoutineObj.create(workout:workout3, routine:routine2, reps:5)
wro8=WorkoutRoutineObj.create(workout:workout4, routine:routine3, reps:5)