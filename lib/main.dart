import 'package:flutter/material.dart';
void main() {
  runApp(BarbershopApp());
}

const List<Map<String, dynamic>> featuredBarbershops = [
  {
    'name': 'Master piece Barbershop - Haircut styling',
    'location': 'Joga Expo Centre (2 km)',
    'rating': 5.0,
    'image': 'assets/images/photo_9_2024-09-23_18-56-35.jpg',
  },
  {
    'name': 'Varcity Barbershop jogja ex The Varcher',
    'location': 'Condongcatur (10 km)',
    'rating': 4.5,
    'image': 'assets/images/photo_8_2024-09-23_18-56-35.jpg',
  },
  {
    'name': 'Twinsky Monkey Barber & Men Stuff',
    'location': 'Jl. Taman Siswa (8 km)',
    'rating': 5.0,
    'image': 'assets/images/photo_3_2024-09-23_18-56-35.jpg',
  },
  {
    'name': 'Barberman - Haircut styling & massage',
    'location': 'V-Walk Centre (17 km)',
    'rating': 4.5,
    'image': 'assets/images/photo_6_2024-09-23_18-56-35.jpg',
  },
  {
    'name': 'Elite Cuts & Shaves',
    'location': 'Sleman City Hall (15 km)',
    'rating': 4.9,
    'image': 'assets/images/A1580-Mens-Room-Barber-Shop-HERO.jpg',
  },
  {
    'name': 'Gentleman\'s Lounge Barbershop',
    'location': 'Gejayan Street (11 km)',
    'rating': 4.7,
    'image': 'assets/images/chris-knight-ucnC7PMDqE-unsplash-768x512.jpg',
  },
];

class BarbershopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbershop App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> allBarbershops = [
    // Combine all barbershops from different lists
    {
      'name': 'Master piece Barbershop - Haircut styling',
      'location': 'Joga Expo Centre (2 km)',
      'rating': 5.0,
      'image': 'assets/images/photo_9_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Varcity Barbershop jogja ex The Varcher',
      'location': 'Condongcatur (10 km)',
      'rating': 4.5,
      'image': 'assets/images/photo_8_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Twinsky Monkey Barber & Men Stuff',
      'location': 'Jl. Taman Siswa (8 km)',
      'rating': 5.0,
      'image': 'assets/images/photo_3_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Elite Cuts & Shaves',
      'location': 'Sleman City Hall (15 km)',
      'rating': 4.9,
      'image': 'assets/images/A1580-Mens-Room-Barber-Shop-HERO.jpg',
    },
    {
      'name': 'Gentleman\'s Lounge Barbershop',
      'location': 'Gejayan Street (11 km)',
      'rating': 4.7,
      'image': 'assets/images/chris-knight-ucnC7PMDqE-unsplash-768x512.jpg',
    },
    {
      'name': 'Barberman - Haircut styling & massage',
      'location': 'V-Walk Centre (17 km)',
      'rating': 4.5,
      'image': 'assets/images/photo_6_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Alana Barbershop - Haircut massage & Spa',
      'location': 'Rungkutasasi (5 km)',
      'rating': 4.5,
      'image': 'assets/images/photo_2_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Hercha Barbershop - Haircut & Styling',
      'location': 'Jalan Kaliurang (8 km)',
      'rating': 5.0,
      'image': 'assets/images/photo_1_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Barberking - Haircut styling & massage',
      'location': 'Jogja City Centre (12 km)',
      'rating': 4.5,
      'image': 'assets/images/photo_7_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Classic Cuts Barbershop',
      'location': 'Malioboro Street (7 km)',
      'rating': 4.8,
      'image': 'assets/images/120-640w.webp',
    },
    {
      'name': 'Modern Gents Grooming',
      'location': 'Prawirotaman (9 km)',
      'rating': 4.7,
      'image': 'assets/images/positive-african-american-barber-using-600nw-2360178701.webp',
    },
  ];


  List<Map<String, dynamic>> searchResults = [];
  bool isSearching = false;

  void performSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        isSearching = false;
        searchResults = [];
      } else {
        isSearching = true;
        searchResults = allBarbershops
            .where((barbershop) =>
            barbershop['name'].toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top section: Location and Profile Avatar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFF9D9DFF),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Yogyakarta',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/photo_4_2024-09-23_18-56-35.jpg'),
                      radius: 25,
                    ),
                  ],
                ),
              ),

              // Joe Samanta's name, moved closer to location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                child: Text(
                  'Joe Samanta',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              // Booking Card
              BookingCard(),

              // Search Bar with Filter Button
              SearchBar(onSearch: performSearch),

              if (isSearching)
                SearchResultsList(searchResults: searchResults)
              else
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nearest Barbershop List
                    NearestBarbershopList(),

                    // Most Recommended Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Most recommended',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    FeaturedBarbershopCard(barbershops: featuredBarbershops),

                    // Most Recommended List
                    MostRecommendedList(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: screenWidth, // Full screen width
        height: 230, // Increased height for the BookingCard
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/barbershop-seamless-pattern-black-on-white-repeating-pattern-print-for-men-s-barber-shop-a-set-of-accessories-for-men-s-hairdresser-on-white-background-vector.jpg', // Make sure to add this image to your assets
                  fit: BoxFit.cover,
                  opacity: AlwaysStoppedAnimation(0.1), // Adjust opacity as needed
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/photo_5_2024-09-23_18-56-35.png',
                  height: 210, // Increased height for the image
                  width: 210, // Increased width for the image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Снимок экрана 2024-09-23 191707.png', // Logo in the orange window
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(height: 8),
                  Spacer(), // Pushes the button down
                  ElevatedButton(
                    onPressed: () {
                      // Add booking action
                    },
                    child: Text(
                      'Booking Now',
                      style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class SearchBar extends StatelessWidget {
  final Function(String) onSearch;

  SearchBar({required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search barber's, haircut ser...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: onSearch,
            ),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              // Add filter action
            },
            child: Icon(Icons.tune, color: Colors.white),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minimumSize: Size(50, 50),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchResultsList extends StatelessWidget {
  final List<Map<String, dynamic>> searchResults;

  SearchResultsList({required this.searchResults});

  @override
  Widget build(BuildContext context) {
    return searchResults.isEmpty
        ? Center(child: Text('No results found'))
        : ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return BarbershopCard(barbershop: searchResults[index]);
      },
    );
  }
}

class SeeAllButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: OutlinedButton(
        onPressed: () {
          // Add action for See All button
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.blue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'See All',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward,
              size: 16,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class CenteredSeeAllButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SeeAllButton(),
    );
  }
}

class NearestBarbershopList extends StatefulWidget {
  @override
  _NearestBarbershopListState createState() => _NearestBarbershopListState();
}

class _NearestBarbershopListState extends State<NearestBarbershopList> {
  final List<Map<String, dynamic>> barbershops = [
    {
      'name': 'Alana Barbershop - Haircut massage & Spa',
      'location': 'Rungkutasasi (5 km)',
      'rating': 4.5,
      'image': 'assets/images/photo_2_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Hercha Barbershop - Haircut & Styling',
      'location': 'Jalan Kaliurang (8 km)',
      'rating': 5.0,
      'image': 'assets/images/photo_1_2024-09-23_18-56-35.jpg',
    },
    {
      'name': 'Barberking - Haircut styling & massage',
      'location': 'Jogja City Centre (12 km)',
      'rating': 4.5,
      'image': 'assets/images/photo_7_2024-09-23_18-56-35.jpg',
    },
    // New entries
    {
      'name': 'Classic Cuts Barbershop',
      'location': 'Malioboro Street (7 km)',
      'rating': 4.8,
      'image': 'assets/images/120-640w.webp',
    },
    {
      'name': 'Modern Gents Grooming',
      'location': 'Prawirotaman (9 km)',
      'rating': 4.7,
      'image': 'assets/images/positive-african-american-barber-using-600nw-2360178701.webp',
    },
  ];

  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Nearest Barbershop',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _showAll ? barbershops.length : 3,
          itemBuilder: (context, index) {
            return BarbershopCard(barbershop: barbershops[index]);
          },
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _showAll = !_showAll;
              });
            },
            child: Text(_showAll ? 'Show Less' : 'See All'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class BarbershopCard extends StatelessWidget {
  final Map<String, dynamic> barbershop;

  BarbershopCard({required this.barbershop});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            barbershop['image'],
            width: 80,
            height: 80,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              print('Error loading image: ${barbershop['image']}');
              print('Error details: $error');
              return Container(
                width: 60,
                height: 60,
                color: Colors.grey,
                child: Icon(Icons.error),
              );
            },
          ),
        ),
        title: Text(barbershop['name']),
        subtitle: Text(barbershop['location']),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Text(barbershop['rating'].toString()),
          ],
        ),
      ),
    );
  }
}

class MostRecommendedList extends StatefulWidget {
  @override
  _MostRecommendedListState createState() => _MostRecommendedListState();
}

class _MostRecommendedListState extends State<MostRecommendedList> {


  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _showAll ? featuredBarbershops.length : 3,
          itemBuilder: (context, index) {
            return BarbershopCard(barbershop: featuredBarbershops[index]);
          },
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _showAll = !_showAll;
              });
            },
            child: Text(_showAll ? 'Show Less' : 'See All'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FeaturedBarbershopCard extends StatefulWidget {
  final List<Map<String, dynamic>> barbershops;

  const FeaturedBarbershopCard({
    Key? key,
    required this.barbershops,
  }) : super(key: key);

  @override
  _FeaturedBarbershopCardState createState() => _FeaturedBarbershopCardState();
}

class _FeaturedBarbershopCardState extends State<FeaturedBarbershopCard> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 1.0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 350, // Adjust this height as needed
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.barbershops.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              final barbershop = widget.barbershops[index];
              return _buildBarbershopCard(barbershop);
            },
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.barbershops.length,
                (index) => Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Colors.deepPurple : Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBarbershopCard(Map<String, dynamic> barbershop) {
    return Card(
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(
                  barbershop['image'],
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: ElevatedButton(
                  onPressed: () {
                    // Add booking functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Booking'),
                      SizedBox(width: 8),
                      Icon(Icons.event, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  barbershop['name'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(barbershop['location'], style: TextStyle(color: Colors.grey)),
                    Spacer(),
                    Icon(Icons.star, size: 16, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text(barbershop['rating'].toString(), style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
