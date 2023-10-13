import 'package:app_kash_application/app/ui/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backgroundColorScaffold,
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Stack(
                      fit: StackFit.loose,
                      children: [
                        CircleAvatar(
                          radius: height * 0.08,
                          backgroundImage:
                              AssetImage('assets/page-1/images/button-KWo.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: height * 0.03,
                            child: Icon(Icons.camera_alt),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.01),
              Expanded(
                child: Container(
                  height: height * 0.9,
                  width: double.infinity,
                  padding: EdgeInsets.all(height * 0.03),
                  decoration: const BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Parsonal Information',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.3799999952,
                              color: textContColor,
                            ),
                          ),
                          _status ? _getEditIcon() : Container(),
                        ],
                      ),
                      SizedBox(height: height * 0.3),
                      Text(
                        'Name',
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                          letterSpacing: -0.3199999928,
                          color: textContColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    myFocusNode.dispose();

    super.dispose();
  }

  Widget _getEditIcon() {
    return GestureDetector(
      child: const CircleAvatar(
        backgroundColor: iconColor,
        radius: 14,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 16,
        ),
      ),
      onTap: () {
        _status = false;
      },
    );
  }
}
