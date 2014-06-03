# # # # This file should contain all the record creation needed to seed the database with its default values.
# # # # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# # # #
# # # # Examples:
# # # #
# # # #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# # # #   Mayor.create(name: 'Emanuel', city: cities.first)
# # #
# # #
#
gender1 = Gender.create(name: "Female")
gender2 = Gender.create(name: "Male")
#
user1 = User.create(email: "trinityxmontoya@gmail.com", username: "nahsonchilll", profile_photo: "https://dtpmhvbsmffsz.cloudfront.net/users/2013/08/26/521bd70cc3c915438505b211/s_523e4831c3c9153598028324.jpg", bg_photo: "https://c2.staticflickr.com/4/3657/3655415120_fea787fe34.jpg", gender_id: 2)

brand1=Brand.create(name: "American Apparel")
brand2=Brand.create(name: "Patagonia")
brand3=Brand.create(name: "Levi's")
brand4=Brand.create(name: "Acne")
brand5=Brand.create(name: "Dr.Marten's")

Category.create(name: "Shirts", gender_id: 2, icon: 'size-icons/mens-tops.svg')
Category.create(name: "Dress Shirts", gender_id: 2, icon: 'size-icons/men-prof.png')
Category.create(name: "Pants", gender_id: 2, icon: 'size-icons/men-pants.svg')
Category.create(name: "Jeans", gender_id: 2, icon: 'size-icons/mens-jeans.svg')
Category.create(name: "Outerwear", gender_id: 2, icon: 'size-icons/mens-outwear.svg')

category1 = Category.create(name: "Tops", gender_id: gender1.id, icon: "size-icons/tops.png")

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

Listing.create(
  user_id: user1.id ,
  brand_id: brand1.id ,
  category_id: category1.id ,
  size_id: size1.id,
  gender_id: gender1.id,
  title: "short shorts" ,
  description: "buy em" ,
  original_price: 80,
  price: 65,
  status: "unsold" ,
  condition: "New with Tags"
)
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


