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
                        return const PopUpProfileWidget(
                          name: 'Fransiscus Xaverius S.',
                          description:
                              'A very passionate person. Like to do things with careful planning, supervision on execution, and good documentation. Really like working in a team, either lead or led, able to be in both positions very optimally. Pretty good at learning new things in a short amount of time. Able to manage a hectic schedule and stressful deadlines. You can also checkout his Github official account at https://github.com/xavesenduk',
                          role: 'Senior Development Lead',
                          linkedinLink: '',
                          igLink: '',
                          image: 'xave',
                        );
                      });
                },
                avatar2: 'ian',
                name2: 'Febrian G. Lalamentik',
                role2: 'Development Lead',
                function2: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Febrian Glorio L.',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Development Lead',
                            description:
                                'As a student of Computer Science, he pursuing his interest in becoming a data analyst. He have acquired extensive knowledge in machine learning and data analytics to establish himself as a professional in this field. He have previously engaged in artificial intelligence projects, taught big data concepts to fellow students, worked as a lab assistant, completed relevant courses, and participated in training programs to enhance his skills.',
                            image: 'ian');
                      });
                },
              ),
              MemberProfileContainer(
                avatar1: 'lens',
                name1: 'Romario Lendo',
                role1: 'Flutter Developer',
                function1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Romario Lendo',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Flutter Developer',
                            description:
                                'He is a highly skilled Flutter developer with a passion for creating elegant and efficient mobile applications. With a strong background in software development and a keen eye for design, He specializes in crafting user-friendly and visually appealing cross-platform applications using Flutter, a popular UI toolkit. He is adept at turning complex ideas into smooth-running and responsive apps.',
                            image: 'lens');
                      });
                },
                avatar2: 'sadu',
                name2: 'Gabriel F. Z. Sadu',
                role2: 'Backend Web Developer',
                function2: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Gabriel F.Z. Sadu',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Backend Web Developer',
                            description:
                                'Having worked on various web development projects, He excels in designing APIs, implementing complex business logic, and ensuring seamless integration with frontend systems. He is well-versed in handling server deployment, scalability, and security aspects, making sure that the applications he develops perform optimally and are protected from potential threats.',
                            image: 'sadu');
                      });
                },
              ),
              MemberProfileContainer(
                avatar1: 'kanaya',
                name1: 'Kanaya Tumade',
                role1: 'Senior Data Scientist',
                function1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Kanaya Tumade',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Senior Data Scientist',
                            description:
                                'With several years of experience in the field, Kanaya is well-versed in designing and implementing predictive models, clustering algorithms, and advanced analytical techniques. As a problem solver at heart, she approaches each data challenge with a creative and strategic mindset, identifying patterns and trends that lead to actionable recommendations.',
                            image: 'kanaya');
                      });
                },
                avatar2: 'revo',
                name2: 'Revo F. R. Ombeng',
                role2: 'Senior Data Scientist',
                function2: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Revo F. R. Ombeng',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Senior Data Scientist',
                            description:
                                'Revo is an accomplished Senior Data Scientist with a proven track record of driving data-driven insights and solutions. With an extensive background in statistics, machine learning, and programming languages such as Python or R, Revo possesses the expertise to extract valuable knowledge from complex datasets.',
                            image: 'revo');
                      });
                },
              ),
              MemberProfileContainer(
                avatar1: 'angelina',
                name1: 'Angelina Chandra',
                role1: 'Cloud Engineer',
                function1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Angelina Chandra',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Cloud Engineer',
                            description:
                                'With a strong focus on continuous improvement, She stays up-to-date with the latest cloud technologies and best practices, ensuring that her solutions are aligned with industry standards and leverage cutting-edge advancements. Her exceptional problem-solving skills, attention to detail, and effective communication make her an invaluable asset in collaborative environments.',
                            image: 'angelina');
                      });
                },
                avatar2: 'jovanka',
                name2: 'Jovanka D. Ruindungan',
                role2: 'Backend Web Developer',
                function2: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Jovanka Ruindungan',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Machine Learning Engineer',
                            description:
                                'Jovanka is a highly skilled and motivated Machine Learning Engineer with a passion for leveraging data and cutting-edge algorithms to build intelligent and data-driven solutions. With a strong background in computer science, mathematics, and programming languages like Python, Jovanka possesses a deep understanding of machine learning techniques and methodologies.',
                            image: 'jovanka');
                      });
                },
              ),
              MemberProfileContainer(
                avatar1: 'triadi',
                name1: 'Ahmad Triadi J.',
                role1: 'User Interface Designer',
                function1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Ahmad Triadi J.',
                            linkedinLink: '',
                            igLink: '',
                            role: 'User Interface Designer',
                            description:
                                "Ahmad's design process involves a thorough analysis of user behavior and preferences, allowing him to create interfaces that engage and delight users while optimizing usability and functionality. He collaborates closely with development teams to ensure the seamless implementation of his designs, maintaining design integrity throughout the development lifecycle.",
                            image: 'triadi');
                      });
                },
                avatar2: 'ridho',
                name2: 'Ridho Aditya',
                role2: 'Machine Learning Engineer',
                function2: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Ridho Aditya',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Machine Learning Developer',
                            description:
                                'Ridho is a highly skilled and motivated Machine Learning Engineer with a passion for leveraging data and cutting-edge algorithms to build intelligent and data-driven solutions. With a strong background in computer science, mathematics, and programming languages like Python, Ridho possesses a deep understanding of machine learning techniques and methodologies.',
                            image: 'ridho');
                      });
                },
              ),
              MemberProfileContainer(
                avatar1: 'deo',
                name1: 'Deo Lolowang',
                role1: 'Machine Learning Engineer',
                function1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Deo Lolowang',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Machine Learning Developer',
                            description:
                                'Having worked on a wide range of projects, Deo excels in designing and developing machine learning models that solve complex problems and deliver valuable insights. He is proficient in data preprocessing, feature engineering, and model selection, ensuring that the models he builds are accurate, efficient, and scalable.',
                            image: 'deo');
                      });
                },
                avatar2: 'luke',
                name2: 'Luke Mawuntu',
                role2: 'Machine Learning Engineer',
                function2: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Luke Mawuntu',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Machine Learning Developer',
                            description:
                                "Luke`s expertise extends to deep learning frameworks like TensorFlow and PyTorch, enabling him to tackle tasks such as image recognition, natural language processing, and time series analysis. He stays up-to-date with the latest advancements in the field, incorporating state-of-the-art approaches to push the boundaries of what machine learning can achieve.",
                            image: 'luke');
                      });
                },
              ),
              MemberProfileContainer(
                avatar1: 'galnoel',
                name1: 'Galnoel Rindengan',
                role1: 'Machine Learning Engineer',
                function1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Galnoel Rindengan',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Machine Learning Developer',
                            description:
                                'As a problem solver and critical thinker, Galnoel approaches each project with a systematic and analytical mindset, iteratively improving models through experimentation and fine-tuning. His commitment to quality and attention to detail ensure that the solutions he delivers meet and exceed client expectations.',
                            image: 'galnoel');
                      });
                },
                avatar2: 'satria',
                name2: 'Satria Maharido Amu',
                role2: 'Machine Learning Engineer',
                function2: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Satria',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Machine Learning Developer',
                            description:
                                'Satria is a talented and innovative Machine Learning Engineer with a strong background in computer science and a passion for harnessing the power of data to drive intelligent solutions. With a proficiency in programming languages such as Python and R, Satria possesses a deep understanding of machine learning algorithms, statistical analysis, and data manipulation.',
                            image: 'satria');
                      });
                },
              ),
              MemberProfileContainer(
                avatar1: 'frandi',
                name1: 'Frandi Andika',
                role1: 'Cloud Engineer',
                function1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Frandi Andika',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Machine Learning Developer',
                            description:
                                'Having worked on various machine learning projects, Frandi excels in designing and developing models that address complex real-world challenges. He is skilled in data preprocessing, feature extraction, and model evaluation, ensuring the accuracy and reliability of his machine learning solutions.',
                            image: 'frandi');
                      });
                },
                avatar2: 'regina',
                name2: 'Regina George',
                role2: 'Machine Learning Engineer',
                function2: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const PopUpProfileWidget(
                            name: 'Regina George',
                            linkedinLink: '',
                            igLink: '',
                            role: 'Machine Learning Developer',
                            description:
                                'With a keen eye for detail and a focus on optimization, She fine-tunes models through rigorous experimentation, iteratively refining them to achieve optimal results. She is dedicated to delivering high-quality solutions that provide valuable insights and create tangible impacts for businesses and end-users.',
                            image: 'regina');
                      });
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: MemberProfileWidget(
                  avatar: 'mentari',
                  name: 'Mentari Estefin',
                  role: 'Lorem Ipsum',
                  callback: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext ctx) {
                          return const PopUpProfileWidget(
                              name: 'Mentari Estefin',
                              linkedinLink: '',
                              igLink: '',
                              role: 'Lorem Ipsum',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                              image: 'mentari');
                        });
                  },
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
      required this.description,
      required this.image});

  final String name, linkedinLink, igLink, role, description, image;

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
              margin: const EdgeInsets.only(top: 40),
              height: 200,
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
                      Image.asset(
                        'assets/$image.png',
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: bodyText14.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              role,
                              style: bodyText12.copyWith(
                                  fontSize: 8, color: neutral700),
                            ),
                            const SizedBox(
                              height: 13,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: bodyText12.copyWith(
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: neutral500),
                    ),
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
