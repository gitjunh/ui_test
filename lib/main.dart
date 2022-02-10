import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      // home: MyStatelessWidget(),
      // home: BottomAppBarDemo(),
      // home: BottomNavigationDemo(
      //     restorationId: 'bottom_navigation_labels_demo',
      //     type: BottomNavigationDemoType.withoutLabels),
      // home: BottomSheetDemo(type:BottomSheetDemoType.modal),
      // home: ButtonDemo(type: ButtonDemoType.floating),
    );
  }
}

// enum ButtonDemoType {
//   text,
//   elevated,
//   outlined,
//   toggle,
//   floating,
// }
//
// class ButtonDemo extends StatelessWidget {
//   const ButtonDemo({Key? key, required this.type}) : super(key: key);
//
//   final ButtonDemoType type;
//
//   String _title(BuildContext context) {
//     switch (type) {
//       case ButtonDemoType.text:
//         return '텍스트 버튼';
//       case ButtonDemoType.elevated:
//         return '돌출 버튼';
//       case ButtonDemoType.outlined:
//         return '윤곽 버튼';
//       case ButtonDemoType.toggle:
//         return '전환 버튼';
//       case ButtonDemoType.floating:
//         return '플로팅 작업 버튼';
//     }
//     return '';
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Widget buttons;
//     switch (type) {
//       case ButtonDemoType.text:
//         buttons = _TextButtonDemo();
//         break;
//       case ButtonDemoType.elevated:
//         buttons = _ElevatedButtonDemo();
//         break;
//       case ButtonDemoType.outlined:
//         buttons = _OutlinedButtonDemo();
//         break;
//       case ButtonDemoType.toggle:
//         buttons = _ToggleButtonsDemo();
//         break;
//       case ButtonDemoType.floating:
//         buttons = _FloatingActionButtonDemo();
//         break;
//     }
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text(_title(context)),
//       ),
//       body: buttons,
//     );
//   }
// }
//
// class _TextButtonDemo extends StatelessWidget {
//   const _TextButtonDemo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextButton(
//             onPressed: () {},
//             child: const Text('버튼'),
//           ),
//           const SizedBox(height: 12),
//           TextButton.icon(
//             icon: const Icon(Icons.add, size: 18),
//             onPressed: () {},
//             label: const Text('버튼'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _ElevatedButtonDemo extends StatelessWidget {
//   const _ElevatedButtonDemo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text('버튼'),
//           ),
//           const SizedBox(height: 12),
//           ElevatedButton.icon(
//             icon: const Icon(Icons.add, size: 18),
//             label: const Text('버튼'),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _OutlinedButtonDemo extends StatelessWidget {
//   const _OutlinedButtonDemo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           OutlinedButton(
//             onPressed: () {},
//             child: const Text('버튼'),
//           ),
//           const SizedBox(height: 12),
//           OutlinedButton.icon(
//             icon: const Icon(Icons.add, size: 18),
//             label: const Text('버튼'),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _ToggleButtonsDemo extends StatefulWidget {
//   const _ToggleButtonsDemo({Key? key}) : super(key: key);
//
//   @override
//   _ToggleButtonsDemoState createState() => _ToggleButtonsDemoState();
// }
//
// class _ToggleButtonsDemoState extends State<_ToggleButtonsDemo>
//     with RestorationMixin {
//   final isSelected = [
//     RestorableBool(false),
//     RestorableBool(true),
//     RestorableBool(false),
//   ];
//
//   @override
//   String get restorationId => 'toggle_button_demo';
//
//   @override
//   void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//     registerForRestoration(isSelected[0], 'first_item');
//     registerForRestoration(isSelected[1], 'second_item');
//     registerForRestoration(isSelected[2], 'third_item');
//   }
//
//   @override
//   void dispose() {
//     for (final restorableBool in isSelected) {
//       restorableBool.dispose();
//     }
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ToggleButtons(
//         onPressed: (index) {
//           setState(() {
//             isSelected[index].value = !isSelected[index].value;
//           });
//         },
//         isSelected: isSelected.map((e) => e.value).toList(),
//         children: const [
//           Icon(Icons.ac_unit),
//           Icon(Icons.call),
//           Icon(Icons.cake),
//         ],
//       ),
//     );
//   }
// }
//
// class _FloatingActionButtonDemo extends StatelessWidget {
//   const _FloatingActionButtonDemo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           FloatingActionButton(
//             onPressed: () {},
//             tooltip: '만들기',
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(height: 20),
//           FloatingActionButton.extended(
//             icon: const Icon(Icons.add),
//             onPressed: () {},
//             label: const Text('만들기'),
//           ),
//         ],
//       ),
//     );
//   }
// }





// enum BottomSheetDemoType {
//   persistent,
//   modal,
// }
//
// class BottomSheetDemo extends StatelessWidget {
//   const BottomSheetDemo({
//     Key? key,
//     required this.type,
//   }) : super(key: key);
//
//   final BottomSheetDemoType type;
//
//   String _title(BuildContext context) {
//     switch(type) {
//       case BottomSheetDemoType.persistent:
//         return '지속적 하단 시트';
//       case BottomSheetDemoType.modal:
//         return '모달 하단 시트';
//     }
//     return '';
//   }
//
//   Widget _bottomSheetDemo(BuildContext context) {
//     switch(type) {
//       case BottomSheetDemoType.persistent:
//         return _PersistentBottomSheetDemo();
//         break;
//       case BottomSheetDemoType.modal:
//       default:
//         return _ModalBottomSheetDemo();
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // We wrap the demo in a [Navigator] to make sure that the modal bottom
//     // sheets gets dismissed when changing demo.
//     return Navigator(
//       // Adding [ValueKey] to make sure that the widget gets rebuilt when
//       // changing type.
//       key: ValueKey(type),
//       onGenerateRoute: (settings) {
//         return MaterialPageRoute<void>(
//           builder: (context) => Scaffold(
//             appBar: AppBar(
//               automaticallyImplyLeading: false,
//               title: Text(_title(context)),
//             ),
//             floatingActionButton: FloatingActionButton(
//               onPressed: (){},
//               backgroundColor: Theme.of(context).colorScheme.secondary,
//               child: const Icon(
//                 Icons.add,
//                 semanticLabel: '하단 시트 표시',
//               ),
//             ),
//             body: _bottomSheetDemo(context),
//           ),
//         );
//       },
//     );
//   }
// }
//
// class _PersistentBottomSheetDemo extends StatefulWidget {
//   const _PersistentBottomSheetDemo({Key? key}) : super(key: key);
//
//   @override
//   _PersistentBottomSheetDemoState createState() =>
//       _PersistentBottomSheetDemoState();
// }
//
// class _PersistentBottomSheetDemoState
//     extends State<_PersistentBottomSheetDemo> {
//   late VoidCallback _showBottomSheetCallback;
//
//   @override
//   void initState() {
//     super.initState();
//     _showBottomSheetCallback = _showPersistentBottomSheet;
//   }
//
//   void _showPersistentBottomSheet() {
//     setState(() {
//       // Disable the show bottom sheet button.
//       // _showBottomSheetCallback = null;
//     });
//
//     Scaffold.of(context)
//         .showBottomSheet<void>(
//           (context) {
//             return const _BottomSheetContent();
//           },
//           elevation: 25,
//         )
//         .closed
//         .whenComplete(() {
//           if (mounted) {
//             setState(() {
//               // Re-enable the bottom sheet button.
//               _showBottomSheetCallback = _showPersistentBottomSheet;
//             });
//           }
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: _showBottomSheetCallback,
//         child: const Text('하단 시트 표시'),
//       ),
//     );
//   }
// }
//
// class _BottomSheetContent extends StatelessWidget {
//   const _BottomSheetContent({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 70,
//             child: Center(
//               child: Text(
//                 '헤더',
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//           const Divider(thickness: 1),
//           Expanded(
//             child: ListView.builder(
//               itemCount: 21,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('항목 $index'),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _ModalBottomSheetDemo extends StatelessWidget {
//   const _ModalBottomSheetDemo({Key? key}) : super(key: key);
//
//   void _showModalBottomSheet(BuildContext context) {
//     showModalBottomSheet<void>(
//       context: context,
//       builder: (context) {
//         return const _BottomSheetContent();
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           _showModalBottomSheet(context);
//         },
//         child: const Text('하단 시트 표시'),
//       ),
//     );
//   }
// }





// enum BottomNavigationDemoType {
//   withLabels,
//   withoutLabels,
// }
//
// class BottomNavigationDemo extends StatefulWidget {
//   const BottomNavigationDemo({
//     Key? key,
//     @required this.restorationId,
//     @required this.type,
//   }) : super(key: key);
//
//   final String? restorationId;
//   final BottomNavigationDemoType? type;
//
//   @override
//   _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
// }
//
// class _BottomNavigationDemoState extends State<BottomNavigationDemo>
//     with RestorationMixin {
//   final RestorableInt _currentIndex = RestorableInt(0);
//
//   @override
//   String get restorationId => widget.restorationId!;
//
//   @override
//   void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//     registerForRestoration(_currentIndex, 'bottom_navigation_tab_index');
//   }
//
//   @override
//   void dispose() {
//     _currentIndex.dispose();
//     super.dispose();
//   }
//
//   String _title(BuildContext context) {
//     switch (widget.type) {
//       case BottomNavigationDemoType.withLabels:
//         return '지속적 라벨';
//       case BottomNavigationDemoType.withoutLabels:
//         return '선택한 라벨';
//     }
//     return '';
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     final textTheme = Theme.of(context).textTheme;
//
//     var bottomNavigationBarItems = <BottomNavigationBarItem>[
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.add_comment),
//         label: '댓글',
//       ),
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.calendar_today),
//         label: '캘린더',
//       ),
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.account_circle),
//         label: '계정',
//       ),
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.alarm_on),
//         label: '알람',
//       ),
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.camera_enhance),
//         label: '카메라',
//       ),
//     ];
//
//     if (widget.type == BottomNavigationDemoType.withLabels) {
//       bottomNavigationBarItems = bottomNavigationBarItems.sublist(
//           0, bottomNavigationBarItems.length - 2);
//       _currentIndex.value = _currentIndex.value
//           .clamp(0, bottomNavigationBarItems.length - 1)
//           .toInt();
//     }
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text(_title(context)),
//       ),
//       body: Center(
//         child: PageTransitionSwitcher(
//           transitionBuilder: (child, animation, secondaryAnimation) {
//             return FadeThroughTransition(
//               animation: animation,
//               secondaryAnimation: secondaryAnimation,
//               child: child,
//             );
//           },
//           child: _NavigaionDestinationView(
//             key: UniqueKey(),
//             item: bottomNavigationBarItems[_currentIndex.value],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         showUnselectedLabels:
//         widget.type == BottomNavigationDemoType.withLabels,
//         items: bottomNavigationBarItems,
//         currentIndex: _currentIndex.value,
//         type: BottomNavigationBarType.fixed,
//         // selectedFontSize: textTheme.caption.fontSize,
//         // unselectedFontSize: textTheme.caption.fontSize,
//         onTap: (index) {
//           setState((){
//             _currentIndex.value = index;
//           });
//         },
//         selectedItemColor: colorScheme.onPrimary,
//         unselectedItemColor: colorScheme.onPrimary.withOpacity(0.38),
//         backgroundColor: colorScheme.primary,
//       ),
//     );
//   }
// }
//
// class _NavigaionDestinationView extends StatelessWidget {
//   const _NavigaionDestinationView({Key? key, required this.item})
//       : super(key: key);
//
//   final BottomNavigationBarItem item;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         ExcludeSemantics(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(8),
//                 child: Image.asset(
//                   'assets/demos/bottom_navigation_background.png',
//                   package: 'flutter_gallery_assets',
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Center(
//           child: IconTheme(
//             data: const IconThemeData(
//               color: Colors.white,
//               size: 80,
//             ),
//             child: Semantics(
//               label: 'aaa-aaa',
//               child: item.icon,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }





// class BottomAppBarDemo extends StatefulWidget {
//   const BottomAppBarDemo({Key? key}) : super(key: key);
//
//   @override
//   _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
// }
//
// class _BottomAppBarDemoState extends State<BottomAppBarDemo>
//     with RestorationMixin {
//   final RestorableBool _showFab = RestorableBool(true);
//   final RestorableBool _showNotch = RestorableBool(true);
//   final RestorableInt _currentFabLocation = RestorableInt(0);
//
//   @override
//   String get restorationId => 'bottom_app_bar_demo';
//
//   @override
//   void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//     registerForRestoration(_showFab, 'show_fab');
//     registerForRestoration(_showNotch, 'show_notch');
//     registerForRestoration(_currentFabLocation, 'fab_location');
//   }
//
//   @override
//   dispose() {
//     _showFab.dispose();
//     _showNotch.dispose();
//     _currentFabLocation.dispose();
//     super.dispose();
//   }
//
//   static const List<FloatingActionButtonLocation> _fabLocations = [
//     FloatingActionButtonLocation.endDocked,
//     FloatingActionButtonLocation.centerDocked,
//     FloatingActionButtonLocation.endFloat,
//     FloatingActionButtonLocation.centerFloat,
//   ];
//
//   void _onShowNotchChanged(bool value) {
//     setState(() {
//       _showNotch.value = value;
//     });
//   }
//
//   void _onShowFabChanged(bool value) {
//     setState(() {
//       _showFab.value = value;
//     });
//   }
//
//   void _onFabLocationChanged(int? value) {
//     setState(() {
//       _currentFabLocation.value = value!;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text('하단 앱 바'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.only(bottom: 88),
//         children: [
//           SwitchListTile(
//             title: const Text('플로팅 작업 버튼'),
//             value: _showFab.value,
//             onChanged: _onShowFabChanged,
//           ),
//           SwitchListTile(
//             title: const Text('노치'),
//             value: _showNotch.value,
//             onChanged: _onShowNotchChanged,
//           ),
//           const Padding(
//             padding: EdgeInsets.all(16),
//             child: Text('플로팅 작업 버튼 위치'),
//           ),
//           RadioListTile<int>(
//             title: const Text('도킹됨 - 끝'),
//             value: 0,
//             groupValue: _currentFabLocation.value,
//             onChanged: _onFabLocationChanged,
//           ),
//           RadioListTile<int>(
//             title: const Text('도킹됨 - 중앙'),
//             value: 1,
//             groupValue: _currentFabLocation.value,
//             onChanged: _onFabLocationChanged,
//           ),
//           RadioListTile<int>(
//             title: const Text('플로팅 - 끝'),
//             value: 2,
//             groupValue: _currentFabLocation.value,
//             onChanged: _onFabLocationChanged,
//           ),
//           RadioListTile<int>(
//             title: const Text('플로팅 - 중앙'),
//             value: 3,
//             groupValue: _currentFabLocation.value,
//             onChanged: _onFabLocationChanged,
//           ),
//         ],
//       ),
//       floatingActionButton: _showFab.value
//           ? FloatingActionButton(
//               onPressed: () {},
//               tooltip: '만들기',
//               child: const Icon(Icons.add),
//             )
//           : null,
//       floatingActionButtonLocation: _fabLocations[_currentFabLocation.value],
//       bottomNavigationBar: _DemoBottomAppBar(
//         fabLocation: _fabLocations[_currentFabLocation.value],
//         shape: _showNotch.value ? const CircularNotchedRectangle() : null,
//       ),
//     );
//   }
// }
//
// class _DemoBottomAppBar extends StatelessWidget {
//   const _DemoBottomAppBar({
//     required this.fabLocation,
//     required this.shape,
//   });
//
//   final FloatingActionButtonLocation fabLocation;
//   final NotchedShape? shape;
//
//   static final centerLocations = <FloatingActionButtonLocation>[
//     FloatingActionButtonLocation.centerDocked,
//     FloatingActionButtonLocation.centerFloat,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       shape: shape,
//       color: Colors.deepPurple,
//       child: IconTheme(
//         data: const IconThemeData(color: Colors.white),
//         child: Row(
//           children: [
//             IconButton(
//               tooltip: '탐색메뉴 열기',
//               icon: const Icon(Icons.menu),
//               onPressed: () {},
//             ),
//             if (centerLocations.contains(fabLocation)) const Spacer(),
//             IconButton(
//               tooltip: '검색',
//               icon: const Icon(Icons.search),
//               onPressed: () {},
//             ),
//             IconButton(
//               tooltip: '즐겨찾기',
//               icon: const Icon(Icons.favorite),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('The MaterialBanner is below'),
//       ),
//       body: const MaterialBanner(
//         padding: EdgeInsets.all(20),
//         content: Text('Hello, I am a Material Banner'),
//         leading: Icon(Icons.agriculture_outlined),
//         backgroundColor: Color(0xFFE0E0E0),
//         actions: <Widget>[
//           TextButton(onPressed: null, child: Text('OPEN'),),
//           TextButton(onPressed: null, child: Text('DISMISS'),),
//         ],
//       ),
//     );
//   }
// }
