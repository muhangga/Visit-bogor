part of 'pages.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/detail1.png',
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.cover),
            ListView(
              children: [
                SizedBox(
                  height: 280,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Text(
                              'Bakso Mang Enden',
                              style: primaryTextStyle.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/star.png',
                              width: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/star.png',
                              width: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/star.png',
                              width: 18,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/map.png',
                              width: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Jl. Bangbarung Raya. No 71',
                              style: primaryTextStyle.copyWith(
                                  fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        Text(
                          'Deksripsi',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Semua menu di Bakmi kane dapat diatur level pedasnya.Tingkat kepedasannya mulai dari level 1 sampai dengan level 6. Selain itu untuk porsi tersedia juga porsi berkuranjumbo.",
                          style: primaryTextStyle.copyWith(
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        Text(
                          'Waktu Operasional',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/clock.png',
                              width: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '11.00 - 21.00 WIB',
                              style: primaryTextStyle.copyWith(
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 37,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 54,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Color(0xff141D2E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Kunjungi Lokasi',
                              style: whiteTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
