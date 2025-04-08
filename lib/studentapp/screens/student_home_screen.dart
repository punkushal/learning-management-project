import 'package:flutter/material.dart';
import 'package:learning_mgmt_app/models/course.dart';
import 'package:learning_mgmt_app/studentapp/widgets/course_card.dart';
import 'package:learning_mgmt_app/studentapp/widgets/search_field.dart';
import 'package:learning_mgmt_app/studentapp/widgets/section_header.dart';
import 'package:learning_mgmt_app/studentapp/widgets/welcome_header.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: WelcomeHeader(name: "Kushal"),
              ),

              //Search Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SearchField(),
              ),

              //Banner Slider

              //Trending Course Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SectionHeader(
                  title: 'Trending Course',
                  actionText: 'See All',
                  onActionTap: () {
                    // Navigate to all trending courses screen
                  },
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: CourseCard(
                        course: Course(
                          id: '1',
                          title: 'Flutter App Development Bootcamp',
                          thumbnailUrl: 'images/women_sitting.jpg',
                          instructorName: 'Angela Yu',
                          instructorImg: 'images/women_sitting.jpg',
                          duration: 30,
                          price: 20000.00,
                        ),
                        isTrending: true,
                      ),
                    );
                  },
                ),
              ),

              //Recently added course section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
                child: SectionHeader(
                  title: 'Recently Added Course',
                  actionText: 'See All',
                  onActionTap: () {
                    // Navigate to recently added courses screen
                  },
                ),
              ),
              SizedBox(
                height: 420,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 10,
                      ),
                      child: CourseCard(
                        course: Course(
                          id: '3',
                          title: 'Web Development',
                          thumbnailUrl: 'images/women_sitting.jpg',
                          instructorName: 'Angel Yu',
                          instructorImg: 'images/women_sitting.jpg',
                          duration: 65,
                          price: 240000,
                        ),
                        isTrending: false,
                        imagWidth: 350,
                        imagHeight: 240,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
