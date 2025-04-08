import 'package:flutter/material.dart';
import 'package:learning_mgmt_app/widgets/app_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _buildUserProfile(),
              SizedBox(height: 20),
              _buildMenuItem(Icons.shield_outlined, 'My Certification'),
              _buildMenuItem(Icons.article_outlined, "My Projects"),
              _buildMenuItem(Icons.download_outlined, "Saved Course"),
              _buildMenuItem(Icons.info_outline, "Help Center"),
              _buildMenuItem(Icons.lock_outline, "Privacy Policy"),
              _buildMenuItem(Icons.thumb_up_alt_outlined, "Feedback"),
              _buildMenuItem(Icons.favorite_border, "Rate Us"),
              AppButton(
                btnText: 'LogOut',
                onTap: () {},
                btnColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserProfile() {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
            image: DecorationImage(
              image: AssetImage('images/women_sitting.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 12),
        Text('Lisa Alexander', style: TextStyle(fontSize: 20)),
        SizedBox(height: 4),
        TextButton.icon(
          onPressed: () {},
          icon: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black54, fontSize: 16),
          ),
          label: Icon(
            Icons.mode_edit_outline_outlined,
            size: 16,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(124, 122, 122, 0.565),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        shape: CircleBorder(side: BorderSide(width: 1)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        leading: Icon(icon, color: Color(0xFF3D5A80), size: 24),
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.chevron_right, color: Colors.black54),
        onTap: () {
          //Navigate to related details screen/dialog box
        },
      ),
    );
  }
}
