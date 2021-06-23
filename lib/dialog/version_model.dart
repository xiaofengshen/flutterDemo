import 'dart:convert';

import 'package:untitled/net/api.dart';
import 'package:untitled/net/http_callback.dart';
import 'package:untitled/net/http_utils.dart';
import 'package:untitled/bean/version_info.dart';

class VersionModel {
  checkUpdate(HttpCallback<VersionInfo> callback) async {
    var resultData =
        await HttpUtils.getInstance().post(Api.versionUrl, data: {});
    if (resultData.isSuccess) {
      var versionInfo = VersionInfo.fromJson(resultData.data);
      callback.onSuccess(versionInfo );
    } else {
      callback.onError(resultData.code, resultData.msg);
    }
  }
  
}
