import 'package:flutter/material.dart';
import 'dart:math';

import '../components/homepage/bottomnav.dart';

class ServiceDetailsScreen extends StatelessWidget {
  // final String serviceName;
  // const ServiceDetailsScreen({required this.serviceName});

  @override
  Widget build(BuildContext context) {
    final location = _generateRandomLocation();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 26),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 234, 123, 88),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: TextEditingController(text: location),
                      decoration: InputDecoration(
                        labelText: 'Location',
                        prefixIcon: Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 234, 123, 88),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(10),
          //   child: Text(
          //     'Service Name: $serviceName',
          //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Price : ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '45 SAR',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 234, 123, 88),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  _generateRandomArticle(),
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Providers Nearby',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _buildProviderCard('John Doe', '5 Stars', '2 km'),
          _buildProviderCard('Jane Smith', '5 Stars', '3 km'),
          _buildProviderCard('Mike Johnson', '4.5 Stars', '1 km'),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 234, 123, 88),
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Select and Book',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
     bottomNavigationBar:
    bottomNavBar());
   
  }

  Widget _buildProviderCard(String name, String rating, String distance) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHsAbwMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQUDBAYCB//EADIQAAICAQEFBAkEAwAAAAAAAAABAgMEEQUSMVGhIUFhcRMUMkJSgYKRwSIj0fA0crH/xAAWAQEBAQAAAAAAAAAAAAAAAAAAAQL/xAAWEQEBAQAAAAAAAAAAAAAAAAAAARH/2gAMAwEAAhEDEQA/APsoAAAAAAAAAAAAAAABJBIEAAAAABivyKcda3WKOvBd7+RrbSz/AFVKFejtku/3VzKCcpTk5zk5SfFssF3PbNC7I12y+yJhtjHk9Jwsh46alEC4murqurujvVTUl4dx7OUptnRNWVScZrvR0OBmRy6tdFGyPtR/JlW0AABJBIEAAARZJQrlOXCKbZJq7UbjgXackuqA5662V1srJ+1J6s8AGkAAEDPhXvGyYWd2ukvLvMAA64GPGbljVSfFwWv2MhloJIJAgAADDm1u3EurXFxennxMwA5EG9tXEePc7Ir9qx6rTufI0TSAACBMYuclGK7ZPREFpsbEcprJsWkY+wub5hVzCKhCMFwikkSAZUJIJAgAAACtztqxqbrxkpzXGT4L+QLGyEbIOE4qUXxTKbK2PZFt4zUo/DJ6NGkszI9MrfTSck+99n2OhxMmvKqU63o/ej8LKjnJY2RD2qLF9LJrxMix6Qpsf06L7nUjUaYp8TZHapZTX+kfyy3SSSSWiS7NDV2hmRxano07ZL9Mfy/Aoq8zJrm5xunvPjvPVP5BXTg0cHaVeS1CxKu193dLy/g3iASQSBABo7WyvV6Nyt6WWdi8F3sDV2rtDVyx8eWkV2Tknx8EVIBrED3VZOqe/VNxlzR4AFlXtjIitJwrn46aHm3a+TNaQUK/GK1fUrwMEzlKcnKcnKT4tviQAALvZW0Hb+xe9bF7Mvi8PMpCU3FpptNdqaA60k1dn5XrWOpvTfXZNeJtGVQcznZHrOVOz3ddI+RfbRt9DhWyT7Wt1fPsOZLEoACoAAAAAAAAAADd2Rf6HLUW/wBNn6X59398TojkU2mmno1wOqosVtMLF78UyVY0NvS0xYR+Kf8AxFGXe3EnCnXmyp3I8upYMQMu5Hl1G5Hl1CMQMu5Hl1G5Hl1AxAy7keXUbkeXUDEDLuR5dRuR5dQMQMu5Hl1G5Hl1AxHRbIlvYFfhqupRbkeXUu9i/wCF9bJVj//Z"),
        ),
        title: Text(name),
        subtitle: Text('Rating: $rating | Distance: $distance'),
      ),
    );
  }

  String _generateRandomLocation() {
    final locations = [
      'Location A',
      'Location B',
      'Location C',
      'Location D',
      'Location E',
    ];
    final random = Random();
    return locations[random.nextInt(locations.length)];
  }

  String _generateRandomArticle() {
    final articles = [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Pellentesque habitant morbi tristique senectus et netus et.',
      'Maecenas sit amet consectetur lorem. Etiam aliquet, justo ac .',
      'Sed interdum rutrum lacinia. Duis interdum elementum felis.',
      'Nullam bibendum lobortis nisl, ac vestibulum ex sagittis vel.',
    ];
    final random = Random();
    return articles[random.nextInt(articles.length)];
  }
}
