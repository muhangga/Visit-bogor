part of 'widgets.dart';

class Kategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
      ),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 200,
                child: Image.asset(
                  'assets/detail1.png',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 200,
                child: Image.asset(
                  'assets/detail1.png',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 200,
                child: Image.asset(
                  'assets/detail1.png',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
          ],
        ),
      ),
    );
  }
}
