import 'package:books_app/detail_screen.dart';
import 'package:books_app/model/buku.dart';
import 'package:books_app/util/util.dart';
import 'package:books_app/widget/book_widget.dart';
import 'package:flutter/material.dart';

Buku recentBuku = bukuList.last;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: LayoutBuilder(
            builder: (context, constraint) {
              if (constraint.maxWidth >= 1024) {
                return const HomeWeb();
              } else {
                return const HomeMobile();
              }
            },
          ),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 14),
          RecentBook(buku: recentBuku),
          const SizedBox(height: 34),
          const PopularBook(),
          const SizedBox(height: 34),
          const RecommendedBook(),
          const SizedBox(height: 14),
        ]);
  }
}

class HomeWeb extends StatelessWidget {
  const HomeWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 14),
          RecentBookWeb(buku: recentBuku),
          const SizedBox(height: 34),
          const PopularBookWeb(),
          const SizedBox(height: 34),
          const RecommendedBookWeb(),
          const SizedBox(height: 14),
        ]);
  }
}

class RecommendedBook extends StatelessWidget {
  const RecommendedBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recommended",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            InkWell(
              onTap: () => showToast(context, "View All Recommended Book"),
              child: const Text(
                "View all",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xff828285)),
              ),
            )
          ],
        ),
        const SizedBox(height: 14),
        ListView.separated(
            shrinkWrap: true,
            itemCount: bukuList.length,
            itemBuilder: ((BuildContext context, int index) {
              List<Buku> items = bukuList;
              return BookListItem(buku: items[index]);
            }),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 8))
      ],
    );
  }
}

class PopularBook extends StatelessWidget {
  const PopularBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Popular Book",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            InkWell(
              onTap: () => showToast(context, "View All Popular Book"),
              child: const Text(
                "View all",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xff828285)),
              ),
            )
          ],
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 260,
          child: ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                List<Buku> items = bukuList..shuffle();
                return BookHorizontalListItem(buku: items[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 8)),
        ),
      ],
    );
  }
}

class RecentBook extends StatelessWidget {
  final Buku buku;

  const RecentBook({
    Key? key,
    required this.buku,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double progress = buku.pageRead / buku.page;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recent Book",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            InkWell(
              onTap: () => showToast(context, "View All Recent Book"),
              child: const Text(
                "View all",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xff828285)),
              ),
            )
          ],
        ),
        const SizedBox(height: 14),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (((context) => DetailScreen(buku: recentBuku))))),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    elevation: 5,
                    child: SizedBox(
                        width: 130,
                        height: 160,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              buku.imgUrl,
                              fit: BoxFit.fill,
                            )))),
                const SizedBox(width: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          buku.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff333740)),
                        ),
                        Text(buku.author,
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff828285))),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pages: ${buku.pageRead}/${buku.page}",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color(0xff828285)),
                            ),
                            Text(
                              "${(progress * 100).round()}%",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color(0xff828285)),
                            ),
                          ],
                        ),
                        LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: const Color(0xffF4F4F4),
                          color: const Color(0xff3EB86B),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RecentBookWeb extends StatelessWidget {
  final Buku buku;

  const RecentBookWeb({super.key, required this.buku});

  @override
  Widget build(BuildContext context) {
    double progress = buku.pageRead / buku.page;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Recent Book",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff333740)),
              ),
              InkWell(
                onTap: () => showToast(context, "View All Recent Book"),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Text(
                    "View All",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828285)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 18),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(buku: buku))),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 230,
                      height: 300,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            buku.imgUrl,
                            fit: BoxFit.fill,
                          ))),
                  const SizedBox(width: 14),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        buku.title,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Color(0xff333740)),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        buku.author,
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff828285)),
                      ),
                      const Spacer(),
                      Text(
                        "Pages: ${buku.pageRead}/${buku.page}",
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff828285)),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Stack(
                          children: [
                            LinearProgressIndicator(
                              value: progress,
                              minHeight: 24,
                              backgroundColor: const Color(0xffF4F4F4),
                              color: const Color(0xff3EB86B),
                            ),
                            Center(
                              child: Text(
                                "${(progress * 100).round()}%",
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff333740)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class PopularBookWeb extends StatelessWidget {
  const PopularBookWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Popular Book",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff333740)),
              ),
              InkWell(
                onTap: () => showToast(context, "View All Popular Book"),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Text(
                    "View All",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828285)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 18),
          SizedBox(
            height: 400,
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  List<Buku> items = bukuList..shuffle();
                  return BookHorizontalListItemWeb(buku: items[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 8)),
          ),
        ],
      ),
    );
  }
}

class RecommendedBookWeb extends StatelessWidget {
  const RecommendedBookWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Recommended Book",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff333740)),
              ),
              InkWell(
                onTap: () => showToast(context, "View All Recommended Book"),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Text(
                    "View All",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828285)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 14),
          ListView.separated(
              shrinkWrap: true,
              itemCount: bukuList.length,
              itemBuilder: ((BuildContext context, int index) {
                List<Buku> items = bukuList;
                return BookListItemWeb(buku: items[index]);
              }),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 8))
        ],
      ),
    );
  }
}
