part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          SizedBox(
            height: 180,
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
                    builder: (context) => HomePage(),
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
          )
        ],
      ),
    );
  }
}
