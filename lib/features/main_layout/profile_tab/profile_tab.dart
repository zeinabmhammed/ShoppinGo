import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Account',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Text(
                  'mohamed.N@gmail.com',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              children: const [
                _AccountField(
                  label: 'Your full name',
                  value: 'Enter your name',
                ),
                SizedBox(height: 24),
                _AccountField(label: 'Your E- mail', value: 'Enter your email'),
                SizedBox(height: 24),
                _AccountField(
                  label: 'Your password',
                  value: 'Enter your password',
                  isPassword: true,
                ),
                SizedBox(height: 24),
                _AccountField(
                  label: 'Your mobile number',
                  value: 'Enter your mobile number',
                ),
                SizedBox(height: 24),
                _AccountField(
                  label: 'Your Address',
                  value: 'Enter your address',
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AccountField extends StatelessWidget {
  final String label;
  final String value;
  final bool isPassword;
  final int maxLines;

  const _AccountField({
    super.key,
    required this.label,
    required this.value,
    this.isPassword = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        // Readonly field style
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
            color: Colors.grey.shade200,
          ),
          child: Row(
            crossAxisAlignment: maxLines > 1
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              // Text
              Expanded(
                child: Text(
                  value,
                  maxLines: maxLines,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(width: 8),
              // Edit icon
              const Icon(
                Icons.mode_edit_outlined,
                size: 18,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
