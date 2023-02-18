import 'dart:io';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

//whatsapp launcer from url
void openWhatsapp(
    {required BuildContext context,
    required String text,
    required String number}) async {
  var whatsapp = number; //+92xx enter like this
  var whatsappURlAndroid = "whatsapp://send?phone=$whatsapp&text=$text";
  var whatsappURLIos = "https://wa.me/$whatsapp?text=${Uri.tryParse(text)}";
  if (Platform.isIOS) {
    // for iOS phone only
    if (await canLaunchUrl(Uri.parse(whatsappURLIos))) {
      await launchUrl(Uri.parse(
        whatsappURLIos,
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Whatsapp tidak terpasang")));
    }
  } else {
    // android , web

    if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
      var status = await Permission.camera.status;
      if (status.isDenied) {
        // We didn't ask for permission yet or the permission has been denied before but not permanently.
      }

// You can can also directly ask the permission about its status.
      await launchUrl(Uri.parse(whatsappURlAndroid));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Whatsapp tidak terpasang")));
    }
  }
}
