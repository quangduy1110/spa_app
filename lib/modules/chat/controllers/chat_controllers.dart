import 'package:app_spa/model/call.dart';
import 'package:app_spa/model/chat.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ChatController extends GetxController {
  RxList<Chat> listChats = <Chat>[].obs;
  RxList<Call> listCalls = <Call>[].obs;

  @override
  void onInit() {
    super.onInit();
    getListChat();
    getListCall();
  }

  getListChat() async {
    String response = await rootBundle.loadString('assets/json/chat.json');
    listChats.value = chatFromJson(response);
    DateTime dateTimeNow = DateTime.now();
    listChats.sort(((a, b) => b.listChat![(b.listChat!.length-1)].time!.difference(dateTimeNow).inSeconds.compareTo(a.listChat![(a.listChat!.length-1)].time!.difference(dateTimeNow).inSeconds)));
  }

  getListCall() async {
    String response = await rootBundle.loadString('assets/json/call.json');
    listCalls.value = callFromJson(response);
    DateTime dateTimeNow = DateTime.now();
    listCalls.sort(((a, b) => b.listCall![(b.listCall!.length-1)].time!.difference(dateTimeNow).inSeconds.compareTo(a.listCall![(a.listCall!.length-1)].time!.difference(dateTimeNow).inSeconds)));
  }

  String getIconCall(int type){
    if(type == 0){
      return 'assets/icons/missed_call_icon.svg';
    } else if(type == 1){
      return 'assets/icons/incoming_call_icon.svg';
    } else{
      return 'assets/icons/outgoing_call_icon.svg';
    }
    return"";
  }

  String getTypeCall(int type){
    if(type == 0){
      return 'Missed';
    } else if(type == 1){
      return 'Outgoing';
    } else{
      return 'Incoming';
    }
    return '';
  }

  bool checkDateTime(DateTime dateTime) {
    DateTime dateTimeNow = DateTime.now();
    DateFormat dateFormat = DateFormat("MMM dd, yyyy");
    String dateNow = dateFormat.format(dateTimeNow);
    String date = dateFormat.format(dateTime);
    if(date.compareTo(dateNow) == 0){
      return true;
    }
    return false;
  }

  String converDateTime(DateTime dateTime){
    String result = "";
    if(checkDateTime(dateTime)){
      DateFormat dateFormat = DateFormat("hh:mm a");
      result = dateFormat.format(dateTime);
    } else{
      DateFormat dateFormat = DateFormat("MMM dd, yyyy");
      result = dateFormat.format(dateTime);
    }
    return result;
  }
}
