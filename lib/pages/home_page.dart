part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.brightness_5_outlined,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hallo!',
                            style: primaryTextStyle.copyWith(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'Victoria Smith',
                            style: primaryTextStyle.copyWith(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/photo.png',
                        width: 60,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Text(
                    'Popular',
                    style: primaryTextStyle.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_cooking.png',
                          width: 68,
                          height: 42,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Kuliner',
                          style: primaryTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_shop.png',
                          width: 68,
                          height: 42,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Coffe Shop',
                          style: primaryTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_wisata.png',
                          width: 68,
                          height: 42,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Wisata Alam',
                          style: primaryTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular',
                        style: primaryTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Show More',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PopularWidget(Popular(
                          id: 1,
                          name: 'Pangsit',
                          imageUrl: 'assets/kul1.png',
                          rating: 4.6,
                          isPopular: true)),
                      PopularWidget(Popular(
                          id: 2,
                          name: 'Mie Ayam',
                          imageUrl: 'assets/kul2.png',
                          rating: 4.6,
                          isPopular: false)),
                      PopularWidget(Popular(
                          id: 3,
                          name: 'Midoksang',
                          imageUrl: 'assets/kul4.png',
                          rating: 4.6,
                          isPopular: false)),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Text(
                    'Kategori',
                    style: primaryTextStyle.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(),),);
                        },
                        child: KategoriWidget(
                          Kategori(
                            id: 1,
                            name: "Ceker Mang Nden",
                            imageUrl: 'assets/kul5.png',
                            alamat: "Belakang Unpak",
                          ),
                        ),
                      ),
                      KategoriWidget(
                        Kategori(
                          id: 2,
                          name: "Rasa Utama",
                          imageUrl: 'assets/kul6.png',
                          alamat: "Depan Unpak",
                        ),
                      ),
                      KategoriWidget(
                        Kategori(
                          id: 1,
                          name: "Otak Otak",
                          imageUrl: 'assets/detail1.png',
                          alamat: "Samping Unpak",
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 55,
        width: MediaQuery.of(context).size.width - (2 * 24),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
          border: Border.all(width: 1, color: greyColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_list.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_user.png',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
