import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(198, 234, 173, 167),
      appBar: AppBar(
        actions: [
          Image.asset("assets/letter-u.png"),
          IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearchDelegate());
          }, icon: const Icon(Icons.search))
        ],
        title: const Text("UBOL"),
        backgroundColor: const Color.fromARGB(255, 137, 97, 110),
       
      ),
      
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {

List<String> searchTerms = [
	"Apple",
	"Banana",
	"Mango",
	"Pear",
	"Watermelons",
	"Blueberries",
	"Pineapples",
	"Strawberries"
];
	

@override
List<Widget>? buildActions(BuildContext context) {
	return [
	IconButton(
		onPressed: () {
		query = '';
		},
		icon: const Icon(Icons.clear),
	),
	];
}

// second overwrite to pop out of search menu
@override
Widget? buildLeading(BuildContext context) {
	return IconButton(
	onPressed: () {
		close(context, null);
	},
	icon: const Icon(Icons.arrow_back),
	);
}

// third overwrite to show query result
@override
Widget buildResults(BuildContext context) {
	List<String> matchQuery = [];
	for (var fruit in searchTerms) {
	if (fruit.toLowerCase().contains(query.toLowerCase())) {
		matchQuery.add(fruit);
	}
	}
	return ListView.builder(
	itemCount: matchQuery.length,
	itemBuilder: (context, index) {
		var result = matchQuery[index];
		return ListTile(
		title: Text(result),
		);
	},
	);
}

// last overwrite to show the 
// querying process at the runtime
@override
Widget buildSuggestions(BuildContext context) {
	List<String> matchQuery = [];
	for (var fruit in searchTerms) {
	if (fruit.toLowerCase().contains(query.toLowerCase())) {
		matchQuery.add(fruit);
	}
	}
	return ListView.builder(
	itemCount: matchQuery.length,
	itemBuilder: (context, index) {
		var result = matchQuery[index];
		return ListTile(
		title: Text(result),
		);
	},
	);
}
}

