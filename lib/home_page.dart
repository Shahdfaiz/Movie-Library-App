import 'package:flutter/material.dart';
import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget{
  const HomePage();
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{
  String movieName= '';
  bool isGridView= true;
  int discount_offer=20;
  void search_function (String value){
    setState(() {
      movieName=value;
    });}
    void decrease_discount (){
      setState(() {
        discount_offer--;
      });
    }

  @override
  Widget build(BuildContext context) {
    List<Movie> searchMovie = movies.where(
        (movie){
          final query = movieName.toLowerCase().trim();
          return movie.title.toLowerCase().contains(query) ||
          movie.genre.toLowerCase().contains(query);
        }
    ).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Movie Library',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
            color: Colors.white,
          ),
            ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              isGridView ? Icons.grid_view_outlined : Icons.format_list_bulleted
            ),
        onPressed: (){
              setState(() {
                isGridView = !isGridView;
              });
        },
          color: Colors.white,
        ),
        actions: [
          Icon(Icons.search, color: Colors.white,),
          SizedBox(width: 20),
          Icon(Icons.movie_filter_outlined, color: Colors.white),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
          children:[
            Padding(
              padding: EdgeInsets.all(5),
                child: TextField(
                onChanged: search_function,
                decoration: InputDecoration(
                    hintText: "Search Movies...",
                    prefixIcon: Icon(Icons.search,
                      color: Theme.of(context).colorScheme.secondary,)
                ),),),
      Expanded(
          child: searchMovie.isEmpty ? Center(
            child: Text("No Movie found!"),
          )
            :isGridView? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                childAspectRatio: 0.6),
                itemBuilder: (BuildContext context, int index)
            {
             return MovieCard(
               movie: searchMovie[index],
               discount_offer: discount_offer ,
               onTap: decrease_discount,
             );
            },
            itemCount: searchMovie.length,):
            ListView.builder(
            itemCount: searchMovie.length,
            itemBuilder: (context, index) {
            return Center(
              child: SizedBox(
                width: 400,
                child: MovieCard(movie: searchMovie[index],
                  discount_offer: discount_offer ,
                  onTap: decrease_discount,),)
            );},)
            ),
            ],
));}}