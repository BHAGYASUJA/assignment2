import 'package:assignment3/Provider/StateMAnagementProvider/Screens/Wishlist.dart';
import 'package:flutter/material.dart';

import '../provider/Movie Provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => MovieProvider(),
    child: MaterialApp(home: home()),
  ));
  //const MaterialApp(home:home(),));
}

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ///context is used for current page
    var movies = context.watch<MovieProvider>().movies;
    var movielist = context.watch<MovieProvider>().wishMovies;
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MyListScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.favorite_outlined),
                  label: Text("Go to wishliost ${movielist.length}")),
              SizedBox(height: 20),
              Expanded(
                  child: Center(
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                              ListView.builder(itemBuilder: (context, index) {
                            var movie = movies[index];
                            return Card(
                              key: ValueKey(movie.title),

                              ///Each card is monitor used by key
                              child: ListTile(
                                title: Text(movie.title),
                                subtitle: Text(movie.time ?? "No time"),
                                trailing: IconButton(
                                  onPressed: () {
                                    if (!movielist.contains(movie)) {
                                      context
                                          .read<MovieProvider>()
                                          .addToList(movie);
                                    } else {
                                      context
                                          .read<MovieProvider>()
                                          .removeFromList(movie);
                                    }
                                  },
                                  icon: Icon(
                                    Icons.favorite_outlined,
                                    color: movielist.contains(movie)
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            );
                          })))),
            ])));
  }
}
