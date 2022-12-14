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
puts "Borrando datos"
Comment.destroy_all
CourseTeacher.destroy_all
GradeSubject.destroy_all
Classroom.destroy_all
Post.destroy_all
Grade.destroy_all
Subject.destroy_all
User.destroy_all

# user teachers
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
photo13 = URI.open("https://infoes.goconqr.com/files/2017/05/mate12.jpg")
profe13.photo.attach(io: photo13, filename: "admin23.png", content_type: "image/png")
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


# user students
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
photo3 = URI.open("https://previews.123rf.com/images/dolgachov/dolgachov1311/dolgachov131102912/24117616-la-educaci%C3%B3n-y-la-escuela-concepto-una-sonrisa-de-ni%C3%B1a-estudiante-con-el-libro-y-las-gafas-en-el-sue.jpg")
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

# user parents

padre18 = User.new(first_name:"Duvan", last_name: "Ariel", role: 2,
                  email: "dadon2@email.com", password: "123456")

photo18 = URI.open("https://thumbs.dreamstime.com/z/mom-psychologist-tries-to-talk-upset-african-girl-talking-counseling-offended-american-child-feels-sad-insulted-sulky-136499386.jpg")
padre18.photo.attach(io: photo18, filename: "padre18.png", content_type: "image/png")
padre18.save
padre19 = User.new(first_name:"Juan", last_name: "Cano", role: 2,
                  email: "carlos2@email.com", password: "123456")

photo19 = URI.open("https://thumbs.dreamstime.com/z/attractive-women-little-girl-sitting-comfortable-couch-home-young-mother-talking-communicates-small-adorable-130567938.jpg")
padre19.photo.attach(io: photo19, filename: "padre19.png", content_type: "image/png")
padre19.save
padre20 = User.new(first_name:"Camila", last_name: "Soto", role: 2,
                  email: "cami2@email.com", password: "123456")

photo20 = URI.open("https://thumbs.dreamstime.com/z/loving-worried-mom-psychologist-consoling-counseling-talking-to-upset-little-child-girl-showing-care-give-love-support-single-141458546.jpg")
padre20.photo.attach(io: photo20, filename: "padre20.png", content_type: "image/png")
padre20.save
padre21 = User.new(first_name:"Dana", last_name: "Camayo", role: 2,
                  email: "dana2@email.com", password: "123456")

photo21 = URI.open("https://thumbs.dreamstime.com/z/child-psychologist-talking-to-girl-kid-office-psychology-psychotherapy-professional-counseling-mental-help-children-196931107.jpg")
padre21.photo.attach(io: photo21, filename: "padre21.png", content_type: "image/png")
padre21.save
padre22 = User.new(first_name:"Sebas", last_name: "Loro", role: 2,
                  email: "sebas2@email.com", password: "123456")
photo22 = URI.open("https://thumbs.dreamstime.com/z/happy-family-african-american-reunion-smiling-black-dad-holding-talking-to-kid-daughter-caring-mixed-race-father-return-back-home-152761104.jpg")
padre22.photo.attach(io: photo22, filename: "padre22.png", content_type: "image/png")
padre22.save

# user admins
admin23 = User.new(first_name:"Mario", last_name: "Zapata", role: 0,
                  email: "mario@email.com", password: "123456")
#
photo23 = URI.open("http://4.bp.blogspot.com/-8gIcMlI1Ttw/VkpwVoEVQPI/AAAAAAAAJp8/qvvyj-Xi-8g/s1600/502760.jpg")
admin23.photo.attach(io: photo23, filename: "admin23.png", content_type: "image/png")
admin23.save

# subjects

sub1 = Subject.new(name: "Matem??ticas")
sub1.save
sub2 = Subject.new(name: "Ciencias naturales")
sub2.save
sub3 = Subject.new(name: "Sociales")
sub3.save
sub4 = Subject.new(name: "Consejer??a")
sub4.save
sub5 = Subject.new(name: "Lengua castellana")
sub5.save
sub6 = Subject.new(name: "Ingl??s")
sub6.save
sub7 = Subject.new(name: "Art??stica")
sub7.save
sub8 = Subject.new(name: "Educaci??n f??sica")
sub8.save
sub9 = Subject.new(name: "??tica y valores")
sub9.save
sub10 = Subject.new(name: "Filosof??a")
sub10.save

