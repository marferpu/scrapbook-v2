# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# crear 10 st 5 prf 7 parents
# 0->admin     1->teacher    2->parent   3->student

require "open-uri"
puts "Borando datos"


puts "Creando usuarios"
student1 = User.new(first_name: "Ana", last_name: "Ariel", role: 3,
                    email: "ana@email.com", password: "123456")
photo1 = URI.open("https://img.lovepik.com/photo/50169/3941_lovepik-little-student-girl-using-tablet-photo-image_wh860.jpg")
student1.photo.attach(io: photo1, filename: "student1.png", content_type: "image/png")
student1.save
#
student2 = User.new(first_name: "Anai", last_name: "Argel", role: 3,
                    email: "anai@email.com", password: "123456"
                   )
#
photo2 = URI.open("https://previews.123rf.com/images/dolgachov/dolgachov1311/dolgachov131102912/24117616-la-educaci%C3%B3n-y-la-escuela-concepto-una-sonrisa-de-ni%C3%B1a-estudiante-con-el-libro-y-las-gafas-en-el-sue.jpg")
student2.photo.attach(io: photo2, filename: "student2.png", content_type: "image/png")
student2.save
student3 = User.new(first_name: "Hana", last_name: "Argel", role: 3,
                    email: "hana@email.com", password: "123456"
                    )
#
photo3 = URI.open("https://w7.pngwing.com/pngs/51/204/png-transparent-graphy-student-homework-student-hand-people-higher-education.png")
student3.photo.attach(io: photo3, filename: "student3.png", content_type: "image/png")
student3.save
student4 = User.new(first_name: "Carlos", last_name: "Ariel", role: 3,
                    email: "carlos@email.com", password: "123456"
                   )
#
photo4 = URI.open("https://www.clipartmax.com/png/middle/56-568922_good-start-png-school-kid.png")
student4.photo.attach(io: photo4, filename: "student4.png", content_type: "image/png")
student4.save
student5 = User.new(first_name: "Carmen", last_name: "Canus", role: 3,
                    email: "carnus@email.com", password: "123456"
                   )
#
photo5 = URI.open("https://www.clipartmax.com/png/middle/279-2797907_little-boy-ready-for-school-school-children-images-png.png")
student5.photo.attach(io: photo5, filename: "student5.png", content_type: "image/png")
student5.save
student6 = User.new(first_name:"jorge", last_name: "Loro", role: 3,
                    email: "jorge@email.com", password: "123456"
                   )
#
photo6 = URI.open("https://cdn.imgbin.com/1/19/15/imgbin-elementary-school-primary-education-child-school-Y8QBS1uEGNzkuvbhHF1u9spyD.jpg")
student6.photo.attach(io: photo6, filename: "student6.png", content_type: "image/png")
student6.save
student7 = User.new(first_name:"ivan", last_name: "Canus", role: 3,
                    email: "ivan@email.com", password: "123456"
                   )
#
photo7 = URI.open("https://banner2.cleanpng.com/20180409/djq/kisspng-school-uniform-student-pre-school-child-kids-5acb9d2c1f26b5.5950164715232934841276.jpg")
student7.photo.attach(io: photo7, filename: "student7.png", content_type: "image/png")
student7.save
student8 = User.new(first_name:"Dario", last_name: "Loro", role: 3,
                    email: "dadon@email.com", password: "123456"
                    )
#
photo8 = URI.open("https://img2.freepng.es/20180309/kce/kisspng-student-child-learning-course-curriculum-write-the-little-boy-5aa278770b2d76.3165432515205971110458.jpg")
student8.photo.attach(io: photo8, filename: "student8.png", content_type: "image/png")
student8.save
student9 = User.new(first_name:"Carlo", last_name: "Cano", role: 3,
                    email: "carlo@email.com", password: "123456"
                   )
#
photo9 = URI.open("https://previews.123rf.com/images/gelpi/gelpi1109/gelpi110900168/10713308-estudiante-ni%C3%B1o-en-la-escuela-aislado-sobre-fondo-blanco.jpg")
student9.photo.attach(io: photo9, filename: "student9.png", content_type: "image/png")
student9.save
student10 = User.new(first_name:"Camilo", last_name: "Soto", role: 3,
                     email: "cami@email.com", password: "123456"
                    )
#
photo10 = URI.open("https://previews.123rf.com/images/dolgachov/dolgachov1711/dolgachov171101175/89513306-ni%C3%B1o-estudiante-feliz-escribiendo-en-el-cuaderno-en-casa.jpg")
student10.photo.attach(io: photo10, filename: "student10.png", content_type: "image/png")
student10.save
###
profe11 = User.new(first_name:"Dana", last_name: "Soto", role: 1,
                    email: "dana@email.com", password: "123456")
