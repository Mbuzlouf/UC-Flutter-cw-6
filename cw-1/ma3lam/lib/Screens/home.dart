import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ma3lam/models/places.dart';
import 'package:ma3lam/Screens/place.dart';

class Myhome extends StatelessWidget {
  Myhome({super.key});
  var places = [
    Places(
        placeName: 'The Eifel Tower',
        placeLoc: 'Paris',
        description:
            'The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.',
        placeUrl:
            'https://images.unsplash.com/photo-1545721264-23fdc0850396?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2960&q=80'),
    Places(
      placeName: 'The Louvre Museum',
      placeLoc: 'Paris',
      description:
          "The Louvre, or the Louvre Museum, is the world's most-visited museum, and a historic landmark in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo.",
      placeUrl:
          'https://images.unsplash.com/photo-1574092832851-5b3513aa4335?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80',
    ),
    Places(
      placeName: 'Palace of Versailles',
      placeLoc: 'Versailles',
      description:
          "The Palace of Versailles is a former royal residence built by King Louis XIV located in Versailles, about 12 miles west of Paris, France.",
      placeUrl:
          'https://images.unsplash.com/photo-1630968541996-c96bc55d2440?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFsYWNlJTIwb2YlMjB2ZXJzYWlsbGVzfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
    Places(
      placeName: 'Sainte Chapelle',
      placeLoc: 'Paris',
      description:
          "The Sainte-Chapelle is a royal chapel in the Gothic style, within the medieval Palais de la Cité, the residence of the Kings of France until the 14th century, on the Île de la Cité in the River Seine in Paris, France.",
      placeUrl:
          'https://images.unsplash.com/photo-1650769801403-2b18b6b950b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2FpbnRlJTIwY2hhcGVsbGV8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
    ),
    Places(
      placeName: 'Arc de Triomphe',
      placeLoc: 'Paris',
      description:
          "The Arc de Triomphe de l'Étoile is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées at the centre of Place Charles de Gaulle, formerly named Place de l'Étoile—the étoile or star of the juncture formed by its twelve radiating avenues.",
      placeUrl:
          'https://images.unsplash.com/photo-1660070224280-96145ecfe1d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1196&q=80',
    ),
    Places(
      placeName: 'Pont du Gard',
      placeLoc: 'Vers-Pont-du-Gard',
      description:
          'The Pont du Gard is an ancient Roman aqueduct bridge built in the first century AD to carry water over 50 km to the Roman colony of Nemausus. It crosses the river Gardon near the town of Vers-Pont-du-Gard in southern France.',
      placeUrl:
          'https://images.unsplash.com/photo-1610998336883-59dd0a764510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9udCUyMGR1JTIwZ2FyZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('L a n d m a r k s!'),
        backgroundColor: Colors.blueGrey[300],
      ),
      body: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) {
            return Card(
                elevation: 3,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyPlace(place: places[index])));
                  },
                  child: Row(
                    children: [
                      Image.network(
                        places[index].placeUrl,
                        width: 150,
                      ),
                      Container(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.blueGrey[300],
                          ),
                          Icon(
                            Icons.location_pin,
                            color: Colors.blueGrey[300],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(places[index].placeName),
                            Text(places[index].placeLoc)
                          ],
                        ),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
