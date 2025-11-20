import 'package:flutter/material.dart';
import 'package:portfolio_app/common_app_bar.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, PageType.projects),
      backgroundColor: Color(0xFFF2F2F2),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 100),
        children: [
          Container(height: 60),

          // 1) 페이지 타이틀
          _buildPageTitles(),

          Container(height: 56),

          // 2) 1번째 앱
          _buildProject(
            "assets/dx.png",
            "LG전자 DX 프로젝트-펫케어 IoT 기획 및 개발",
            "반려견의 분리불안을 정량적으로 이해하기 위해,\n실시간 행동·환경 데이터를 기반으로 맞춤형 케어 경험을 제공하는 App과 IoT 서비스를 기획했습니다.",
            true,
          ),

          Container(height: 50),

          // 3) 2번째 앱
          _buildProject(
            "assets/cx.png",
            "LG전자 CX 프로젝트-오프라인 매장 공간 마케팅",
            "체험 중심 리테일 트렌드와 소비자의 ‘머무를 이유’에 집중하여,\nLG전자 베스트샵을 휴식·체험·브랜드 경험이 결합된 CX 기반 공간으로 리브랜딩했습니다.",
            false,
          ),

          Container(height: 50),

          // 4) 3번째 앱
          _buildProject(
            "assets/bx.png",
            "LG전자 BX 프로젝트-MZ세대를 위한 스마트 의류관리기",
            "MZ세대의 패션 소비 패턴과 나만의 스타일링 니즈를 반영해,\nAI 기반 추천과 사용자 데이터를 활용한 개인화된 스마트 의류관리 기기 콘셉트를 기획했습니다.",
            true,
          ),

          Container(height: 50),

          // 5) 4번째 앱
          _buildProject(
            "assets/kia.png",
            "라이프스타일을 결합한 기아 PBV 솔루션",
            "퇴근 후 이동 시간을 ‘나만의 가치 있는 시간’으로 전환하기 위해,\n다양한 취미 활동에 최적화된 목적기반 모빌리티를 제안했습니다.",
            false,
          ),

          Container(height: 50),

          // 6) 5번째 앱
          _buildProject(
            "assets/classarch.png",
            "천재교육 클래스 아카이브",
            "교사의 수업 준비 환경을 지원하기 위해 실제 니즈를 분석하고 이를 바탕으로 교육 자료를 재편성하여,\n수업에 바로 활용할 수 있는 다양한 콘텐츠 기획·제작을 진행했습니다.",
            true,
          ),

          Container(height: 50),

          // 7) 6번째 앱
          _buildProject(
            "assets/global.jpg",
            "한국콘텐츠진흥원 주관 코타버스(KOTAVERSE)",
            "외국인의 한국문화 학습 경험을 확장하기 위해 K-컬처 관심도 및 콘텐츠 선호도를 조사하고,\n이를 기반으로 한국문화 교육 콘텐츠를 기획했습니다.",
            false,
          ),

          Container(height: 50),

          // 8) 7번째 앱
          _buildProject(
            "assets/dinguniv.jpg",
            "EBS 유튜브 '딩대' 프로젝트",
            "유튜브 채널 홍보 콘텐츠 제작에 참여하며 MZ 타깃에 적합한 기획 아이디어를 제안해,\n브랜드 메시지 전달력을 높이는 콘텐츠 전략을 실무적으로 경험했습니다.",
            true,
          ),

          Container(height: 50),

          // 9) 8번째 앱
          _buildProject(
            "assets/ambassador.png",
            "동국대 공식 홍보대사 '동감'",
            "타깃층(고등학생·대학생 등)의 니즈를 분석해, 목적에 맞는 홍보 콘텐츠를 기획·제작하고,\nYouTube·Facebook·Instagram 등 다양한 플랫폼을 활용해\n학교 브랜드 아이덴티티와 가치 전달을 강화했습니다.",
            false,
          ),

          Container(height: 200),
        ],
      ),
    );
  }

  Widget _buildProject(
    String imagePath,
    String title,
    String description,
    bool isLeft,
  ) {
    final imgAlign =
        isLeft ? Alignment.centerLeft : Alignment.centerRight; // ⭐ 추가
    final textAlign = isLeft ? TextAlign.left : TextAlign.right; // ⭐ 추가

    return Column(
      crossAxisAlignment:
          isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        // ⭐ 수정: 배경 프레임 제거 → 이미지만 ClipRRect로 둥글게
        Align(
          alignment: imgAlign,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // ⭐ 이미지 모서리만 둥글게
            child: Image.asset(
              imagePath,
              width: 500,
              fit: BoxFit.fitWidth, // ⭐ 비율 유지
            ),
          ),
        ),

        const SizedBox(height: 18),

        // 제목
        SizedBox(
          // ⭐ 이미지 폭과 맞추기
          width: 600,
          child: Text(
            title,
            textAlign: textAlign, // ⭐ 지그재그 정렬
            style: const TextStyle(
              fontSize: 20,
              height: 1.0,
              fontWeight: FontWeight.w900,
              color: Color(0xFF38393B),
            ),
          ),
        ),

        const SizedBox(height: 12),

        // 설명
        SizedBox(
          // ⭐ 이미지 폭과 맞추기
          width: 600,
          child: Text(
            description,
            textAlign: textAlign, // ⭐ 지그재그 정렬
            style: const TextStyle(
              fontSize: 14,
              height: 18 / 14,
              fontWeight: FontWeight.w300,
              color: Color(0xFF38393B),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPageTitles() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 40,
              height: 1,
              fontWeight: FontWeight.w900,
              fontFamily: "ProductSans",
            ),
            children: [
              TextSpan(text: "My ", style: TextStyle(color: Color(0xFF38393B))),
              TextSpan(
                text: "Projects ",
                style: TextStyle(color: Color(0xFF6327E9)),
              ),
              TextSpan(
                text: "Creations",
                style: TextStyle(color: Color(0xFF38393B)),
              ),
            ],
          ),
        ),

        Container(height: 18),

        Container(
          child: Text(
            "데이터 분석을 기반으로 브랜드마케팅부터 상품기획, 콘텐츠 제작까지 다방면의 프로젝트를 성공적으로 이끌어왔습니다.",
            style: TextStyle(
              color: Color(0xFF38393B),
              fontSize: 16,
              height: 24 / 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
