import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/models/city.dart';

class CityCard extends StatelessWidget {
  
  final City city;

  CityCard(this.city);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl.toString(),
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                  ),
                  (city.isPopuler) 
                  ? Align(
                    alignment: Alignment.topRight,
                      child: Container(
                      width: 50,
                      height: 30,
                      decoration:BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icon_star.png',
                          width: 22,
                          height: 22,
                          ),
                      ),
                    ),
                  ) : Container(),
              ],
            ),
             SizedBox(
               height: 12,
             ),
             Text(
               city.name.toString(),
               style: blackTextStyle.copyWith(
                 fontSize: 16,
               ),
               
             ), 
          ],
        ),
      ),
    );
  }
}