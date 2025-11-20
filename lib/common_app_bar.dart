import 'package:flutter/material.dart';

enum PageType { home, projects, contact }

PreferredSizeWidget commonAppBar(BuildContext context, PageType selectedPage) {
  // 공통 앱바 위젯을 완성해보세요.
  // selectedPage에 따라 텍스트를 강조해줍니다.
  // 예를 들어 selectedPage가 home이면, home 글씨를 강조해줍니다.

  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTextButton(context, PageType.home, selectedPage == PageType.home),
        Container(width: 37),
        _buildTextButton(
          context,
          PageType.projects,
          selectedPage == PageType.projects,
        ),
        Container(width: 37),
        _buildTextButton(
          context,
          PageType.contact,
          selectedPage == PageType.contact,
        ),
      ],
    ),
    backgroundColor: Color(0xFFF2F2F2),
    automaticallyImplyLeading: false,
  );
}

Widget _buildTextButton(
  BuildContext context,
  PageType pageType,
  bool isSelected,
) {
  String text = "";
  String route = "";

  final Color selectedColor = Color(0xFF6327E9);
  final Color unselectedColor = Color(0xFF38393B);
  final FontWeight selectedFontWeight = FontWeight.w900;
  final FontWeight unselectedFontWeight = FontWeight.normal;

  switch (pageType) {
    case PageType.home:
      text = "Home";
      route = "/";
      break;
    case PageType.contact:
      text = "Contact";
      route = "/contact";
      break;
    case PageType.projects:
      text = "Projects";
      route = "/projects";
      break;
  }

  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(route);
    },
    child: Text(
      text,
      style: TextStyle(
        color: isSelected ? selectedColor : unselectedColor,
        fontSize: 16,
        fontWeight: isSelected ? selectedFontWeight : unselectedFontWeight,
      ),
    ),
  );
}