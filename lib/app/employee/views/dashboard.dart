import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import '../controller/bottom_nav_controller.dart';
import 'emp_page.dart'; // এটি আপনার অ্যাটেনডেন্স বা এমপ্লয়ি পেজ হিসেবে থাকবে
import 'home.dart';
import 'profile.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  // Get.find() এর আগে কন্ট্রোলারটি অবশই পুট করা থাকতে হবে
  final BottomNavController controller = Get.find<BottomNavController>();

  // HRMS রিকোয়ারমেন্ট অনুযায়ী ৫টি মেইন স্ক্রিন [cite: 207, 213]
  final List<Widget> pages = [
    HomePage(),
    EmployeePage(), // Attendance বা Employee Page [cite: 210]
    const Center(child: Text("Leave Page")), // Module 3 [cite: 211]
    const Center(child: Text("Payroll Page")), // Module 4 [cite: 212]
    const ProfilePage(), // Personal Profile [cite: 213]
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.grey[100], // সফট ব্যাকগ্রাউন্ড কালার [cite: 18]
        appBar: AppBar(
          title: const Text(
            "Smart Workplace Portal", // প্রফেশনাল ব্র্যান্ডিং [cite: 314]
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: const Color(
            0xFF2196F3,
          ), // ইমেজের সাথে মিলানো নীল কালার
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
          ),
        ),

        // কারেন্ট সিলেক্টেড পেজ শো করবে
        body: pages[controller.currentIndex.value],

        // 🔥 আপনার ইমেজের মতো ১০০% কাস্টম কার্ভড নোচ নেভিগেশন বার
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors
              .transparent, // ব্যাকগ্রাউন্ড ট্রান্সপারেন্ট যাতে কার্ভ দেখা যায়
          color: Colors.white, // নেভিগেশন বারের মূল বডির কালার
          buttonBackgroundColor: const Color(
            0xFF2196F3,
          ), // মাঝখানের ভাসমান সার্কেলটির কালার
          height: 65,
          index: controller.currentIndex.value,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeInOut,
          onTap: controller.changeIndex, // GetX ইনডেক্স চেঞ্জার কল
          // ইমেজের স্টাইল অনুযায়ী ৫টি আইটেম এবং টেক্সট লেবেল
          items: [
            CurvedNavigationBarItem(
              child: Icon(
                Icons.home_outlined,
                color: controller.currentIndex.value == 0
                    ? Colors.white
                    : Colors.black87,
              ),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.fingerprint,
                color: controller.currentIndex.value == 1
                    ? Colors.white
                    : Colors.black87,
              ),
              label: 'Attendance',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.calendar_month_outlined,
                color: controller.currentIndex.value == 2
                    ? Colors.white
                    : Colors.black87,
              ),
              label: 'Leave',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.wallet_outlined,
                color: controller.currentIndex.value == 3
                    ? Colors.white
                    : Colors.black87,
              ),
              label: 'Payroll',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.person_outline,
                color: controller.currentIndex.value == 4
                    ? Colors.white
                    : Colors.black87,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
