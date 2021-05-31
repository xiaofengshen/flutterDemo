import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login/LoginPage.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Page"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190930%2F11%2F1569814966-kqFfTBHvAy.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623312294&t=84549ea449bfc2b047c9934283323082"),
                        fit: BoxFit.cover)),
                child: ListView(
                  children: <Widget>[Text("我是头部")],
                )),
            ListTile(
              title: Text("个人中心"),
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("系统设置"),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("用户名"),
              accountEmail: Text("825553013@qq.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190713%2F18%2F1563013596-VaXoKxtEQc.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623312294&t=849c51255e3864ea979e3de8154ad507",
                ),
              ),
              otherAccountsPictures: [
                Image.network(
                    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190713%2F18%2F1563013596-VaXoKxtEQc.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623312294&t=849c51255e3864ea979e3de8154ad507"),
                Image.network(
                    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190713%2F18%2F1563013596-VaXoKxtEQc.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623312294&t=849c51255e3864ea979e3de8154ad507"),
                Image.network(
                    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190713%2F18%2F1563013596-VaXoKxtEQc.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623312294&t=849c51255e3864ea979e3de8154ad507"),
                Image.network(
                    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190713%2F18%2F1563013596-VaXoKxtEQc.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623312294&t=849c51255e3864ea979e3de8154ad507"),
              ],
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190930%2F11%2F1569814966-kqFfTBHvAy.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623312294&t=84549ea449bfc2b047c9934283323082"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              title: Text("个人中心"),
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("系统设置"),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
