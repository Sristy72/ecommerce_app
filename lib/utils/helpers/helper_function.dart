import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

class THelperFunction{
  static Color? getColor(String value){
    //define your product specific colour here and it will match the attribute color and show the specific
    if(value == 'Green'){
      return Colors.green;
    }else if(value == 'Red'){
      return Colors.red;
    }else if(value == 'Blue'){
      return Colors.blue;
    }else if(value == 'Pink'){
      return Colors.pink;
    }else if(value == 'Grey'){
      return Colors.grey;
    }else if(value == 'Purple'){
      return Colors.purple;
    }else if(value == 'Black'){
      return Colors.black;
    }else if(value == 'White'){
      return Colors.white;
    }else if(value == 'Yellow'){
      return Colors.yellow;
    }else if(value == 'Orange'){
      return Colors.orange;
    }else if(value == 'Brown'){
      return Colors.brown;
    }else if(value == 'Teal'){
      return Colors.teal;
    }else if(value == 'Indigo'){
      return Colors.indigo;
    }else{
      return null;
    }
  }

  static showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(content: Text(message)));
  }

  static showAlert(String title, String message){
    showDialog(context: Get.context!, builder: (BuildContext context){
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('OK'))
        ],
      );
    });
  }

  static navigateToScreen(BuildContext context, Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  static String truncateText(String text, int maxLength){
    if(text.length > maxLength){
      return text.substring(0, maxLength) + '...';
    }
    return text;
  }

  static bool isDarkMode(){
    return Theme.of(Get.context!).brightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd-MM-yyyy'}){
    return DateFormat(format).format(date);
  }

  static List removeDuplicates(List list){
    return list.toSet().toList();
  }

  static List wrapWidget(List<Widget> widgets, int rowSize){
    final wrapList = [];
    for(int i = 0; i < widgets.length; i += rowSize){
      final rowChildren = widgets.sublist(i, i + rowSize> widgets.length ? widgets.length : i + rowSize);
      wrapList.add(Row(children: rowChildren));
    }
    return wrapList;
  }
}