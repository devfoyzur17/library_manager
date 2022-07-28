import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_manager/widgets/custom_appbar.dart';

class MemberDetailsPage extends StatefulWidget {
  static const routeName = "member-details";
  const MemberDetailsPage({Key? key}) : super(key: key);

  @override
  State<MemberDetailsPage> createState() => _MemberDetailsPageState();
}

class _MemberDetailsPageState extends State<MemberDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Member Details", context),
    );
  }
}