#
photo11 = URI.open("https://infoes.goconqr.com/files/2017/05/mate12.jpg")
profe11.photo.attach(io: photo11, filename: "profe11.png", content_type: "image/png")
profe11.save
profe12 = User.new(first_name:"Sebas", last_name: "Soto", role: 1,
                  email: "sebas@email.com", password: "123456")
#
photo12 = URI.open("https://img.freepik.com/fotos-premium/profesor-explicando-reaccion-quimica-estudiantes-cuando-nino-escuela-mirando-placa-petri-traves-microscopio_274689-15217.jpg?w=826")
profe12.photo.attach(io: photo12, filename: "profe12.png", content_type: "image/png")
profe12.save
profe13 = User.new(first_name:"Carlos", last_name: "Quinto", role: 1,
                    email: "cquinto@email.com", password: "123456")
#
photo13 = URI.open("http://4.bp.blogspot.com/-8gIcMlI1Ttw/VkpwVoEVQPI/AAAAAAAAJp8/qvvyj-Xi-8g/s1600/502760.jpg")
profe13.photo.attach(io: photo13, filename: "profe13.png", content_type: "image/png")
profe13.save
profe14 = User.new(first_name:"Carmen", last_name: "Canos", role: 1,
                  email: "carca@email.com", password: "123456")
#
photo14 = URI.open("https://cdn.techtitute.com/techtitute/cursos/00895718/recursos/contenidos/maestria-online-formaci%C3%B3n-del-profesor-de-f%C3%ADsica-y-qu%C3%ADmica-en-educaci%C3%B3n-secundaria.jpg")
profe14.photo.attach(io: photo14, filename: "profe14.png", content_type: "image/png")
profe14.save
profe15 = User.new(first_name:"Maria", last_name: "Dona", role: 1,
                  email: "dona@email.com", password: "123456")
#
photo15 = URI.open("https://fotografias.lasexta.com/clipping/cmsimages02/2016/04/07/732C634F-9D10-4011-8C7E-2DC2453237FD/58.jpg")
profe15.photo.attach(io: photo15, filename: "profe15.png", content_type: "image/png")
profe15.save
profe16 = User.new(first_name:"jorge", last_name: "Ceballos", role: 1,
                  email: "jorgec2@email.com", password: "123456")
#
photo16 = URI.open("https://thumbs.dreamstime.com/z/padres-que-hablan-para-comunicar-con-el-ni-o-concepto-real-de-la-forma-vida-gente-familia-tres-personas-pap%C3%A1-mam%C3%A1-y-su-hijo-del-153722307.jpg")
profe16.photo.attach(io: photo16, filename: "profe16.png", content_type: "image/png")
profe16.save
profe17 = User.new(first_name:"ivanio", last_name: "Casas", role: 1,
                  email: "ivancasas@email.com", password: "123456")
#
photo17 = URI.open("https://thumbs.dreamstime.com/z/happy-young-adult-mother-cute-child-enjoy-talking-relaxing-sit-sofa-understanding-mom-friend-having-sincere-conversation-164954528.jpg")
profe17.photo.attach(io: photo17, filename: "profe17.png", content_type: "image/png")
profe17.save
##

padre18 = User.new(first_name:"Duvan", last_name: "Ariel", role: 2,
                  email: "dadon@email.com", password: "123456")
#
photo18 = URI.open("https://thumbs.dreamstime.com/z/mom-psychologist-tries-to-talk-upset-african-girl-talking-counseling-offended-american-child-feels-sad-insulted-sulky-136499386.jpg")
padre18.photo.attach(io: photo18, filename: "padre18.png", content_type: "image/png")
padre18.save
padre19 = User.new(first_name:"Juan", last_name: "Cano", role: 2,
                   email: "carlo@email.com", password: "123456")
#
photo19 = URI.open("https://thumbs.dreamstime.com/z/attractive-women-little-girl-sitting-comfortable-couch-home-young-mother-talking-communicates-small-adorable-130567938.jpg")
padre19.photo.attach(io: photo19, filename: "padre19.png", content_type: "image/png")
padre19.save
padre20 = User.new(first_name:"Camila", last_name: "Soto", role: 2,
                   email: "cami@email.com", password: "123456")
#
photo20 = URI.open("https://thumbs.dreamstime.com/z/loving-worried-mom-psychologist-consoling-counseling-talking-to-upset-little-child-girl-showing-care-give-love-support-single-141458546.jpg")
padre20.photo.attach(io: photo20, filename: "padre20.png", content_type: "image/png")
padre20.save
padre21 = User.new(first_name:"Dana", last_name: "Camayo", role: 2,
                  email: "dana@email.com", password: "123456")