Brand.create(name:"1 Madison")
Brand.create(name:"10 Crosby Derek Lam")
Brand.create(name:"1154 Lill Studio")
Brand.create(name:"1803")
Brand.create(name:"1921 Jeans")
Brand.create(name:"1928")
Brand.create(name:"2 B Rych")
Brand.create(name:"2 Be Bride")
Brand.create(name:"212 Collection")
Brand.create(name:"213 Industry")
Brand.create(name:"24K Hollywood")
Brand.create(name:"2B bebe")
Brand.create(name:"2B Free")
Brand.create(name:"2B Wet")
Brand.create(name:"2Cute")
Brand.create(name:"3 Sisters")
Brand.create(name:"3.1 Phillip Lim")
Brand.create(name:"360 Sweater")
Brand.create(name:"3n2")
Brand.create(name:"5/48")
Brand.create(name:"525 America")
Brand.create(name:"579")
Brand.create(name:"6 Degrees")
Brand.create(name:"6126")
Brand.create(name:"7 Diamonds")
Brand.create(name:"7 For All Mankind")
Brand.create(name:"A Bathing Ape")
Brand.create(name:"A N V E")
Brand.create(name:"A Pea In The Pod")
Brand.create(name:"A'gaci")
Brand.create(name:"A. Byer")
Brand.create(name:"A. Giannetti")
Brand.create(name:"A. Marinelli")
Brand.create(name:"A. Testoni")
Brand.create(name:"A.B.S. by Allen Schwartz")
Brand.create(name:"A.J. Bari")
Brand.create(name:"A.L.C.")
Brand.create(name:"A.N.A. a new approach")
Brand.create(name:"A.N.A. Jeans")
Brand.create(name:"A.P.C.")
Brand.create(name:"A/X Armani Exchange")
Brand.create(name:"AB Dear")
Brand.create(name:"AB Studio")
Brand.create(name:"Abas")
Brand.create(name:"Abbey Dawn by Avril Lavigne")
Brand.create(name:"Abercrombie & Fitch")
Brand.create(name:"abft")
Brand.create(name:"Abi Ferrin")
Brand.create(name:"Abington")
Brand.create(name:"about")
Brand.create(name:"Absolute")
Brand.create(name:"Acne")
Brand.create(name:"Action Eyewear")
Brand.create(name:"Active Basic")
Brand.create(name:"Adagio-Bella")
Brand.create(name:"ADAM")
Brand.create(name:"Adele Wechsler")
Brand.create(name:"Adele Wechsler Eco Couture")
Brand.create(name:"Adele Weschler")
Brand.create(name:"Adidas")
Brand.create(name:"Adidas By Stella McCartney")
Brand.create(name:"Adina Mills Design")
Brand.create(name:"Adiva")
Brand.create(name:"Adler Collection")
Brand.create(name:"Adolfo")
Brand.create(name:"Adore")
Brand.create(name:"Adrianna Papell")
Brand.create(name:"Adrienne Landau")
Brand.create(name:"Adrienne Vittadini")
Brand.create(name:"Aerie")
Brand.create(name:"Aeropostale")
Brand.create(name:"Aeros by Kristen Blake")
Brand.create(name:"Aerosoles")
Brand.create(name:"Affliction")
Brand.create(name:"AFRO-FUSION")
Brand.create(name:"After Midnight")
Brand.create(name:"After Six")
Brand.create(name:"Aftershock London")
Brand.create(name:"AG Adriano Goldschmied")
Brand.create(name:"Agatha Brown")
Brand.create(name:"AGB")
Brand.create(name:"Agenda")
Brand.create(name:"Agent Provocateur")
Brand.create(name:"agnes b.")
Brand.create(name:"Agnona")
Brand.create(name:"Aidan Mattox")
Brand.create(name:"AIKO")
Brand.create(name:"Ailin")
Brand.create(name:"Aire Barcelona")
Brand.create(name:"Airstep")
Brand.create(name:"Airwalk")
Brand.create(name:"AJ Leather")
Brand.create(name:"AK Anne Klein")
Brand.create(name:"AKDMKS")
Brand.create(name:"Akiko")
Brand.create(name:"Akira")
Brand.create(name:"Akris")
Brand.create(name:"Akris Punto")
Brand.create(name:"Akualani")
Brand.create(name:"Alachka")
Brand.create(name:"Albert Nipon")
Brand.create(name:"Albert Weiss")
Brand.create(name:"Alberta Ferretti")
Brand.create(name:"Alberto Makali")
Brand.create(name:"Aldo")
Brand.create(name:"Alejandro Ingelmo")
Brand.create(name:"Alessandro Dell'Acqua")
Brand.create(name:"Alex & Ava")
Brand.create(name:"Alex and Ani")
Brand.create(name:"Alex Evenings")
Brand.create(name:"Alex Marie")
Brand.create(name:"Alexa Boutani")
Brand.create(name:"Alexander McQueen")
Brand.create(name:"Alexander Sosebee")
Brand.create(name:"Alexander Wang")
Brand.create(name:"Alexandra Bartlett")
Brand.create(name:"Alexandre Birman")
Brand.create(name:"Alexia Admor")
Brand.create(name:"Alexia Designs")
Brand.create(name:"Alexis Bittar")
Brand.create(name:"Alexis Hudson")
Brand.create(name:"ALFANI")
Brand.create(name:"Alfred Angelo")
Brand.create(name:"Alfred Dunhill")
Brand.create(name:"Alfred Dunner")
Brand.create(name:"Alfred Sung")
Brand.create(name:"Ali & Kris")
Brand.create(name:"Ali Ro")
Brand.create(name:"Alice & Trixie")
Brand.create(name:"Alice + Olivia")
Brand.create(name:"ALICE by Temperley")
Brand.create(name:"Alice Padrul")
Brand.create(name:"Alisa Benay")
Brand.create(name:"Alise Marie")
Brand.create(name:"Alisha Hill")
Brand.create(name:"Alita Graham for Kleinfeld")
Brand.create(name:"Alix & Kelly")
Brand.create(name:"Aliza Outerwear Inc.")
Brand.create(name:"All Around Fem")
Brand.create(name:"All Saints")
Brand.create(name:"All That Jazz")
Brand.create(name:"Allegra Hicks")
Brand.create(name:"allen allen")
Brand.create(name:"Allen Schwartz")
Brand.create(name:"Alliage Paris")
Brand.create(name:"Allie Cat")
Brand.create(name:"Allison Brittney")
Brand.create(name:"Allison Daley")
Brand.create(name:"Allison Taylor")
Brand.create(name:"Alloy")
Brand.create(name:"Allure")
Brand.create(name:"Allure Bridals")
Brand.create(name:"Allure Bridesmaids")
Brand.create(name:"Allyson Whitmore")
Brand.create(name:"Almost Famous")
Brand.create(name:"Alorna")
Brand.create(name:"Alphabet")
Brand.create(name:"Alpine stars")
Brand.create(name:"Also")
Brand.create(name:"Alta Moda Firenze")
Brand.create(name:"Alternative Apparel")
Brand.create(name:"Alviero Martini")
Brand.create(name:"Alvina Valenta")
Brand.create(name:"Alyce Designs")
Brand.create(name:"Alyn Paige")
Brand.create(name:"Alyssa")
Brand.create(name:"Alythea")
Brand.create(name:"Alyx")
Brand.create(name:"Amalia Carrara")
Brand.create(name:"Amanda")
Brand.create(name:"Amanda Smith")
Brand.create(name:"Amante Jewelers")
Brand.create(name:"Amber Sun")
Brand.create(name:"Ambiance Apparel")
Brand.create(name:"Ambition")
Brand.create(name:"Ambrielle")
Brand.create(name:"Amelia")
Brand.create(name:"American Apparel")
Brand.create(name:"American Base")
Brand.create(name:"American Dream")
Brand.create(name:"American Eagle Outfitters")
Brand.create(name:"American Glamour Badgley Mischka")
Brand.create(name:"American Living")
Brand.create(name:"American Rag")
Brand.create(name:"American Star")
Brand.create(name:"American Vintage")
Brand.create(name:"American West")
Brand.create(name:"Americana")
Brand.create(name:"AMI")
Brand.create(name:"Amor")
Brand.create(name:"Amrita Singh")
Brand.create(name:"Amsale")
Brand.create(name:"Amy Kuschel")
Brand.create(name:"Amy Michelson")
Brand.create(name:"AMYCLAIRE")
Brand.create(name:"Anage")
Brand.create(name:"Analili")
Brand.create(name:"Anarchy Eyewear")
Brand.create(name:"Anastasia Beverly Hills")
Brand.create(name:"Anchor Blue")
Brand.create(name:"Andara")
Brand.create(name:"Andre Assous")
Brand.create(name:"Andre Oliver")
Brand.create(name:"Andrea")
Brand.create(name:"Andrea Behar")
Brand.create(name:"Andrea Candela")
Brand.create(name:"Andrea Corson")
Brand.create(name:"Andrea Jovine")
Brand.create(name:"Andrea Polizzi")
Brand.create(name:"Andreana")
Brand.create(name:"Andree")
Brand.create(name:"Andrew Geller")
Brand.create(name:"Andrew Marc")
Brand.create(name:"Andy The-Anh")
Brand.create(name:"Angel by Thierry Mugler")
Brand.create(name:"Angel Kiss")
Brand.create(name:"Angel Sanchez")
Brand.create(name:"Angel Wings")
Brand.create(name:"angela adams")
Brand.create(name:"Angela Nuran")
Brand.create(name:"Angeliana")
Brand.create(name:"Angelina")
Brand.create(name:"Angels")
Brand.create(name:"Angie")
Brand.create(name:"Anjolique")
Brand.create(name:"Anjum")
Brand.create(name:"Anlo")
Brand.create(name:"AnM")
Brand.create(name:"Ann Demeulemeester")
Brand.create(name:"Ann Ferriday")
Brand.create(name:"Ann Marino")
Brand.create(name:"Ann Taylor")
Brand.create(name:"Ann Taylor LOFT")
Brand.create(name:"Ann Tjian for KENAR")
Brand.create(name:"Anna And Frank")
Brand.create(name:"Anna Beck")
Brand.create(name:"Anna Molinari")
Brand.create(name:"Anna Rita N")
Brand.create(name:"Anna Sui")
Brand.create(name:"Annabelle")
Brand.create(name:"Anne Barge")
Brand.create(name:"Anne Carson")
Brand.create(name:"Anne Cole")
Brand.create(name:"Anne Fontaine")
Brand.create(name:"Anne Klein")
Brand.create(name:"Anne Klein for Calderon")
Brand.create(name:"Anne Klein New York")
Brand.create(name:"Anne Michelle")
Brand.create(name:"Anne Namba Designs")
Brand.create(name:"Anni Kuan")
Brand.create(name:"Annie")
Brand.create(name:"Anoname")
Brand.create(name:"Anouk")
Brand.create(name:"Ansonia Bridal")
Brand.create(name:"Anthropologie")
Brand.create(name:"Antica Farmacista")
Brand.create(name:"Antigua")
Brand.create(name:"Antik Batik")
Brand.create(name:"Antik Denim")
Brand.create(name:"Antilia Femme")
Brand.create(name:"Antonio Melani")
Brand.create(name:"Antthony")
Brand.create(name:"Anya Hindmarch")
Brand.create(name:"AOA Apparel")
Brand.create(name:"Apartment 9")
Brand.create(name:"Apepazza")
Brand.create(name:"Apostrophe")
Brand.create(name:"Apparel Etc.")
Brand.create(name:"Apparenza")
Brand.create(name:"Apple Bottom")
Brand.create(name:"Appleseed's")
Brand.create(name:"Appraisal")
Brand.create(name:"April Cornell")
Brand.create(name:"Apt. 9")
Brand.create(name:"Aqua")
Brand.create(name:"Aqua Blues")
Brand.create(name:"Aquatalia by Marvin K")
Brand.create(name:"Arbor")
Brand.create(name:"Arcadia")
Brand.create(name:"Arcopedico")
Brand.create(name:"Arctix")
Brand.create(name:"Arden B")
Brand.create(name:"Area")
Brand.create(name:"Arena")
Brand.create(name:"Argenti")
Brand.create(name:"Argento Vivo")
Brand.create(name:"Argiriou")
Brand.create(name:"Aria")
Brand.create(name:"Arianna")
Brand.create(name:"Arianna by Rachel Kaye")
Brand.create(name:"Arianne")
Brand.create(name:"Ariat")
Brand.create(name:"Ariella")
Brand.create(name:"Aristophanes ")
Brand.create(name:"Arizona Jean Company")
Brand.create(name:"Ark & Co.")
Brand.create(name:"Armand Diradourian")
Brand.create(name:"Armand Ventilo")
Brand.create(name:"Armani")
Brand.create(name:"Armani Collezioni")
Brand.create(name:"Armani Exchange")
Brand.create(name:"Armina Maternity")
Brand.create(name:"Arnold Constable Fifth Avenue")
Brand.create(name:"Arnold Palmer")
Brand.create(name:"Arrow")
Brand.create(name:"Art and Soul")
Brand.create(name:"Arthur S. Levine")
Brand.create(name:"Artistic Palace")
Brand.create(name:"Arturo Chiang")
Brand.create(name:"ARyanDesign")
Brand.create(name:"Aryeh")
Brand.create(name:"Aryn K.")
Brand.create(name:"As U Wish")
Brand.create(name:"Ash")
Brand.create(name:"Ashear")
Brand.create(name:"Ashley By 26 International")
Brand.create(name:"Ashley Jordan")
Brand.create(name:"Ashley Scott")
Brand.create(name:"Ashley Stewart")
Brand.create(name:"Ashneil")
Brand.create(name:"Ashro")
Brand.create(name:"Ashworth")
Brand.create(name:"Asics")
Brand.create(name:"ASOS")
Brand.create(name:"Aspeed Designs")
Brand.create(name:"Atelier")
Brand.create(name:"Atelier Aimee")
Brand.create(name:"Athena Alexander")
Brand.create(name:"Athleta")
Brand.create(name:"Athletic Works")
Brand.create(name:"Atomic")
Brand.create(name:"Atrium")
Brand.create(name:"Attention")
Brand.create(name:"Attilio Giusti Leombruni")
Brand.create(name:"Aubade")
Brand.create(name:"Aubin & Wills")
Brand.create(name:"Audley")
Brand.create(name:"Audrey")
Brand.create(name:"Audrey 3+1")
Brand.create(name:"Audrey Ann")
Brand.create(name:"Audrey Brooke")
Brand.create(name:"Audrey Hart")
Brand.create(name:"August Max Woman")
Brand.create(name:"August Silk")
Brand.create(name:"Augusta")
Brand.create(name:"Augusta Jones")
Brand.create(name:"Aunt Wanda")
Brand.create(name:"Aurielle Carryland")
Brand.create(name:"Austin Reed")
Brand.create(name:"Authentic Icon")
Brand.create(name:"Autograph")
Brand.create(name:"Autumn Cashmere")
Brand.create(name:"Autumn Haze")
Brand.create(name:"Avani")
Brand.create(name:"Avanti")
Brand.create(name:"Avanti Designs")
Brand.create(name:"Avatar")
Brand.create(name:"Avenue")
Brand.create(name:"Avia")
Brand.create(name:"Aviator Nation")
Brand.create(name:"Avon")
Brand.create(name:"Awake Couture")
Brand.create(name:"Axcess")
Brand.create(name:"Axxess")
Brand.create(name:"Azaleia")
Brand.create(name:"AZI Jeans")
Brand.create(name:"Azteca")

