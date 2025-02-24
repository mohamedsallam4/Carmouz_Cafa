import 'package:flutter/material.dart';

/// DRAWER
// الصفحات ال بضغط عليها الديتيلز بتاعت الايكون ال موجوده في الدراور
class SettingsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings Details")),
      body: const Center(child: Text("Details of Settings")),
    );
  }
}

class StaffDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Staff Details")),
      body: const Center(child: Text("Details of Staff")),
    );
  }
}

class WalletDetails extends StatelessWidget {
  const WalletDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wallet Details")),
      body: const Center(child: Text("Details of Wallet")),
    );
  }
}

class AboutUsDetails extends StatelessWidget {
  const AboutUsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us Details")),
      body: const Center(child: Text("Details of About Us")),
    );
  }
}
