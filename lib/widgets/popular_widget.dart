part of 'widgets.dart';

class PopularWidget extends StatelessWidget {
  final Popular popular;

  PopularWidget(this.popular);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          width: 120,
          height: 180,
          child: Stack(
            children: [
              Container(
                height: 180,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(popular.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.35),
                            Colors.black.withOpacity(0),
                          ]),
                    )),
              ),
              popular.isPopular
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffD7443E),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/star.png',
                            width: 17,
                          ),
                        ),
                      ),
                    )
                  : Container(),
              Positioned(
                bottom: 30,
                left: 10,
                child: Text(
                  popular.name,
                  style: whiteTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 10,
                child: Image.asset(
                  'assets/star.png',
                  width: 15,
                ),
              ),
              Positioned(
                bottom: 12,
                left: 35,
                child: Text(
                  '${popular.rating}',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
