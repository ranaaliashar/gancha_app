

import 'package:flutter/material.dart';

navigationPushFunction({required Widget screen,required BuildContext context}){
return Navigator.push(context, MaterialPageRoute(builder: (_)=> screen));
}