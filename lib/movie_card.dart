import 'package:flutter/material.dart';
import 'movie.dart';
class MovieCard extends StatelessWidget{
  final Movie movie;
  final int discount_offer;
  final VoidCallback onTap;
  const MovieCard({
    required this.movie,
    required this.discount_offer, required this.onTap});
  @override
  Widget build(BuildContext context) {
  return Container(
    clipBehavior: Clip.antiAlias,
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.all(10),
    width: 200,
    decoration:  BoxDecoration(
      color: Theme.of(context).colorScheme.onPrimary,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [BoxShadow(
      color: Colors.white54,
      blurRadius: 3
    )]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child:SizedBox(
                    width: double.infinity,
                    height: 700,
                    child: Image.asset(
                      movie.poster,
                      fit: BoxFit.cover,)
                ),
              ),
              Positioned(
                top:10,
                  left: 15,
                  child:Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,
                          size: 15,),
                        SizedBox(
                          width: 5,
                        ),
                        Text("${movie.rating}",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary
                        ),),
                      ],
                    ),
              )),
              Positioned(
              top: 10,
                right: 15,
                child: Icon(Icons.bookmark_outline_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 25,)
                ),
              Positioned(
                  bottom: 10,
                  left:15,
                  child: Text("Released Year: ${movie.year}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary
                  ),)),
              Positioned(
                  bottom:29,
                  right: -7,
                  child: Transform.rotate(
                      angle: -0.785398,
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: onTap,
                    child: Container(
                      width: 90,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Text("$discount_offer %" ,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ))
              )
                )],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.all(3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary
                  ),),
                  Text(movie.genre,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),),
                SizedBox(
                  height: 20,
                ),],
              ))
        ],
      ),
  );
  }
}