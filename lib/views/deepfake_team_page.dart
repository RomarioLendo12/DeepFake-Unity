import 'package:deepfake/components/popup_menu_widget.dart';
import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';

class DeepfakeTeamPage extends StatelessWidget {
  const DeepfakeTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 7,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/df-logo.png',
              width: 132,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return PopupMenuWidget(
                      contents: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color(0XFF847eed).withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Login',
                              style: bodyText14.copyWith(
                                  color: brand900, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color(0XFF847eed).withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Register',
                              style: bodyText14.copyWith(
                                  color: brand900, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color(0XFF847eed).withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Home',
                              style: bodyText14.copyWith(
                                  color: brand900, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color(0XFF847eed).withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Our Team',
                              style: bodyText14.copyWith(
                                  color: brand900, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Icon(
                Icons.menu,
                color: brand800,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/logo-2.png',
                width: 108,
              ),
              Text(
                'UNITY DeepFake Development Team',
                textAlign: TextAlign.center,
                style: mobileH3.copyWith(color: brand900),
              ),
              const SizedBox(
                height: 50,
              ),
              MemberProfileContainer(
                avatar1: 'xave',
                name1: 'Fransiscus Xaverius Senduk',
                role1: 'Senior Developement Lead',
                function1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return Container();
                      });
                },
                avatar2: 'ian',
                name2: 'Febrian G. Lalamentik',
                role2: 'Development Lead',
                function2: () => print('ian'),
              ),
              MemberProfileContainer(
                avatar1: 'lens',
                name1: 'Romario Lendo',
                role1: 'Flutter Developer',
                function1: () => print('lens'),
                avatar2: 'sadu',
                name2: 'Gabriel F. Z. Sadu',
                role2: 'Backend Web Developer',
                function2: () => print('sadu'),
              ),
              MemberProfileContainer(
                avatar1: 'kanaya',
                name1: 'Kanaya Tumade',
                role1: 'Senior Data Scientist',
                function1: () => print('kanaya'),
                avatar2: 'revo',
                name2: 'Revo F. R. Ombeng',
                role2: 'Senior Data Scientist',
                function2: () => print('revo'),
              ),
              MemberProfileContainer(
                avatar1: 'angelina',
                name1: 'Angelina Chandra',
                role1: 'Cloud Engineer',
                function1: () => print('angelina'),
                avatar2: 'jovanka',
                name2: 'Jovanka D. Ruindungan',
                role2: 'Backend Web Developer',
                function2: () => print('jovanka'),
              ),
              MemberProfileContainer(
                avatar1: 'triadi',
                name1: 'Ahmad Triadi Julianto',
                role1: 'User Interface Designer',
                function1: () => print('triadi'),
                avatar2: 'ridho',
                name2: 'Ridho Aditya',
                role2: 'Machine Learning Engineer',
                function2: () => print('ridho'),
              ),
              MemberProfileContainer(
                avatar1: 'deo',
                name1: 'Deo Lolowang',
                role1: 'Machine Learning Engineer',
                function1: () => print('deo'),
                avatar2: 'luke',
                name2: 'Luke Mawuntu',
                role2: 'Machine Learning Engineer',
                function2: () => print('luke'),
              ),
              MemberProfileContainer(
                avatar1: 'galnoel',
                name1: 'Galnoel Rindengan',
                role1: 'Machine Learning Engineer',
                function1: () => print('galnoel'),
                avatar2: 'satria',
                name2: 'Satria Maharido Amu',
                role2: 'Machine Learning Engineer',
                function2: () => print('satria'),
              ),
              MemberProfileContainer(
                avatar1: 'frandi',
                name1: 'Frandi Andika',
                role1: 'Cloud Engineer',
                function1: () => print('frandi'),
                avatar2: 'regina',
                name2: 'Regina George',
                role2: 'Machine Learning Engineer',
                function2: () => print('regina'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: MemberProfileWidget(
                  avatar: 'mentari',
                  name: 'Mentari Estefin',
                  role: '-',
                  callback: () => print('mentari'),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Container(
                margin: const EdgeInsets.only(top: 37),
                width: double.infinity,
                height: 112,
                color: neutral900,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/ig.png',
                            width: 18,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Image.asset(
                            'assets/linkedin.png',
                            width: 18,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Image.asset(
                            'assets/facebook.png',
                            width: 18,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          '© Copyright UNSRAT IT Community All rights reserved.',
                          textAlign: TextAlign.center,
                          style: bodyText12.copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MemberProfileContainer extends StatelessWidget {
  const MemberProfileContainer({
    super.key,
    required this.avatar1,
    required this.name1,
    required this.role1,
    required this.function1,
    required this.avatar2,
    required this.name2,
    required this.role2,
    required this.function2,
  });

  final String avatar1;
  final String name1;
  final String role1;
  final VoidCallback function1;

  final String avatar2;
  final String name2;
  final String role2;
  final VoidCallback function2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 33, left: 13, right: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: MemberProfileWidget(
              avatar: avatar1,
              name: name1,
              role: role1,
              callback: function1,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: MemberProfileWidget(
              avatar: avatar2,
              name: name2,
              role: role2,
              callback: function2,
            ),
          ),
        ],
      ),
    );
  }
}

class MemberProfileWidget extends StatelessWidget {
  const MemberProfileWidget(
      {super.key,
      required this.avatar,
      required this.name,
      required this.role,
      required this.callback});

  final String avatar;
  final String name;
  final String role;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: callback,
          child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                Image.asset(
                  'assets/$avatar.png',
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: bodyText12.copyWith(
                      fontSize: 11, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  role,
                  textAlign: TextAlign.center,
                  style: bodyText12.copyWith(fontSize: 8, color: neutral700),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon-linkedin.png',
              width: 15,
            ),
            const SizedBox(
              width: 4,
            ),
            Image.asset(
              'assets/icon-ig.png',
              width: 15,
            ),
          ],
        )
      ],
    );
  }
}

class PopUpProfileWidget extends StatelessWidget {
  const PopUpProfileWidget(
      {super.key,
      required this.name,
      required this.linkedinLink,
      required this.igLink,
      required this.role,
      required this.description});

  final String name, linkedinLink, igLink, role, description;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 13),
      backgroundColor: Colors.transparent,
      child: Container(
        height: 253,
        width: double.infinity,
        color: Colors.transparent,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 38),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/xave.png',
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fransiscus Xaverius S.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: bodyText14.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Senior Development Lead',
                              style: bodyText12.copyWith(
                                  fontSize: 8, color: neutral700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icon-linkedin.png',
                                  width: 15,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Image.asset(
                                  'assets/icon-ig.png',
                                  width: 15,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'A very passionate person. Like to do things with careful planning, supervision on execution, and good documentation. Really like working in a team, either lead or led, able to be in both positions very optimally. Pretty good at learning new things in a short amount of time. Able to manage a hectic schedule and stressful deadlines. You can also checkout his Github official account at https://github.com/xavesenduk',
                    textAlign: TextAlign.center,
                    style: bodyText12.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: neutral500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
