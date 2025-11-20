import 'package:flutter/material.dart';
import 'package:portfolio_app/common_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, PageType.home),
      backgroundColor: const Color(0xFFF2F2F2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        children: [
          // Intro Section
          _buildIntroSection(context),

          const SizedBox(height: 135),

          // Profile Section
          _buildProfileSection(),

          const SizedBox(height: 100),

          // Skills Section
          _buildSkillsSection(),

          const SizedBox(height: 100),

          // My Story Section
          _buildMyStorySection(),

          const SizedBox(height: 205),
        ],
      ),
    );
  }

  Widget _buildMyStorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1) My Story 섹션의 타이틀
        _buildHomeSectionTitle("My Story"),

        Container(height: 30),

        // 2) My Story 섹션의 본문
        Text(
          "경영학을 전공하여 마케팅 관련 전공을 집중적으로 이수하며 통산 30번 이상의 팀 프로젝트를 진행했습니다.\n"
          "뿐만 아니라, 대내외 홍보대사 활동 및 콘텐츠 관련 인턴 경험을 통해 콘텐츠 마케팅에 대한 역량을 길러왔습니다.",
          style: TextStyle(
            fontSize: 16,
            height: 24 / 16,
            fontWeight: FontWeight.w300,
            color: Color(0xFF38393B),
          ),
        ),
      ],
    );
  }

  Widget _buildHomeSectionTitle(String text) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          fontFamily: "ProductSans",
        ),
        children: [
          TextSpan(text: text, style: TextStyle(color: Color(0xFF6327E9))),
          TextSpan(text: ".", style: TextStyle(color: Color(0xFF38393B))),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 타이틀
        _buildHomeSectionTitle("Profile"),

        Container(height: 30),

        // 본문
        _buildProfileBody(),
      ],
    );
  }

  // 프로필 섹션 본문
  Widget _buildProfileBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 경력
        const Text(
          "경력",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Color(0xFF38393B),
          ),
        ),
        const SizedBox(height: 12),
        _profileItem("• 페타소나", "2025.09 - 2025.11"),
        _sub("- SNS 채널 운영"),
        _sub("- 트렌드 기반 콘텐츠 주제 발굴 및 제작"),
        _sub("- 데이터 기반 퍼포먼스 개선"),
        const SizedBox(height: 12),
        _profileItem("• 천재교육", "2022.09 - 2022.12"),
        _sub("- 웹 신규 서비스 런칭"),
        _sub("- 콘텐츠 기획 및 제작"),
        _sub("- GA 기반 마케팅 전략 기획"),
        const SizedBox(height: 8),
        _profileItem("• 동국대학교 연구기획실", "2019.09 - 2021.01"),
        _sub("- 연구 데이터 리서치"),
        _sub("- 데이터 관리 및 문서 작성 담당"),
        _sub("- 사무 작업 및 회의 지원"),

        const SizedBox(height: 24),

        // 학력
        const Text(
          "학력",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Color(0xFF38393B),
          ),
        ),
        const SizedBox(height: 12),
        _profileItem("동국대학교 경영학", "2019.03 - 2025.08"),

        const SizedBox(height: 24),

        // 외국어
        const Text(
          "외국어",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Color(0xFF38393B),
          ),
        ),
        const SizedBox(height: 12),
        _profileItem("영어  OPic IH", "2025.09"),

        const SizedBox(height: 24),

        // 기타
        const Text(
          "기타",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Color(0xFF38393B),
          ),
        ),
        const SizedBox(height: 12),
        _profileItem("• LG전자 DX SCHOOL", "2024.12 - 2025.06"),
        _profileItem("• 브랜드마케팅 직무부트캠프", "2024.07 - 2024.08"),
        _profileItem("• EBS 유튜브 채널 '딩대' 대학생 홍보대사", "2021.01 - 2021.02"),
        _profileItem("• 동국대 공식 홍보대사 ‘동감’", "2019.03 - 2020.12"),
        _profileItem("• 한국상경학회(KCC)", "2019.03 - 2019.10"),
      ],
    );
  }

  // 항목 + 날짜 (날짜는 작은 폰트)
  Widget _profileItem(String text, String date) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 왼쪽: 항목 텍스트 (Skills 본문과 동일 스타일)
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              height: 1.8,
              fontWeight: FontWeight.w300,
              color: Color(0xFF6A6C70),
            ),
          ),
        ),
        const SizedBox(width: 12),
        // 오른쪽: 날짜(더 작게)
        Text(
          date,
          style: const TextStyle(
            fontSize: 12, // ← 더 작게
            height: 1.8,
            fontWeight: FontWeight.w300,
            color: Color(0xFF6A6C70),
          ),
        ),
      ],
    );
  }

  Widget _sub(String text) => Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        height: 1.8,
        fontWeight: FontWeight.w300,
        color: Color(0xFF6A6C70),
      ),
    ),
  );

  Widget _buildSkillsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 타이틀
        _buildHomeSectionTitle("Skills"),
        Container(height: 30),
        _buildSkillsBody(),
      ],
    );
  }

  Widget _buildSkillsBody() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Hard Skills
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hard Skills 🛠️",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF38393B),
                ),
              ),
              SizedBox(height: 12),
              _skill("• MS Office skills (엑셀, 워드, 파워포인트)"),
              _sub("- 컴퓨터활용능력 1급 보유"),
              _skill("• 그래픽 디자인"),
              _sub("- GTQ그래픽기술자격 1급 보유"),
              _skill("• 데이터 분석"),
              _sub("- GA4, ADsP 자격증 보유"),
              _skill("• 시장 조사 및 트렌드 파악"),
              _sub("- 실무 경험 다수"),
            ],
          ),
        ),
        SizedBox(width: 60),
        // Soft Skills
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Soft Skills💡",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF38393B),
                ),
              ),
              SizedBox(height: 12),
              _skill("• 커뮤니케이션"),
              _skill("• 협동심"),
              _skill("• 꼼꼼함"),
              _skill("• 리더십"),
              _skill("• 플래닝과 스케줄링"),
            ],
          ),
        ),
      ],
    );
  }

  // 👇 반드시 클래스 안에 넣기!
  Widget _skill(String text) => Text(
    text,
    style: TextStyle(
      fontSize: 14,
      height: 1.8,
      fontWeight: FontWeight.w300,
      color: Color(0xFF6A6C70),
    ),
  );

  Widget _buildIntroSection(BuildContext context) {
    return Container(
      height: 340,
      margin: EdgeInsets.only(top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 프로필 이미지
          _buildProfileImage(),

          Container(width: 110),

          // 자기소개 문구
          _buildHeaderIntroduction(context),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF6327E9), width: 0.5),
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Container(
        width: 230,
        height: 230,
        margin: EdgeInsets.all(28),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF6327E9), width: 1),
          borderRadius: BorderRadius.circular(1000),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset("assets/profile.jpg", fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _buildHeaderIntroduction(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " Hi, I'm Sieun Yoo👋",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
        ),
        Container(height: 20),
        Text(
          "콘텐츠",
          style: TextStyle(
            height: 1,
            color: Color(0xFF6327E9),
            fontSize: 70,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          "마케터",
          style: TextStyle(
            height: 1,
            color: Color(0xFF38393B),
            fontSize: 70,
            fontWeight: FontWeight.w900,
          ),
        ),

        Container(height: 20),

        Text(
          "마음을 읽는 콘텐츠 마케터, 유시은입니다.",
          style: TextStyle(
            color: Color(0xFF38393B),
            fontSize: 22,
            fontWeight: FontWeight.w300,
            height: 27 / 22,
          ),
        ),

        Container(height: 44),

        _buildHeaderButtons(context),
      ],
    );
  }

  Widget _buildHeaderButtons(BuildContext context) {
    return Row(
      children: [
        // Get In Touch 버튼
        _buildGetInTouchButton(context),

        Container(width: 20),

        // Browse Projects 버튼
        _buildBrowseProjectsButton(context),
      ],
    );
  }

  Widget _buildGetInTouchButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // "/contact" 페이지로 이동
        Navigator.of(context).pushNamed("/contact");
      },
      child: Container(
        height: 53,
        decoration: BoxDecoration(
          color: Color(0xFF6327E9),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Center(
          child: Text(
            "Get In Touch",
            style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget _buildBrowseProjectsButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // "/projects" 페이지로 이동
        Navigator.of(context).pushNamed("/projects");
      },
      child: Container(
        height: 53,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Color(0xFF38393B)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text(
            "Browse Projects",
            style: TextStyle(color: Color(0xFF38393B), fontSize: 16),
          ),
        ),
      ),
    );
  }
}
