# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email: "trinityxmontoya@gmail.com", username: "nahsonchilll", password: "jo", profile_photo: "https://dtpmhvbsmffsz.cloudfront.net/users/2013/08/26/521bd70cc3c915438505b211/s_523e4831c3c9153598028324.jpg", bg_photo: "https://c2.staticflickr.com/4/3657/3655415120_fea787fe34.jpg", gender_id: 2)

gender1 = Gender.create(name: "Women's")
gender2 = Gender.create(name: "Men's")

Brand.create(name: "American Apparel")
Brand.create(name: "Patagonia")
Brand.create(name: "Levi's")
Brand.create(name: "Acne")
Brand.create(name: "Dr.Marten's")

category10 = Category.create(name: "Tops", gender_id: gender2.id)
category11 = Category.create(name: "Shorts", gender_id: gender2.id)

category1 = Category.create(name: "Tops", gender_id: gender1.id, icon: "/size-icons/tops.png")

category3 = Category.create(name: "Dresses", gender_id: gender1.id, icon: "/size-icons/dress.png")

category4 = Category.create(name: "Swim" , gender_id: gender1.id, icon: "/size-icons/swim.png")

category5 = Category.create(name: "Outerwear" , gender_id: gender1.id, icon: "/size-icons/outerwear.png")

category6 = Category.create(name: "Professional" , gender_id: gender1.id, icon: "/size-icons/prof.png")

category7 = Category.create(name: "Bottoms" , gender_id: gender1.id, icon: "/size-icons/bottom.png")

category8 = Category.create(name: "Activewear" , gender_id: gender1.id, icon: "/size-icons/activewear.png")

category9 = Category.create(name: "Jeans", gender_id: gender1.id, icon: "/size-icons/jeans.png")

Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 00 (XXS) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 0 (XS) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 2 (XS) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 4 (S) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 6 (S) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 8 (M) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 10 (M) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 12 (L) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " 14 (L) "
)
Size.create(
gender_id: gender1.id,
name: 'Standard',
label: " OS (one size) "
)



Size.create(
gender_id: gender1.id,
name: 'Petite',
label: " Petite 0 (XXS) "
)
Size.create(
gender_id: gender1.id,
name: 'Petite',
label: " Petite 2 (XS) "
)
Size.create(
gender_id: gender1.id,
name: 'Petite',
label: " Petite 4 (S) "
)
Size.create(
gender_id: gender1.id,
name: 'Petite',
label: " Petite 6 (S) "
)
Size.create(
gender_id: gender1.id,
name: 'Petite',
label: " Petite 8 (M) "
)
Size.create(
gender_id: gender1.id,
name: 'Petite',
label: " Petite 10 (M) "
)
Size.create(
gender_id: gender1.id,
name: 'Petite',
label: " Petite 12 (L) "
)
Size.create(
gender_id: gender1.id,
name: 'Petite',
label: " Petite 14 (L) "
)



Size.create(
gender_id: gender1.id,
name: 'Plus',
label: " 16 (XL, Plus 0x) "
)
Size.create(
gender_id: gender1.id,
name: 'Plus',
label: " 18 (XL, Plus 0x) "
)
Size.create(
gender_id: gender1.id,
name: 'Plus',
label: " 20 (Plus 1x) "
)
Size.create(
gender_id: gender1.id,
name: 'Plus',
label: " 22 (Plus 2x) "
)
Size.create(
gender_id: gender1.id,
name: 'Plus',
label: " 24 (Plus 2x) "
)
Size.create(
gender_id: gender1.id,
name: 'Plus',
label: " 26 (Plus 3x) "
)
Size.create(
gender_id: gender1.id,
name: 'Plus',
label: " 28 (Plus 3x) "
)




Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " OS (one size) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 00 (XXS, 24) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 0 (XS, 25) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 2 (XS, 26) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 4 (S, 27) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 6 (S, 28) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 8 (M, 29, 30) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 10 (M, 31) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 12 (L, 32, 33) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard',
label: " 14 (L, 34) "
)



Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Petite',
label: " Petite 0 (XXS) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Petite',
label: " Petite 2 (XS) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Petite',
label: " Petite 4 (S) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Petite',
label: " Petite 6 (S) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Petite',
label: " Petite 8 (M) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Petite',
label: " Petite 10 (M) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Petite',
label: " Petite 12 (L) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Petite',
label: " Petite 14 (L) "
)



Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Plus',
label: " 16 (XL, Plus 0x) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Plus',
label: " 18 (XL, Plus 0x) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Plus',
label: " 20 (Plus 1x) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Plus',
label: " 22 (Plus 2x) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Plus',
label: " 24 (Plus 2x) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Plus',
label: " 26 (Plus 3x) "
)
Size.create(
gender_id: gender1.id,
category_id: category7.id ,
name: 'Plus',
label: " 28 (Plus 3x) "
)






Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 23 (00, XXS) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 24 (0, XS) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 25 (2, XS) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 26 (2, XS) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 27 (4, S) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 28 (4, S) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 29 (6, M) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 30 (6, M) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 31 (6, M) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 32 (8, M) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 33 (10, M) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 34 (12, L) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 35 (14, L) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Standard',
label: " 36 (14, L) "
)



Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Plus',
label: " 16 (XL, Plus 0x) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Plus',
label: " 18 (XL, Plus 0x) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Plus',
label: " 20 (Plus 1x) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Plus',
label: " 22 (Plus 2x) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Plus',
label: " 24 (Plus 2x) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Plus',
label: " 26 (Plus 3x) "
)
Size.create(
gender_id: gender1.id,
category_id: category9.id,
name: 'Plus',
label: " 28 (Plus 3x) "
)
