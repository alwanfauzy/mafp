class Buku {
  String title;
  String author;
  double rating;
  String language;
  String description;
  double price;
  String imgUrl;
  int page;
  int pageRead;

  Buku(
      {required this.title,
      required this.author,
      required this.rating,
      required this.language,
      required this.description,
      required this.price,
      required this.imgUrl,
      required this.page,
      required this.pageRead});
}

var bukuList = [
  Buku(
      title: "Atomic Habits",
      author: "James Clear",
      rating: 4.7,
      language: "ID",
      description:
          """Orang mengira ketika Anda ingin mengubah hidup, Anda perlu memikirkan hal-hal besar. Namun pakar kebiasaan terkenal kelas dunia James Clear telah menemukan sebuah cara

lain. Ia tahu bahwa perubahan nyata berasal dari efek gabungan ratusan keputusan kecil—dari mengerjakan dua push-up sehari, bangun lima menit lebih awal, sampai menahan sebentar hasrat untuk menelepon.

Ia menyebut semua tadi atomic habits.

Dalam buku terobosan ini, Clear pada hakikatnya mengungkapkan bagaimana perubahan-perubahan sangat remeh ini dapat tumbuh menjadi hasil-hasil yang sangat mengubah

hidup. Ia menyingkap beberapa trik sederhana dalam hidup kita (seni Menumpuk Kebiasaan yang terlupakan, kekuatan tak terduga Aturan Dua Menit, atau trik untuk masuk ke dalam Zona Goldilocks), dan menggali ke dalam teori psikologi dan neurosains paling baru untuk menerangkan mengapa semua itu penting. Dalam rangka itu, ia menceritakan kisah-kisah inspiratif para peraih medali emas Olimpiade, para CEO terkemuka, dan ilmuwan-ilmuwan istimewa yang telah menggunakan sains tentang kebiasaan-kebiasaan kecil untuk tetap produktif, tetap termotivasi, dan bahagia.

Perubahan-perubahan kecil ini akan mendatangkan pengaruh revolusioner pada karier Anda, hubungan pribadi Anda, dan hidup Anda.""",
      price: 69000.0,
      imgUrl: "images/buku_1.png",
      page: 234,
      pageRead: 150),
  Buku(
      title: "Enchanment",
      author: "Guy Kawasaki",
      rating: 3.7,
      language: "ENG",
      description: """
The process of enchantment is not about manipulating people. Enchantment transforms situations and relationships. It con­verts hostility into civility and civility into affinity. It changes skeptics and cynics into believers and the undecided into the loyal.

Enchantment can happen during a retail transaction, a high-level corporate negotiation, or a Facebook update. And when done right, it’s more powerful than traditional persuasion, influence, or marketing techniques.

The goal is not merely to get what you want but to bring about a voluntary, enduring, and delightful change in other people. By enlisting their own goals and desires, by being likable and trustworthy, and by framing a cause that others can embrace, you can change hearts, minds, and actions.

Guy explains all of this in Enchantment. Think of this book as How to Win Friends and Influence People (Dale Carnegie) meets Influence (Bob Cialdini) meets the Internet and social media.
""",
      price: 0,
      imgUrl: "images/buku_2.png",
      page: 180,
      pageRead: 0),
  Buku(
      title: "The World of Lore Dreadful Place",
      author: "Aaron Mahnke",
      rating: 3.9,
      language: "ENG",
      description: """
Captivating stories of the places where human evil has left a nefarious mark, featuring stories from the podcast Lore—now a streaming television series—including “Echoes,” “Withering Heights,” and “Behind Closed Doors” as well as rare material.
 
Sometimes you walk into a room, a building, or even a town, and you feel it. Something seems off—an atmosphere that leaves you oddly unsettled, with a sense of lingering darkness. Join Aaron Mahnke, the host of the popular podcast Lore, as he explores some of these dreadful places and the history that haunts them.
 
Mahnke takes us to Colorado and the palatial Stanley Hotel, where wealthy guests enjoyed views of the Rocky Mountains at the turn of the twentieth century—and where, decades later, a restless author would awaken from a nightmare, inspired to write one of the most revered horror novels of all time. Mahnke also crosses land and sea to visit frightful sites—from New Orleans to Richmond, Virginia, to the brooding, ancient castles of England—each with its own echoes of dark deeds, horrible tragedies, and shocking evil still resounding.
 
Filled with evocative illustrations, this eerie tour of lurid landmarks and doomed destinations is just the ticket to take armchair travelers with a taste for the macabre to places they never thought they’d visit in their wildest, scariest dreams.

The World of Lore series includes:
MONSTROUS CREATURES • WICKED MORTALS • DREADFUL PLACES

Praise for World of Lore: Dreadful Places

“Well-written, rooted in deep historical research, and ridiculously entertaining . . . Each chapter brings a creepy story from folklore to life. . . . Hair-raising stuff.”—SyFy Wire
 
“Fans of the Lore podcast won’t want to miss this latest volume in the creator’s series, a collection of illustrated versions of both rare and well-known stories about ‘lurid landmarks and doomed destinations.’”—io9
 
“Dreadful Places is a delight for Lore fans and newbies alike. In the book, [Aaron] Mahnke visits places around the world that are steeped in a supernatural legacy.”—Refinery29
""",
      price: 290000,
      imgUrl: "images/buku_3.png",
      page: 383,
      pageRead: 42),
  Buku(
      title: "Think and Grow Rich",
      author: "Napoleon Hill",
      rating: 4.7,
      language: "ID",
      description: """
Think and Grow Rich has been called the "Granddaddy of All Motivational Literature." It was the first book to boldly ask, "What makes a winner?" The man who asked and listened for the answer, Napoleon Hill, is now counted in the top ranks of the world's winners himself.
The most famous of all teachers of success spent "a fortune and the better part of a lifetime of effort" to produce the "Law of Success" philosophy that forms the basis of his books and that is so powerfully summarized in this one.

In the original Think and Grow Rich, published in 1937, Hill draws on stories of Andrew Carnegie, Thomas Edison, Henry Ford, and other millionaires of his generation to illustrate his principles. In the updated version, Arthur R. Pell, Ph.D., a nationally known author, lecturer, and consultant in human resources management and an expert in applying Hill's thought, deftly interweaves anecdotes of how contemporary millionaires and billionaires, such as Bill Gates, Mary Kay Ash, Dave Thomas, and Sir John Templeton, achieved their wealth. Outmoded or arcane terminology and examples are faithfully refreshed to preclude any stumbling blocks to a new generation of readers.
""",
      price: 99000,
      imgUrl: "images/buku_4.png",
      page: 295,
      pageRead: 70),
  Buku(
      title: "Selamat Tinggal",
      author: "Tere Liye",
      rating: 4.3,
      language: "ID",
      description: """
Hidup, satu kata yang sebenarnya manusia tahu bahwa tidak akan berjalan lancar seperti yang telah direncanakan oleh kita. Memang kita dapat merencanakan sesuatu, tetapi Sang Pemilik Kehidupanlah yang berhak mengatur dan menetapkan semuanya.

Sering kali cobaan dan batu rintangan yang menghambat jalannya proses kehidupan seseorang. Kehidupan ini tak jarang mengingkari usaha dan impian yang diharapkan oleh seseorang. Lalu, kerap kali memaksakan diri ini untuk rela meninggalkan beberapa prinsip yang sudah sangat erat kita pegang.

Takdir seakan sengaja mempertemukan, bahkan memaksa seseorang untuk bergandengan dengan sesuatu yang sangat dibencinya. Bisa dikatakan hal tersebut yang bertentangan dengan prinsip yang sudah digenggam kuat-kuat oleh kita.

Melalui karya tulisnya ini, Tere Liye mengilustrasikan dengan sangat apik–sebuah kepahitan dan gejolak dalam kehidupan yang dijalani oleh para tokohnya
""",
      price: 120000,
      imgUrl: "images/buku_5.jpg",
      page: 360,
      pageRead: 16),
  Buku(
      title: "Bicara itu ada seninya",
      author: "Oh Su Hyang",
      rating: 3.8,
      language: "ID",
      description: """
Ketika komunikasi menjadi hal yang penting untuk bersaing, pakar komunikasi Oh Su Hyang mengeluarkan buku yang sangat berarti. Selain berisi tentang pengalaman pengembangan diri, buku ini juga membahas tentang teknik komunikasi, persuasi, dan negosiasi.
Lalu bagaimana cara berbicara yang baik? Apakah berbicara dengan artikulasi yang jelas? Atau berbicara tanpa mengambil napas? Tidak! Sebuah ucapan yang bisa disebut adalah yang bisa menggetarkan hati. Ucapan seorang juara memiliki daya tarik tersendiri. Ucapan pemandu acara memiliki kemampuan untuk menghidupkan suasana. Anda harus pandai berbicara untuk menunjukkan diri Anda kepada lawan bicara dalam kehidupan sosial. Orang yang berbicara dengan mahir akan menjadi lebih maju daripada yang lainnya. Untuk mencapai tujuan komunikasi, persuasi, dan negosiasi, Anda harus mengetahui metode komunikasi yang efisien.
Buku ini dijabarkan agar dapat dimengerti oleh siapa saja. Anda dapat belajar dari banyak pengalaman orang-orang terkenal dan juga mengenai rahasia inti komunikasi. Jika Anda membacanya dengan runut, saya yakin rasa percaya diri Anda untuk berbicara pun akan tumbuh dengan sendirinya.
""",
      price: 59000,
      imgUrl: "images/buku_6.jpg",
      page: 238,
      pageRead: 200),
  Buku(
      title: "Home Sweet Loan",
      author: "Almira Bastari",
      rating: 4.4,
      language: "ID",
      description:
          """Empat orang yang berteman sejak SMA bekerja di perusahaan yang sama meski beda nasib. Di usia 31 tahun, mereka berburu rumah idaman yang minimal...nyerempet Jakarta.

Kaluna, pegawai Bagian Umum, yang gajinya tak pernah menyentuh dua digit. Gadis ini kerja sampingan sebagai model bibir, bermimpi membeli rumah demi keluar dari situasi tiga kepala keluarga yang bertumpuk di bawah satu atap. Di tengah perjuangannya menabung, Kaluna dirongrong oleh kekasihnya untuk pesta pernikahan mewah.

Tanisha, ibu satu anak yang menjalani "long distance marriage," mencari rumah murah dekat MRT yang juga bisa menampung mertuanya.

Kamamiya, yang berambisi menjadi selebgram, mencari apartemen cantik untuk diunggah ke media sosial demi memenuhi gengsinya agar bisa menikah dengan pria kaya.

Danan, anak tunggal tanpa beban yang akhirnya berpikir untuk berhenti hura-hura, dan membeli aset agar bisa pensiun dengan tenang.

Apakah keempat sahabat ini berhasil menemukan rumah yang mampu mereka cicil? Dan apakah Kaluna bisa membentuk keluarga yang ia impikan?
""",
      price: 159000,
      imgUrl: "images/buku_7.jpg",
      page: 312,
      pageRead: 100),
  Buku(
      title: "Luka Cita",
      author: "Valerie Patkar",
      rating: 4.4,
      language: "ID",
      description: """
Tentang para pemimpi yang dikhianati cita-cita mereka sendiri.

Seorang pendiri perusahaan start-up idealis bernama Javier bertemu dengan mantan atlet catur penakut bernama Utara. Saat mereka hampir menyerah untuk memperjuangkan apa yang mereka cita-citakan selama ini, mereka belajar untuk memaafkan keadaan.
""",
      price: 199000,
      imgUrl: "images/buku_8.jpg",
      page: 441,
      pageRead: 101),
  Buku(
      title:
          "The things you can see only when you slow down: Cara untuk tetap tenang dan berkesadaran di tengah dunia yang serbacepat",
      author: "Haemin Sunim",
      rating: 4.0,
      language: "ID",
      description: """
"Apakah dunia yang sibuk, atau pikiranku?"

Dunia bergerak cepat, tetapi itu tidak berarti kita harus melakukannya. Dalam panduan mindfulness terlaris ini - telah terjual lebih dari tiga juta kopi di Korea, di mana buku ini menjadi buku terlaris nomor satu selama 41 minggu dan menerima beberapa penghargaan buku terbaik tahun ini - Haemin Sunim (yang berarti "kebijaksanaan spontan "), seorang guru meditasi Buddhis terkenal yang lahir di Korea dan dididik di Amerika Serikat, menerangi jalan menuju kedamaian dan keseimbangan batin di tengah tuntutan kehidupan sehari-hari yang luar biasa.

Dengan menawarkan panduan menuju kesejahteraan dan kebahagiaan di delapan bidang - termasuk hubungan, cinta, dan spiritualitas - Haemin Sunim menekankan pentingnya menjalin hubungan yang lebih dalam dengan orang lain dan menjadi welas asih dan pemaaf terhadap diri kita sendiri
""",
      price: 99000,
      imgUrl: "images/buku_9.jpg",
      page: 288,
      pageRead: 10)
];