#
photo21 = URI.open("https://thumbs.dreamstime.com/z/child-psychologist-talking-to-girl-kid-office-psychology-psychotherapy-professional-counseling-mental-help-children-196931107.jpg")
padre21.photo.attach(io: photo21, filename: "padre21.png", content_type: "image/png")
padre21.save
padre22 = User.new(first_name:"Sebas", last_name: "Loro", role: 2,
                   email: "sebas@email.com", password: "123456")
photo22 = URI.open("https://thumbs.dreamstime.com/z/happy-family-african-american-reunion-smiling-black-dad-holding-talking-to-kid-daughter-caring-mixed-race-father-return-back-home-152761104.jpg")
padre22.photo.attach(io: photo22, filename: "padre22.png", content_type: "image/png")
padre22.save

####
post1 = Post.new(title: "Aeroparque Juan Pablo II", descrption: "Este viernes 21 de octubre nos iremos de excursión al aeroparque Juan pablo II. Deben estar puntuales en el colegio a las 8 AM.
  Recuerden traer vestido de baño y alimentación.", type: "ludico", user_id: profe12.id, grade_id: grade4.id)
documents1 = URI.open("http://colombiamaspositiva.com/wp-content/uploads/2021/03/jp2.jpg")
post1.documents.attach(io: documents1, filename: "documents1.png", content_type: "image/png")
post1.save

post2 = Post.new(title: "Museo El Castillo", descrption: "El lunes 24 de octubre tendremos la salida pedagógica al museo el castillo ubicado en el poblado. Saldremos del colegio a las 9 AM y regresaremos a la 1 PM.
  Recuerden que iremos con uniforme de educación física.", type: "ludico", user_id: profe11.id, grade_id: grade3.id)
documents1 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQYFaQj3EfSdByeXDRq-zXwzjU1LElvBZQjA&usqp=CU")
post2.documents.attach(io: documents2, filename: "documents2.png", content_type: "image/png")
post2.save

post3 = Post.new(title: "Planetario", descrption: "Este miércoles 19 de octubre realizaremos la visita al planetario de medellín. El bus nos recogerá en el colegio a las 8
  AM (estar puntuales). Los estudiantes deben llevar lonchera suficiente, ya que regresaremos a las 12 M al colegio.
  Iremos con uniforme de educación física", type: "ludico", user_id: profe17.id, grade_id: grade2.id)
documents3 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT20qmcnPRhZ8IYBnLJYCYdOqckwLFspDrIhg&usqp=CAU")
post3.documents.attach(io: documents3, filename: "documents3.png", content_type: "image/png")
post3.save

post4 = Post.new(title: "Parque Explora", descrption: "Este miércoles 26 de octubre realizaremos la visita al parque explora de medellín. El bus nos recogerá en el colegio a las 8
  AM (estar puntuales). Los estudiantes deben llevar lonchera suficiente, ya que regresaremos a las 12 M al colegio.
  Iremos con uniforme de educación física", type: "ludico", user_id: profe16.id, grade_id: grade6.id)
documents4 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStOClOWfdhVxORKMqAvU-WWC7B6NZwXS7Wbw&usqp=CAU")
post4.documents.attach(io: documents4, filename: "documents4.png", content_type: "image/png")
post4.save

post5 = Post.new(title: "Jardín botánico", descrption: "El martes 07 de noviembre tendremos la salida pedagógica al jardín botánico de Medellín. Saldremos del colegio a las 9 AM y regresaremos a la 1 PM.
  Recuerden que iremos con uniforme de educación física.", type: "ludico", user_id: profe15.id, grade_id: grade1.id)
documents5 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS30SpMsoxlumiAYPMLtvkQqlwOT-91Ec2x4A&usqp=CAU")
post5.documents.attach(io: documents5, filename: "documents5.png", content_type: "image/png")
post5.save

post6 = Post.new(title: "Taller porcentajes - 7°", descrption: "Teniendo en cuenta los diferentes ejemplos vistos en clase, resolver el taller de manera individual. Fecha máxima de entrega: viernes 21 de octubre.", type: "academico", user_id: profe14.id, grade_id: grade4.id)
documents1 = URI.open("https://colegioconcepcionlosangeles.cl/pdf_2020/guias_2020/17_08_2020/matematica/ma_leiva/7mo-basico-matematica-guia-porcentaje.pdf")
post6.documents.attach(io: documents6, filename: "documents6.png", content_type: "file/pdf")
post6.save

post7 = Post.new(title: "Seres Vivos - 6°", descrption: "Según la clasificación de los seres vivos, resolver el siguiente taller en los grupos previamente organizados en el aula de clase.
  El taller será fundamental para la evaluación de fin de periodo.
  Fecha de entrega: Lunes 31 de octubre.", type: "academico", user_id: profe13.id, grade_id: grade2.id)
documents7 = URI.open("https://www.webcolegios.com/file/241599.pdf")
post7.documents.attach(io: documents7, filename: "documents7.png", content_type: "file/pdf")
post7.save

post8 = Post.new(title: "Capas de la tierra - 5°", descrption: "Realizar el siguiente taller sobre las diferentes capas de la tierra, diligenciarlo con letra legible y ordenada. Seguir detalladamente las instrucciones.
  Fecha de entrega: Jueves 20 de octubre", type: "academico", user_id: profe12.id, grade_id: grade1.id)
documents8 = URI.open("https://www.colegiocolonos.cl/upload/textos/aprendizaje-remoto-6o-basico-9bd49c93a34e2aa722142ca8820954d1.pdf")
post8.documents.attach(io: documents8, filename: "documents8.png", content_type: "file/pdf")
post8.save

post9 = Post.new(title: "Edad media - 8°", descrption: "A partir de las diferentes exposiciones realizadas en clase, resolver el siguiente taller sobre la edad media y el sistema feudal.
  El taller será sustentado de manera oral la próxima clase del 4 de noviembre.", type: "academico", user_id: profe11.id, grade_id: grade3.id)
documents9 = URI.open("https://www.webcolegios.com/file/3f049e.pdf")
post9.documents.attach(io: documents9, filename: "documents9.png", content_type: "file/pdf")
post9.save

post10 = Post.new(title: "Identidades trigonométricas - 10°", descrption: "Teniendo en cuenta las identidades trigonométricas vistas en clase, resolver el taller en las parejas previamente formadas en el aula.
  El taller tendrá un valor del 10% en la nota del la prueba de fin de periodo.
  Fecha de entrega: martes 15 de noviembre.", type: "academico", user_id: profe11.id, grade_id: grade6.id)
documents10 = URI.open("https://eduardomath.files.wordpress.com/2011/01/taller-identidades-trigonometricas1-10c2ba.pdf")
post10.documents.attach(io: documents10, filename: "documents10.png", content_type: "file/pdf")
post10.save

####

grade1 = Grade.new(name: "Quinto")
grade1.save
grade2 = Grade.new(name: "Sexto")
grade2.save
grade3 = Grade.new(name: "Octavo")
grade3.save
grade4 = Grade.new(name: "Septimo")
grade4.save
grade5 = Grade.new(name: "Noveno")
grade5.save
grade6 = Grade.new(name: "Decimo")
grade6.save

###
sub1 = Subject.new(name: "Matematicas")
sub1.save
sub2 = Subject.new(name: "Ciencias naturales")
sub2.save
sub3 = Subject.new(name: "Sociales")
sub3.save
sub4 = Subject.new(name: "Consejería")
sub4.save

###

classroom1 = Classroom.new(user_id: student1.id, grade_id: grade1.id)
classroom1.save
classroom2 = Classroom.new(user_id: student2.id, grade_id: grade1.id)
classroom2.save
classroom3 = Classroom.new(user_id: student3.id, grade_id: grade2.id)
classroom3.save
classroom4 = Classroom.new(user_id: student4.id, grade_id: grade2.id)
classroom4.save
classroom5 = Classroom.new(user_id: student5.id, grade_id: grade3.id)
classroom5.save
classroom6 = Classroom.new(user_id: student6.id, grade_id: grade3.id)
classroom6.save
classroom7 = Classroom.new(user_id: student7.id, grade_id: grade4.id)
classroom7.save
classroom8 = Classroom.new(user_id: student8.id, grade_id: grade4.id)
classroom8.save
classroom9 = Classroom.new(user_id: student9.id, grade_id: grade6.id)
classroom9.save
classroom10 = Classroom.new(user_id: student10.id, grade_id: grade6.id)
classroom10.save

###

g_sub1 = GradeSubject.new(grade_id: grade1.id, subject_id: sub2.id)
g_sub1.save
g_sub2 = GradeSubject.new(grade_id: grade1.id, subject_id: sub4.id)
g_sub2.save
g_sub3 = GradeSubject.new(grade_id: grade2.id, subject_id: sub2.id)
g_sub3.save
g_sub4 = GradeSubject.new(grade_id: grade2.id, subject_id: sub3.id)
g_sub4.save
g_sub5 = GradeSubject.new(grade_id: grade3.id, subject_id: sub3.id)
g_sub5.save
g_sub6 = GradeSubject.new(grade_id: grade3.id, subject_id: sub1.id)
g_sub6.save
g_sub7 = GradeSubject.new(grade_id: grade4.id, subject_id: sub1.id)
g_sub7.save
g_sub8 = GradeSubject.new(grade_id: grade4.id, subject_id: sub4.id)
g_sub8.save
g_sub9 = GradeSubject.new(grade_id: grade6.id, subject_id: sub1.id)
g_sub9.save
g_sub10 = GradeSubject.new(grade_id: grade6.id, subject_id: sub4.id)
g_sub10.save
