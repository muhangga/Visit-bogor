part of 'widgets.dart';

class KategoriWidget extends StatelessWidget {
  final Kategori kategori;
  KategoriWidget(this.kategori);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          width: 200,
          child: Stack(
            children: [
              Image.asset(
                kategori.imageUrl,
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 10,
                bottom: 40,
                child: Text(
                  kategori.name,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 15,
                child: Text(
                  kategori.alamat,
                  style: whiteTextStyle.copyWith(fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
