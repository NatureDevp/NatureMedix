import 'package:flutter/material.dart';

class Card4 extends StatelessWidget {
  Card4({
    super.key,
    required this.plantname,
    required this.status,
    required this.date,
    required this.plantimage,
    required this.ontap,
  });
  String plantname;
  String plantimage;
  String status;
  String date;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          width: 200,
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // New Tag
              Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  decoration: BoxDecoration(
                    color: getStatusColor(status),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Text(
                    status,
                    style: TextStyle(
                      color:
                          (status == 'Completed') ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Plant Image (Placeholder for now)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      plantimage, // Replace with your actual image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Plant Name
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  plantname,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Date
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Text(
                  date,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getStatusColor(String status) {
    switch (status) {
      case 'New':
        return const Color(0xFF93F396);
      case 'Ongoing':
        return const Color(0xFFF8D093);
      case 'Completed':
        return const Color(0xFF00A308);
      default:
        return Colors.grey;
    }
  }
}
