import 'package:flutter/material.dart';
import '../utils/colors.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const Chip(
            side: BorderSide(color: AppColors.primaryColor, width: 0),
            avatar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.filter_list),
            ),
            labelPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: AppColors.buttonColor,
            label: Text(
              "Sort by",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(width: 20),
          Chip(
            labelPadding: const EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Colors.grey.shade900,
            label: const Text(
              "Shoes",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(width: 20),
          const Chip(
            labelPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: AppColors.primaryColor,
            shadowColor: AppColors.primaryColor,
            surfaceTintColor: AppColors.primaryColor,
            label: Text(
              "FW 2023",
              style: TextStyle(
                  color: AppColors.buttonColor, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(width: 20),
          Chip(
            labelPadding: const EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Colors.grey.shade900,
            label: const Text(
              "News",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}