Brand.create(name:"b + ab")
Brand.create(name:"B Brian Atwood")
Brand.create(name:"B Design")
Brand.create(name:"B Sharp")
Brand.create(name:"B&D")
Brand.create(name:"B'jewel")
Brand.create(name:"B. Bennett for A.S.L.")
Brand.create(name:"B. Darlin")
Brand.create(name:"B. Makowsky")
Brand.create(name:"B. Moss")
Brand.create(name:"B. Smart")
Brand.create(name:"B.L.E.U.")
Brand.create(name:"B.U.M.")
Brand.create(name:"B2")
Brand.create(name:"Baar & Beards")
Brand.create(name:"BABEE D")
Brand.create(name:"Baby & Me")
Brand.create(name:"Baby Phat")
Brand.create(name:"Baccini")
Brand.create(name:"Badgley Mischka")
Brand.create(name:"Bagatelle")
Brand.create(name:"Baggallini")
Brand.create(name:"Bahari")
Brand.create(name:"Bahia Blue")
Brand.create(name:"Baik Baik Designs")
Brand.create(name:"Bailey 44")
Brand.create(name:"Bailey Banks Biddle")
Brand.create(name:"bailey blue")
Brand.create(name:"Bakers")
Brand.create(name:"Balenciaga")
Brand.create(name:"Bali")
Brand.create(name:"Bally")
Brand.create(name:"Balmain")
Brand.create(name:"Balu")
Brand.create(name:"Bamboo Trading Company")
Brand.create(name:"Ban.do")
Brand.create(name:"Banana Republic")
Brand.create(name:"Bandolera")
Brand.create(name:"Bandolino")
Brand.create(name:"BandolinoBlu")
Brand.create(name:"Banu Paris")
Brand.create(name:"Bar III")
Brand.create(name:"Barami")
Brand.create(name:"Barbara Bui")
Brand.create(name:"Barbara Wells Studio")
Brand.create(name:"Barbour")
Brand.create(name:"Bare Traps")
Brand.create(name:"Barely There")
Brand.create(name:"Bari Jay")
Brand.create(name:"Barneys New York")
Brand.create(name:"Barry Kieselstein-Cord")
Brand.create(name:"Basic Editions")
Brand.create(name:"Basic Editions Plus")
Brand.create(name:"Basil & Maude")
Brand.create(name:"Basix")
Brand.create(name:"Basix II")
Brand.create(name:"Bass")
Brand.create(name:"Bath and Body Works")
Brand.create(name:"Batik Boutique")
Brand.create(name:"Baume & Mercier")
Brand.create(name:"Bay Studio")
Brand.create(name:"BB Collections")
Brand.create(name:"BB Dakota")
Brand.create(name:"BB Simon")
Brand.create(name:"BC Footwear")
Brand.create(name:"BCBG")
Brand.create(name:"BCBG Max Azria")
Brand.create(name:"BCBG Paris")
Brand.create(name:"BCBGeneration")
Brand.create(name:"BCBGirls")
Brand.create(name:"BCX")
Brand.create(name:"BDG")
Brand.create(name:"BE & D")
Brand.create(name:"Be Bop")
Brand.create(name:"Be Inspired")
Brand.create(name:"Be Maternity")
Brand.create(name:"BeachBody")
Brand.create(name:"Beaded Drama")
Brand.create(name:"Bearpaw")
Brand.create(name:"Beauchamp")
Brand.create(name:"Beaucoup")
Brand.create(name:"Beautiful Mothers by Mary's ")
Brand.create(name:"Bebe")
Brand.create(name:"Bebe Moda")
Brand.create(name:"BeBop")
Brand.create(name:"Bechamel")
Brand.create(name:"Becky & Max")
Brand.create(name:"Bedo")
Brand.create(name:"Bee Darlin")
Brand.create(name:"Behnaz Sarafpour")
Brand.create(name:"Beige by ECI")
Brand.create(name:"Beijo")
Brand.create(name:"Beirn")
Brand.create(name:"Bel Aire Bridal")
Brand.create(name:"Belford")
Brand.create(name:"Belk")
Brand.create(name:"Bella")
Brand.create(name:"Bella Luxx")
Brand.create(name:"Bella Perlina")
Brand.create(name:"Bella Vita")
Brand.create(name:"Bellagio")
Brand.create(name:"Bellatrix")
Brand.create(name:"Belldini")
Brand.create(name:"Belle by Sigerson Morrison")
Brand.create(name:"Belle du Jour")
Brand.create(name:"Belle Noel")
Brand.create(name:"Bellina Maternity")
Brand.create(name:"Bellissima")
Brand.create(name:"Bellissima Couture")
Brand.create(name:"Belly Basics")
Brand.create(name:"Belsoie")
Brand.create(name:"Ben Marc")
Brand.create(name:"Ben Sherman")
Brand.create(name:"Benard Holtzman")
Brand.create(name:"Benefit")
Brand.create(name:"Benetton")
Brand.create(name:"Benjamin Adams")
Brand.create(name:"Beppa")
Brand.create(name:"Berek")
Brand.create(name:"BERGAMO STUDIO")
Brand.create(name:"Bergdorf Goodman")
Brand.create(name:"Berkshire")
Brand.create(name:"Berman's")
Brand.create(name:"Bernardo")
Brand.create(name:"Bershka")
Brand.create(name:"Bestform")
Brand.create(name:"Beth Bowley")
Brand.create(name:"Betmar")
Brand.create(name:"Betsey Johnson")
Brand.create(name:"Betsy & Adam")
Brand.create(name:"Betsy Lauren")
Brand.create(name:"Betty Boop")
Brand.create(name:"Betty Rides")
Brand.create(name:"Bettye Muller")
Brand.create(name:"Beulah")
Brand.create(name:"Beverly Clark")
Brand.create(name:"Beverly Feldman")
Brand.create(name:"Beverly Hills Polo Club")
Brand.create(name:"Beyond")
Brand.create(name:"Beyond Vintage")
Brand.create(name:"Beyond Yoga")
Brand.create(name:"Bfriends")
Brand.create(name:"BGSD")
Brand.create(name:"BHLDN")
Brand.create(name:"BIAGI")
Brand.create(name:"Bianca Nygard")
Brand.create(name:"Bice")
Brand.create(name:"Big Buddha")
Brand.create(name:"Big Star")
Brand.create(name:"Bigio")
Brand.create(name:"Bijou by AJ Valenci")
Brand.create(name:"Bijoux and Couture")
Brand.create(name:"Bijoux Terner")
Brand.create(name:"Bill Blass")
Brand.create(name:"Bill Burns Signature")
Brand.create(name:"Bill Levkoff")
Brand.create(name:"Billabong")
Brand.create(name:"Billy Blues")
Brand.create(name:"Birkenstock")
Brand.create(name:"Birnbaum and Bullock")
Brand.create(name:"Bisang")
Brand.create(name:"Bisou Bisou")
Brand.create(name:"Bisou's Project")
Brand.create(name:"Bitten by Sarah Jessica Parker")
Brand.create(name:"Biviel")
Brand.create(name:"Biya")
Brand.create(name:"BKE")
Brand.create(name:"Black Cat")
Brand.create(name:"Black Halo")
Brand.create(name:"Black Orchid")
Brand.create(name:"Black Poppy")
Brand.create(name:"Black Rivet")
Brand.create(name:"Blackheart")
Brand.create(name:"Blair")
Brand.create(name:"Blank Denim")
Brand.create(name:"Bleeker & McDougal")
Brand.create(name:"Bliss Bridal Shoes")
Brand.create(name:"Blondie")
Brand.create(name:"Blondie and Me")
Brand.create(name:"Blondie Nites")
Brand.create(name:"Blondo")
Brand.create(name:"Bloomingdales")
Brand.create(name:"Blossom")
Brand.create(name:"Blu Moon")
Brand.create(name:"Blu Nauta")
Brand.create(name:"Blu Pepper")
Brand.create(name:"Blu Sage")
Brand.create(name:"Blue Asphalt")
Brand.create(name:"Blue Bird")
Brand.create(name:"Blue Cult")
Brand.create(name:"Blue Dot")
Brand.create(name:"Blue Duck")
Brand.create(name:"Blue Epic")
Brand.create(name:"Blue Generation")
Brand.create(name:"Blue Nile")
Brand.create(name:"Blue Plate")
Brand.create(name:"Blue Sky")
Brand.create(name:"Blue Tattoo Jeans")
Brand.create(name:"Blue Tux")
Brand.create(name:"Blue Willi's")
Brand.create(name:"Bluebell")
Brand.create(name:"Blugirl")
Brand.create(name:"Blumarine")
Brand.create(name:"Blush")
Brand.create(name:"Bob Mackie")
Brand.create(name:"Bobbie Brooks")
Brand.create(name:"Bobby Chan")
Brand.create(name:"Bobeau")
Brand.create(name:"BOC")
Brand.create(name:"Boden")
Brand.create(name:"Bodhi")
Brand.create(name:"Body Central")
Brand.create(name:"Body Glove")
Brand.create(name:"Body Language")
Brand.create(name:"Body Rage")
Brand.create(name:"Bogari")
Brand.create(name:"Bogner")
Brand.create(name:"Bogs")
Brand.create(name:"Boho Chic")
Brand.create(name:"Bollman Hat Company")
Brand.create(name:"Bolzano")
Brand.create(name:"Bonfire")
Brand.create(name:"Bongo")
Brand.create(name:"Bonnie Haversat")
Brand.create(name:"Bonnie Jean")
Brand.create(name:"Bonny")
Brand.create(name:"Bonobos")
Brand.create(name:"Bontrager")
Brand.create(name:"Bonwit Teller")
Brand.create(name:"BonWorth")
Brand.create(name:"Boot Barn")
Brand.create(name:"Borbonese")
Brand.create(name:"Bordello")
Brand.create(name:"Born")
Brand.create(name:"Born Shoes")
Brand.create(name:"Bosca")
Brand.create(name:"Boston Proper")
Brand.create(name:"Boston Traders")
Brand.create(name:"Botkier")
Brand.create(name:"Bottega Veneta")
Brand.create(name:"Boucheron")
Brand.create(name:"Bougainvillea")
Brand.create(name:"Bourne")
Brand.create(name:"Boutique")
Brand.create(name:"Boutique 9")
Brand.create(name:"Boyod")
Brand.create(name:"Boyt")
Brand.create(name:"Bozzolo")
Brand.create(name:"BP")
Brand.create(name:"Bradley Bayou")
Brand.create(name:"Braetan")
Brand.create(name:"Brahmin")
Brand.create(name:"Brandon Thomas")
Brand.create(name:"Brandy Melville")
Brand.create(name:"Brash")
Brand.create(name:"Bravissimo")
Brand.create(name:"Bravo")
Brand.create(name:"Braza")
Brand.create(name:"Bread and Butter")
Brand.create(name:"Breakin' Loose")
Brand.create(name:"Breckelle's")
Brand.create(name:"Breckenridge")
Brand.create(name:"BREE")
Brand.create(name:"Brian Atwood")
Brand.create(name:"Brian Tucker")
Brand.create(name:"Bric's")
Brand.create(name:"Briggs")
Brand.create(name:"Brighton")
Brand.create(name:"Britney")
Brand.create(name:"Brittania")
Brand.create(name:"Brittany Black")
Brand.create(name:"Bromley")
Brand.create(name:"Bronx")
Brand.create(name:"Brooklyn Xpress")
Brand.create(name:"Brooks Brothers")
Brand.create(name:"Brookstone")
Brand.create(name:"Brownstone Studio")
Brand.create(name:"Bruno Cucinelli")
Brand.create(name:"Bruno Frisoni")
Brand.create(name:"Bruno Magli")
Brand.create(name:"Bryn Connelly")
Brand.create(name:"Bryn Walker")
Brand.create(name:"Brynn Capella")
Brand.create(name:"Bubblegum")
Brand.create(name:"Bucco")
Brand.create(name:"Buckaroo Jeans")
Brand.create(name:"Buckle")
Brand.create(name:"Buckley Tailors")
Brand.create(name:"Buffalo")
Brand.create(name:"Bullhead")
Brand.create(name:"Bullhead Black")
Brand.create(name:"Bulova")
Brand.create(name:"Bumper")
Brand.create(name:"Burberry")
Brand.create(name:"Burlington")
Brand.create(name:"Burn N Violet")
Brand.create(name:"Burning Torch")
Brand.create(name:"Burton")
Brand.create(name:"Buster Brown")
Brand.create(name:"Butler Basics")
Brand.create(name:"Butter")
Brand.create(name:"Buxton")
Brand.create(name:"BVLGARI")
Brand.create(name:"BW Sports")
Brand.create(name:"By Deep Los Angeles")
Brand.create(name:"By Malene Birger")
Brand.create(name:"Byblos")
Brand.create(name:"byCORPUS")
Brand.create(name:"BYER")
Brand.create(name:"Byer California")
Brand.create(name:"Byer Too")
Brand.create(name:"Byerwear")
Brand.create(name:"Byrnes & Baker")

