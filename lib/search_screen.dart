import 'package:books_app/model/buku.dart';
import 'package:books_app/widget/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:books_app/util/util.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 75,
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 5,
                shape: const Border(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back)),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration.collapsed(
                                hintText: "Search Here",
                                hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ),
                        const SizedBox(width: 16),
                        IconButton(
                            onPressed: () =>
                                showToast(context, "Search Clicked"),
                            icon: const Icon(Icons.search))
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            (screenSize.width >= 1024)
                ? const SearchResultWeb()
                : const SearchResult()
          ]),
    );
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Search Result",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
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
                      const SizedBox(height: 8)),
              const SizedBox(
                height: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchResultWeb extends StatelessWidget {
  const SearchResultWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Search Result",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
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
                      const SizedBox(height: 8)),
              const SizedBox(
                height: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
