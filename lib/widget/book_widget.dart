import 'package:books_app/detail_screen.dart';
import 'package:books_app/model/buku.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookHorizontalListItem extends StatelessWidget {
  final Buku buku;

  const BookHorizontalListItem({Key? key, required this.buku})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(buku: buku)));
      },
      child: SizedBox(
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  buku.imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              buku.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff333740)),
            ),
            Text(
              buku.author,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff828285),
                  fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}

class BookHorizontalListItemWeb extends StatelessWidget {
  final Buku buku;

  const BookHorizontalListItemWeb({Key? key, required this.buku})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(buku: buku)));
      },
      child: SizedBox(
        width: 230,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: 230,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  buku.imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              buku.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Color(0xff333740)),
            ),
            Text(
              buku.author,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff828285),
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

class BookListItem extends StatelessWidget {
  final Buku buku;

  const BookListItem({Key? key, required this.buku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(buku: buku)));
      },
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  buku.imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      buku.title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Text(
                      buku.author,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Color(0xff828285),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    RatingBar.builder(
                      initialRating: buku.rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookListItemWeb extends StatelessWidget {
  final Buku buku;

  const BookListItemWeb({Key? key, required this.buku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(buku: buku)));
      },
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 220,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  buku.imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      buku.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ),
                    Text(
                      buku.author,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Color(0xff828285),
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    RatingBar.builder(
                      initialRating: buku.rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 28,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