Brand.create(name:"C&C California")
Brand.create(name:"C'est La Vie")
Brand.create(name:"C. Luce")
Brand.create(name:"Cabela's")
Brand.create(name:"CAbi")
Brand.create(name:"Cabin Creek")
Brand.create(name:"Cable & Gauge")
Brand.create(name:"Cacharel")
Brand.create(name:"Cache")
Brand.create(name:"Cachet")
Brand.create(name:"Cacique")
Brand.create(name:"Cactus")
Brand.create(name:"Cali Cali")
Brand.create(name:"California Dynasty")
Brand.create(name:"CaliJoules")
Brand.create(name:"Call It Spring")
Brand.create(name:"Calypso")
Brand.create(name:"Calypso St. Barth")
Brand.create(name:"Cambio")
Brand.create(name:"CamiFlauge")
Brand.create(name:"Camilla Skovgaard London")
Brand.create(name:"Camille la Vie")
Brand.create(name:"Campaigne")
Brand.create(name:"Camper")
Brand.create(name:"Canari")
Brand.create(name:"Candela")
Brand.create(name:"Candie's")
Brand.create(name:"Candy Hearts")
Brand.create(name:"Cane + Austin")
Brand.create(name:"Cantao")
Brand.create(name:"Canyon River Blues")
Brand.create(name:"Caparros")
Brand.create(name:"Capezio")
Brand.create(name:"Capo")
Brand.create(name:"Capricho")
Brand.create(name:"Car Mar")
Brand.create(name:"Carducci")
Brand.create(name:"Caren Sport")
Brand.create(name:"Caressa")
Brand.create(name:"Carhartt")
Brand.create(name:"Caribbean Joe")
Brand.create(name:"Carina")
Brand.create(name:"Carlisle")
Brand.create(name:"Carlos Falchi")
Brand.create(name:"Carlos Miele")
Brand.create(name:"Carlos Santana")
Brand.create(name:"Carmela Sutera")
Brand.create(name:"Carmen Marc Valvo")
Brand.create(name:"Carnival")
Brand.create(name:"Carol Hannah")
Brand.create(name:"Carol Reed")
Brand.create(name:"Carol Rose")
Brand.create(name:"Carole Little")
Brand.create(name:"Carolina Blues")
Brand.create(name:"Carolina Herrera")
Brand.create(name:"Caroline Hallak")
Brand.create(name:"Caroline Long")
Brand.create(name:"Carolyn Taylor")
Brand.create(name:"Caron")
Brand.create(name:"Carrera")
Brand.create(name:"Carrie Allen")
Brand.create(name:"Carroll Reed")
Brand.create(name:"Cartier")
Brand.create(name:"Cartise")
Brand.create(name:"Casablanca")
Brand.create(name:"Casadei")
Brand.create(name:"Case Logic")
Brand.create(name:"Casey & Max")
Brand.create(name:"Caslon")
Brand.create(name:"Cassandra Stone")
Brand.create(name:"Castaner")
Brand.create(name:"Casual Corner")
Brand.create(name:"Casual Corner Annex")
Brand.create(name:"Casual Living")
Brand.create(name:"Caterina")
Brand.create(name:"Catherine Malandrino")
Brand.create(name:"Catherines")
Brand.create(name:"Cathy")
Brand.create(name:"Cathy Daniels")
Brand.create(name:"Cathy Hardwick")
Brand.create(name:"Cathy Jean")
Brand.create(name:"Cato")
Brand.create(name:"Catwalk Studio")
Brand.create(name:"Cavalli")
Brand.create(name:"CC SKYE")
Brand.create(name:"CDC")
Brand.create(name:"Cecilia Prado")
Brand.create(name:"Cejon")
Brand.create(name:"Celine")
Brand.create(name:"Cellini")
Brand.create(name:"Cello Jeans")
Brand.create(name:"Celsius")
Brand.create(name:"Celtic Spirit")
Brand.create(name:"Centigrade")
Brand.create(name:"Centre Ville Paris")
Brand.create(name:"Cerruti")
Brand.create(name:"Cervelle")
Brand.create(name:"Cesare Paciotti")
Brand.create(name:"Cha Cha Vente")
Brand.create(name:"Chadwicks")
Brand.create(name:"Chaiken")
Brand.create(name:"Champion")
Brand.create(name:"Chan Luu")
Brand.create(name:"Chandi and Lia ")
Brand.create(name:"Chanel")
Brand.create(name:"Chaos Leather")
Brand.create(name:"Chaps")
Brand.create(name:"Charles & Keith")
Brand.create(name:"Charles Albert")
Brand.create(name:"Charles by Charles David")
Brand.create(name:"Charles David")
Brand.create(name:"Charles Garnier")
Brand.create(name:"Charles Jourdan")
Brand.create(name:"Charles River Apparel")
Brand.create(name:"Charlie 1 Horse by Lucchese")
Brand.create(name:"Charlie jade")
Brand.create(name:"Charlotte Olympia")
Brand.create(name:"Charlotte Ronson")
Brand.create(name:"Charlotte Russe")
Brand.create(name:"Charlotte Tarantola")
Brand.create(name:"Charming Charlie")
Brand.create(name:"Charter Club")
Brand.create(name:"Chaser")
Brand.create(name:"Chateau Le Beau")
Brand.create(name:"Chaudry")
Brand.create(name:"Chaus")
Brand.create(name:"Chaus Sport")
Brand.create(name:"Che Studio")
Brand.create(name:"Cheap Monday")
Brand.create(name:"Chelsea & Violet")
Brand.create(name:"Chelsea Crew")
Brand.create(name:"Chelsea Flower")
Brand.create(name:"Chelsea Nites")
Brand.create(name:"Chelsea Studio")
Brand.create(name:"Cheppu")
Brand.create(name:"Cherish")
Brand.create(name:"Cherokee")
Brand.create(name:"Cheroy")
Brand.create(name:"Chesley")
Brand.create(name:"Chetta B")
Brand.create(name:"Chetta B. by Sherrie Bloom and Peter Noviello")
Brand.create(name:"Chi Chi")
Brand.create(name:"Chia")
Brand.create(name:"Chic Star")
Brand.create(name:"Chicka-D")
Brand.create(name:"Chico's")
Brand.create(name:"Chilli Couture")
Brand.create(name:"Chinese Laundry")
Brand.create(name:"Chip and Pepper")
Brand.create(name:"Chloe")
Brand.create(name:"Chloe & Theodora")
Brand.create(name:"Chloe K")
Brand.create(name:"Chocolat Blu")
Brand.create(name:"Choices")
Brand.create(name:"chopin roma")
Brand.create(name:"Chor")
Brand.create(name:"Christian Audigier")
Brand.create(name:"Christian Aujard")
Brand.create(name:"Christian Bernard")
Brand.create(name:"Christian Dior")
Brand.create(name:"Christian Lacroix")
Brand.create(name:"Christian LLinares")
Brand.create(name:"Christian Louboutin")
Brand.create(name:"Christian Siriano")
Brand.create(name:"Christian Siriano for Payless")
Brand.create(name:"Christiana Zinn")
Brand.create(name:"Christie & Jill")
Brand.create(name:"Christie Brooks")
Brand.create(name:"Christina Wu")
Brand.create(name:"Christina's")
Brand.create(name:"Christine Alexander")
Brand.create(name:"Christine Price")
Brand.create(name:"Christopher & Banks")
Brand.create(name:"Christopher Blue")
Brand.create(name:"Christos")
Brand.create(name:"Ci Sono")
Brand.create(name:"Ciao Bella")
Brand.create(name:"Cielo")
Brand.create(name:"Cinderella")
Brand.create(name:"Circa Joan & David")
Brand.create(name:"Citizens of Humanity")
Brand.create(name:"Citrine by the Stones")
Brand.create(name:"Citron")
