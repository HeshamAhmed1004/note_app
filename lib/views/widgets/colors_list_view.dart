
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
              onTap: () {
                currentIndex = index;
                AddNoteCubit.get(context).color=kColors[index];
                setState(() {});
              },
              child: ColorItem(isActive: currentIndex == index, color: kColors[index],)),
        ),
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
