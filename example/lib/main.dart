import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'CupertinoListSection.insetGrouped without leading demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: const Text('Reminders'),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text('Edit'),
              onPressed: () {},
            ),
            backgroundColor: CupertinoColors.systemGroupedBackground,
            border: null,
            stretch: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <CupertinoListSection>[
                CupertinoListSection.insetGrouped(
                  header: const Text('My Lists'),
                  children: <CupertinoListTile>[
                    CupertinoListTile.notched(
                      title: const Text('Reminders'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.list_bullet,
                      ),
                      additionalInfo: const Text('4'),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) =>
                              const _SecondPage(),
                        ),
                      ),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Old Reminders'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemYellow,
                        icon: CupertinoIcons.list_bullet,
                      ),
                      additionalInfo: const Text('42'),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) =>
                              const _SecondPage(),
                        ),
                      ),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Important'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemRed,
                        icon: CupertinoIcons.list_bullet,
                      ),
                      additionalInfo: const Text('2'),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) =>
                              const _SecondPage(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        previousPageTitle: 'Lists',
      ),
      child: Container(),
    );
  }
}

class _DummyIcon extends StatelessWidget {
  const _DummyIcon({Key? key, required this.color, required this.icon})
      : super(key: key);

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Icon(
          icon,
          color: CupertinoColors.white,
          size: 18.0,
        ),
      ),
    );
  }
}
