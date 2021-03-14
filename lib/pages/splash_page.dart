part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/bg_top.png',
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              'assets/logo.png',
              width: 270,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 210,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              color: blueLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              child: Text(
                'Lanjutkan',
                style: whiteTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 53,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/bg_bottom.png',
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