# grades
grade11 = Grade.new(name: "Primero")
grade11.save
grade10 = Grade.new(name: "Segundo")
grade10.save
grade9 = Grade.new(name: "Tercero")
grade9.save
grade8 = Grade.new(name: "Cuarto")
grade8.save
grade1 = Grade.new(name: "Quinto")
grade1.save
grade2 = Grade.new(name: "Sexto")
grade2.save
grade3 = Grade.new(name: "S??ptimo")
grade3.save
grade4 = Grade.new(name: "Octavo")
grade4.save
grade5 = Grade.new(name: "Noveno")
grade5.save
grade6 = Grade.new(name: "D??cimo")
grade6.save
grade7 = Grade.new(name: "Und??cimo")
grade7.save


# posts

post1 = Post.new(title: "Aeroparque Juan Pablo II", description: "Este viernes 21 de octubre nos iremos de excursi??n al aeroparque Juan pablo II. Deben estar puntuales en el colegio a las 8 AM.
  Recuerden traer vestido de ba??o y alimentaci??n.", type_activity: "L??dico", user_id: profe13.id, grade_id: grade4.id, subject_id: sub2.id)
documents1 = URI.open("http://colombiamaspositiva.com/wp-content/uploads/2021/03/jp2.jpg")
post1.documents.attach(io: documents1, filename: "documents1.png", content_type: "image/png")
post1.save

post2 = Post.new(title: "Museo El Castillo", description: "El lunes 24 de octubre tendremos la salida pedag??gica al museo el castillo ubicado en el poblado. Saldremos del colegio a las 9 AM y regresaremos a la 1 PM.
  Recuerden que iremos con uniforme de educaci??n f??sica.", type_activity: "L??dico", user_id: profe13.id, grade_id: grade3.id, subject_id: sub4.id)
documents2 = URI.open("https://pbs.twimg.com/profile_images/1437894208006901763/2w_2cYNA_400x400.jpg")
post2.documents.attach(io: documents2, filename: "documents2.png", content_type: "image/png")
post2.save

post3 = Post.new(title: "Planetario", description: "Este mi??rcoles 19 de octubre realizaremos la visita al planetario de medell??n. El bus nos recoger?? en el colegio a las 8
  AM (estar puntuales). Los estudiantes deben llevar lonchera suficiente, ya que regresaremos a las 12 M al colegio.
  Iremos con uniforme de educaci??n f??sica", type_activity: "L??dico", user_id: profe17.id, grade_id: grade2.id, subject_id: sub2.id)
documents3 = URI.open("https://cr00.epimg.net/radio/imagenes/2019/07/02/medellin/1562018671_803189_1562019244_noticia_normal.jpg")
post3.documents.attach(io: documents3, filename: "documents3.png", content_type: "image/png")
post3.save

post4 = Post.new(title: "Parque Explora", description: "Este mi??rcoles 26 de octubre realizaremos la visita al parque explora de medell??n. El bus nos recoger?? en el colegio a las 8
  AM (estar puntuales). Los estudiantes deben llevar lonchera suficiente, ya que regresaremos a las 12 M al colegio.
  Iremos con uniforme de educaci??n f??sica", type_activity: "L??dico", user_id: profe16.id, grade_id: grade6.id, subject_id: sub4.id)
documents4 = URI.open("https://viajaporcolombia.com/images/parqueexplora.jpg")
post4.documents.attach(io: documents4, filename: "documents4.png", content_type: "image/png")
post4.save

post5 = Post.new(title: "Jard??n bot??nico", description: "El martes 07 de noviembre tendremos la salida pedag??gica al jard??n bot??nico de Medell??n. Saldremos del colegio a las 9 AM y regresaremos a la 1 PM.
  Recuerden que iremos con uniforme de educaci??n f??sica.", type_activity: "L??dico", user_id: profe15.id, grade_id: grade1.id, subject_id: sub3.id)

documents5 = URI.open("https://vivirenelpoblado.com/wp-content/uploads/2020/06/Jard%C3%ADn-Bot%C3%A1nico-Medell%C3%ADn.jpg")
post5.documents.attach(io: documents5, filename: "documents5.png", content_type: "image/png")
post5.save

post6 = Post.new(title: "Taller porcentajes - 7??", description: "Teniendo en cuenta los diferentes ejemplos vistos en clase, resolver el taller de manera individual. Fecha m??xima de entrega: viernes 21 de octubre.", type_activity: "Acad??mico", user_id: profe14.id, grade_id: grade4.id, subject_id: sub1.id)
documents6 = URI.open("https://colegioconcepcionlosangeles.cl/pdf_2020/guias_2020/17_08_2020/matematica/ma_leiva/7mo-basico-matematica-guia-porcentaje.pdf")
post6.documents.attach(io: documents6, filename: "documents6.png", content_type: "file/pdf")
post6.save

post7 = Post.new(title: "Seres Vivos - 6??", description: "Seg??n la clasificaci??n de los seres vivos, resolver el siguiente taller en los grupos previamente organizados en el aula de clase.
  El taller ser?? fundamental para la evaluaci??n de fin de periodo.
  Fecha de entrega: Lunes 31 de octubre.", type_activity: "Acad??mico", user_id: profe11.id, grade_id: grade2.id, subject_id: sub2.id)
documents7 = URI.open("https://www.webcolegios.com/file/241599.pdf")
post7.documents.attach(io: documents7, filename: "documents7.png", content_type: "file/pdf")
post7.save

post8 = Post.new(title: "Capas de la tierra - 5??", description: "Realizar el siguiente taller sobre las diferentes capas de la tierra, diligenciarlo con letra legible y ordenada. Seguir detalladamente las instrucciones.
  Fecha de entrega: Jueves 20 de octubre", type_activity: "Acad??mico", user_id: profe13.id, grade_id: grade1.id, subject_id: sub3.id)
documents8 = URI.open("https://www.colegiocolonos.cl/upload/textos/aprendizaje-remoto-6o-basico-9bd49c93a34e2aa722142ca8820954d1.pdf")
post8.documents.attach(io: documents8, filename: "documents8.png", content_type: "file/pdf")
post8.save

post9 = Post.new(title: "Edad media - 8??", description: "A partir de las diferentes exposiciones realizadas en clase, resolver el siguiente taller sobre la edad media y el sistema feudal.
  El taller ser?? sustentado de manera oral la pr??xima clase del 4 de noviembre.", type_activity: "Acad??mico", user_id: profe13.id, grade_id: grade3.id, subject_id: sub3.id)
documents9 = URI.open("https://www.webcolegios.com/file/3f049e.pdf")
post9.documents.attach(io: documents9, filename: "documents9.png", content_type: "file/pdf")
post9.save

post10 = Post.new(title: "Identidades trigonom??tricas - 10??", description: "Teniendo en cuenta las identidades trigonom??tricas vistas en clase, resolver el taller en las parejas previamente formadas en el aula.
  El taller tendr?? un valor del 10% en la nota del la prueba de fin de periodo.
  Fecha de entrega: martes 15 de noviembre.", type_activity: "Acad??mico", user_id: profe11.id, grade_id: grade6.id, subject_id: sub1.id)
documents10 = URI.open("https://eduardomath.files.wordpress.com/2011/01/taller-identidades-trigonometricas1-10c2ba.pdf")
post10.documents.attach(io: documents10, filename: "documents10.png", content_type: "file/pdf")
post10.save

# classrooms

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

# grade subjects

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

# course teachers

c_tcher1 = CourseTeacher.new(user_id: profe13.id, grade_id: grade4.id)
c_tcher1.save
c_tcher2 = CourseTeacher.new(user_id: profe13.id, grade_id: grade3.id)
c_tcher2.save
c_tcher3 = CourseTeacher.new(user_id: profe13.id, grade_id: grade2.id)
c_tcher3.save
c_tcher4 = CourseTeacher.new(user_id: profe16.id, grade_id: grade6.id)
c_tcher4.save
c_tcher5 = CourseTeacher.new(user_id: profe13.id, grade_id: grade1.id)
c_tcher5.save
c_tcher6 = CourseTeacher.new(user_id: profe14.id, grade_id: grade4.id)
c_tcher6.save
c_tcher7 = CourseTeacher.new(user_id: profe13.id, grade_id: grade2.id)
c_tcher7.save
c_tcher8 = CourseTeacher.new(user_id: profe12.id, grade_id: grade1.id)
c_tcher8.save
c_tcher9 = CourseTeacher.new(user_id: profe11.id, grade_id: grade3.id)
c_tcher9.save
c_tcher10 = CourseTeacher.new(user_id: profe11.id, grade_id: grade6.id)
c_tcher10.save

# comments

comment1 = Comment.new(post_id: post1.id, user_id: profe12.id, content: "??Que tal estuvo el d??a de sol en el @Aeroparque_Juan_Pablo_II?")
comment1.save
comment2 = Comment.new(post_id: post1.id, user_id: padre18.id, content: "Muy caluroso el d??a, estuvo super!")
comment2.save
comment3 = Comment.new(post_id: post4.id, user_id: profe16.id, content: "??Que nos gust?? del @Parque_Explora?")
comment3.save
comment4 = Comment.new(post_id: post4.id, user_id: padre20.id, content: "Qued?? encantado con las nuevas oportunidades para la educaci??n enfocadas a: la ciencia, tecnolog??a e innovaci??n.")
comment4.save
comment5 = Comment.new(post_id: post4.id, user_id: padre22.id, content: "??Grata experiencia visitando el acuario")
comment5.save
