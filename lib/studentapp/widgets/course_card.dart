import 'package:flutter/material.dart';
import 'package:learning_mgmt_app/models/course.dart';

class CourseCard extends StatelessWidget {
  const CourseCard(
      {super.key,
      required this.course,
      required this.isTrending,
      this.imagHeight,
      this.imagWidth,
      this.containerWidth});
  final Course course;
  final bool isTrending;
  final double? imagHeight;
  final double? imagWidth;
  final double? containerWidth;

  @override
  Widget build(BuildContext context) {
    if (isTrending) {
      return _buildingTrendingCourseCard();
    } else {
      return _buildRecentCourseCard();
    }
  }

  Widget _buildingTrendingCourseCard() {
    return SizedBox(
      width: 180,
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                //Later image will be coming from online
                child: Image.asset(
                  course.thumbnailUrl,
                  height: 180,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    // Implement add to favorite btn for the course
                  },
                  icon: Icon(Icons.bookmark_border, color: Colors.blueAccent),
                ),
              ),
            ],
          ),
          Text(
            course.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildRecentCourseCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(150),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),

                //Later image will be coming from online
                child: Image.asset(
                  course.thumbnailUrl,
                  height: imagHeight,
                  width: imagWidth,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    // Implement add to favorite btn for the course
                  },
                  icon: Icon(Icons.bookmark_border),
                ),
              ),
            ],
          ),
          SizedBox(
            width: containerWidth ?? 350,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 4,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(54, 225, 193, 97),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            Text(
                              '4.2',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.access_time, color: Colors.blue, size: 16),
                      Text('${course.duration} Hrs'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    course.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 12),
                  Row(
                    spacing: 8,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        //Implement backgroundImage: property
                        backgroundImage: AssetImage(course.instructorImg),
                      ),
                      Text(
                        course.instructorName,
                        style: TextStyle(color: Colors.blue.shade800),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(87, 112, 147, 206),
                        ),
                        child: Text(
                          'Rs ${course.price}',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 33, 40, 243),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
