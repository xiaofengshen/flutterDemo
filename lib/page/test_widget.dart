import 'package:flutter/cupertino.dart';
import 'package:untitled/page/share_data_inherite.dart';


class TestWidget extends StatelessWidget {
  const TestWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("TestWidget:build");
    return Container(
      child: Text(ShareDataInherite.of(context).data.toString()),

    );
  }

}
