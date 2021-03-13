part of 'widgets.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
      ),
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 120,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/detail1.png',
                      width: 120,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 120,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/detail1.png',
                      width: 120,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 120,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/detail1.png',
                      width: 120,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ],
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
