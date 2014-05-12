# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# # #
# # # Examples:
# # #
# # #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# # #   Mayor.create(name: 'Emanuel', city: cities.first)
# #
# #
user1 = User.create(email: "trinityxmontoya@gmail.com", username: "nahsonchilll", profile_photo: "https://dtpmhvbsmffsz.cloudfront.net/users/2013/08/26/521bd70cc3c915438505b211/s_523e4831c3c9153598028324.jpg", bg_photo: "https://c2.staticflickr.com/4/3657/3655415120_fea787fe34.jpg", gender_id: 2)
#
gender1 = Gender.create(name: "Women's")
gender2 = Gender.create(name: "Men's")
#
brand1=Brand.create(name: "American Apparel")
brand2=Brand.create(name: "Patagonia")
brand3=Brand.create(name: "Levi's")
brand4=Brand.create(name: "Acne")
brand5=Brand.create(name: "Dr.Marten's")

category10 = Category.create(name: "Tops", gender_id: gender2.id)
category11 = Category.create(name: "Shorts", gender_id: gender2.id)
#
category1 = Category.create(name: "Tops", gender_id: gender1.id, icon: "size-icons/tops.svg")

category3 = Category.create(name: "Dresses", gender_id: gender1.id, icon: "size-icons/dress.svg")

category4 = Category.create(name: "Swim" , gender_id: gender1.id, icon: "size-icons/swim.svg")

category5 = Category.create(name: "Outerwear" , gender_id: gender1.id, icon: "size-icons/outerwear.svg")

category6 = Category.create(name: "Professional" , gender_id: gender1.id, icon: "size-icons/prof.svg")

category7 = Category.create(name: "Bottoms" , gender_id: gender1.id, icon: "size-icons/bottom.svg")

category8 = Category.create(name: "Activewear" , gender_id: gender1.id, icon: "size-icons/activewear.svg")

category9 = Category.create(name: "Jeans", gender_id: gender1.id, icon: "size-icons/jeans.svg")
#
size1=Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 00 (XXS) "
)
size2=Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 0 (XS) "
)
size3=Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 2 (XS) "
)
size4=Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 4 (S) "
)
size5=Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 6 (S) "
)
size6=Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 8 (M) "
)
Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 10 (M) "
)
Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 12 (L) "
)
Size.create( gender_id: gender1.id,
name: 'Standard',
label: " 14 (L) "
)
Size.create( gender_id: gender1.id,
name: 'Standard',
label: " OS (one size) "
)



Size.create( gender_id: gender1.id,
name: 'Petite',
label: " Petite 0 (XXS) "
)
Size.create( gender_id: gender1.id,
name: 'Petite',
label: " Petite 2 (XS) "
)
Size.create( gender_id: gender1.id,
name: 'Petite',
label: " Petite 4 (S) "
)
Size.create( gender_id: gender1.id,
name: 'Petite',
label: " Petite 6 (S) "
)
Size.create( gender_id: gender1.id,
name: 'Petite',
label: " Petite 8 (M) "
)
Size.create( gender_id: gender1.id,
name: 'Petite',
label: " Petite 10 (M) "
)
Size.create( gender_id: gender1.id,
name: 'Petite',
label: " Petite 12 (L) "
)
Size.create( gender_id: gender1.id,
name: 'Petite',
label: " Petite 14 (L) "
)



Size.create( gender_id: gender1.id,
name: 'Plus',
label: " 16 (XL, Plus 0x) "
)
Size.create( gender_id: gender1.id,
name: 'Plus',
label: " 18 (XL, Plus 0x) "
)
Size.create( gender_id: gender1.id,
name: 'Plus',
label: " 20 (Plus 1x) "
)
Size.create( gender_id: gender1.id,
name: 'Plus',
label: " 22 (Plus 2x) "
)
Size.create( gender_id: gender1.id,
name: 'Plus',
label: " 24 (Plus 2x) "
)
Size.create( gender_id: gender1.id,
name: 'Plus',
label: " 26 (Plus 3x) "
)
Size.create( gender_id: gender1.id,
name: 'Plus',
label: " 28 (Plus 3x) "
)




Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " OS (one size) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 00 (XXS, 24) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 0 (XS, 25) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 2 (XS, 26) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 4 (S, 27) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 6 (S, 28) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 8 (M, 29, 30) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 10 (M, 31) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 12 (L, 32, 33) "
)
Size.create( gender_id: gender1.id,
category_id: category7.id ,
name: 'Standard-Bottoms',
label: " 14 (L, 34) "
)

Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 23 (00, XXS) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 24 (0, XS) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 25 (2, XS) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 26 (2, XS) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 27 (4, S) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 28 (4, S) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 29 (6, M) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 30 (6, M) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 31 (6, M) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 32 (8, M) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 33 (10, M) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 34 (12, L) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 35 (14, L) "
)
Size.create( gender_id: gender1.id,
category_id: category9.id,
name: 'Standard-Jeans',
label: " 36 (14, L) "
)

# Listing.create(
#   user_id: user1.id ,
#   brand_id: brand1.id ,
#   category_id: category1.id ,
#   size_id: size1.id,
#   gender_id: gender1.id,
#   title: "short shorts" ,
#   description: "buy em" ,
#   original_price: 80,
#   price: 65,
#   status: "unsold" ,
#   condition: "New with Tags"
# )
#
# Listing.create(
#   user_id: user1.id ,
#   brand_id: brand1.id ,
#   category_id: category3.id ,
#   size_id: size3.id,
#   gender_id: gender1.id,
#   title: "short shorts" ,
#   description: "buy em" ,
#   original_price: 100,
#   price: 35,
#   status: "unsold" ,
#   condition: "New without tags"
# )
#
# Listing.create(
#   user_id: user1.id ,
#   brand_id: brand2.id ,
#   category_id: category4.id ,
#   size_id: size6.id,
#   gender_id: gender1.id,
#   title: "short shorts" ,
#   description: "buy em" ,
#   original_price: 40,
#   price: 15,
#   status: "unsold" ,
#   condition: "Like new"
# )
