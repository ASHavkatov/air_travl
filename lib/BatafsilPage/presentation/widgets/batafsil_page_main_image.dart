import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';

class BatafsilPageMainImage extends StatefulWidget {
  BatafsilPageMainImage({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  State<BatafsilPageMainImage> createState() => _BatafsilPageMainImageState();
}

class _BatafsilPageMainImageState extends State<BatafsilPageMainImage> {
  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315,
      child: Stack(
        children: [
          PageView.builder(
              itemCount: widget.images.length,
              onPageChanged: (index){
                setState(() {
                  current_index = index;
                });
              },
              itemBuilder: (context, index) {
                return Image(
                  image: AssetImage(
                    widget.images[index],
                  ),
                  width: 428,
                  height: 312,
                  fit: BoxFit.cover,
                );
              }
              ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.images.length,
                (index) {
                  final bool isActive = index == current_index;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isActive ? 16 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: isActive ? AppColor.timecontainercolor : AppColor.animatedcontainercolor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
