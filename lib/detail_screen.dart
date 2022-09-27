import 'package:books_app/model/buku.dart';
import 'package:books_app/util/custom_icon.dart';
import 'package:books_app/util/util.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatCurrency = NumberFormat.currency(locale: 'ID');

class DetailScreen extends StatelessWidget {
  final Buku buku;

  const DetailScreen({super.key, required this.buku});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 75,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff333740),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
            )),
        actions: [
          IconButton(
              onPressed: () => showToast(context, "More clicked"),
              icon: const Icon(Icons.more_vert))
        ],
        title: const Text(
          "eBook Details",
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth >= 1024) {
            return DetailWeb(buku: buku);
          } else {
            return DetailMobile(buku: buku);
          }
        },
      ),
    );
  }
}

class DetailMobile extends StatelessWidget {
  const DetailMobile({
    Key? key,
    required this.buku,
  }) : super(key: key);

  final Buku buku;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                color: const Color(0xffF4F4F4),
                height: 300,
                width: double.infinity,
                child: Center(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    buku.imgUrl,
                    height: 252,
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                buku.title,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff333740)),
                              ),
                              Text(
                                buku.author,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff828285)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          buku.price > 0
                              ? formatCurrency.format(buku.price)
                              : "Free",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: buku.price > 0
                                  ? const Color(0xff333740)
                                  : const Color(0xff3EB86B)),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF4F4F4),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Ratings",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff828285)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    buku.rating.toString(),
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff333740),
                                        fontSize: 12),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFC41F),
                                    size: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            color: const Color(0xff828285),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Number of pages",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Color(0xff828285)),
                              ),
                              Text(
                                "${buku.page} Page",
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xff333740)),
                              )
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            color: const Color(0xff828285),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Language",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Color(0xff828285)),
                              ),
                              Text(
                                buku.language,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xff333740)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Description",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff333740)),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      buku.description,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff828285)),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.zero,
          shape: const Border(),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BookmarkWidget(),
                const SizedBox(width: 24),
                Expanded(
                  child: InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                            color: const Color(0xff0D1630),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: Text(
                            "Start Reading",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () => showToast(context, "Start Reading clicked")),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BookmarkWidget extends StatefulWidget {
  const BookmarkWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BookmarkWidget> createState() => _BookmarkWidgetState();
}

class _BookmarkWidgetState extends State<BookmarkWidget> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => setState(() {
              isBookmark = !isBookmark;
            }),
        child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF2F2F2)),
            child: Center(
                child: Icon(
              CustomIcon.bookmark,
              color: isBookmark
                  ? const Color(0xff0D1630)
                  : const Color(0xffC1C1C1),
            ))));
  }
}

class DetailWeb extends StatelessWidget {
  final Buku buku;

  const DetailWeb({super.key, required this.buku});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 175, vertical: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntrinsicWidth(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: IntrinsicWidth(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 300,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(6),
                                  ),
                                  child: Image.asset(buku.imgUrl))),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 14),
                            decoration: const BoxDecoration(
                                color: Color(0xffF4F4F4),
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(6))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Ratings",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff828285)),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          buku.rating.toString(),
                                          style: const TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff333740),
                                              fontSize: 14),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xffFFC41F),
                                          size: 16,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 30,
                                  color: const Color(0xff828285),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Number of pages",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff828285)),
                                    ),
                                    Text(
                                      "${buku.page} Page",
                                      style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Color(0xff333740)),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 30,
                                  color: const Color(0xff828285),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Language",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff828285)),
                                    ),
                                    Text(
                                      buku.language,
                                      style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Color(0xff333740)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              color: const Color(0xff0D1630),
                              borderRadius: BorderRadius.circular(6)),
                          child: const Center(
                            child: Text(
                              "Start Reading",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () =>
                            showToast(context, "Start Reading clicked")),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: const BookmarkWidgetWeb(),
                  )
                ],
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        buku.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 26,
                            color: Color(0xff333740)),
                      ),
                      const SizedBox(height: 14),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF4F4F4),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                buku.author,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff828285)),
                              ),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              buku.price > 0
                                  ? formatCurrency.format(buku.price)
                                  : "Free",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: buku.price > 0
                                      ? const Color(0xff333740)
                                      : const Color(0xff3EB86B)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "Description",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff333740)),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        buku.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff828285)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookmarkWidgetWeb extends StatefulWidget {
  const BookmarkWidgetWeb({
    Key? key,
  }) : super(key: key);

  @override
  State<BookmarkWidgetWeb> createState() => _BookmarkWidgetWebState();
}

class _BookmarkWidgetWebState extends State<BookmarkWidgetWeb> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => setState(() {
              isBookmark = !isBookmark;
            }),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(CustomIcon.bookmark,
                  color: isBookmark
                      ? const Color(0xff0D1630)
                      : const Color(0xffC1C1C1)),
              const SizedBox(width: 4),
              const Text(
                "Bookmark",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0D1630)),
              ),
            ],
          ),
        ));
  }
}
