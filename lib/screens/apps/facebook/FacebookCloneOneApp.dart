import 'package:flutter/material.dart';

class FacebookCloneOneApp extends StatefulWidget {
  const FacebookCloneOneApp({super.key});

  @override
  State<FacebookCloneOneApp> createState() => _FacebookCloneOneAppState();
}

class _FacebookCloneOneAppState extends State<FacebookCloneOneApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(top: 0, right: 20, left: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey[800],
                  size: 30,
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          "Stories",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 1.2),
                        ),
                        const Text("See Archive"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeStory(
                              storyImage:
                                  'https://img.freepik.com/free-photo/young-adult-enjoying-yoga-nature_23-2149573175.jpg?w=1480&t=st=1697266605~exp=1697267205~hmac=66730380ab68ee0dc29dbb83a4be03431936c6a5c79981ef480450d33b506f1e',
                              userImage:
                                  'https://www.freepik.com/free-photo/lovely-curly-woman-embraces-herself-with-pleasure-feels-comfort-calmness-love-tilts-head-smiles-positively-with-eyes-shut-poses-purple-wall-blank-space_12700040.htm#query=love%20yourself&position=0&from_view=keyword&track=ais',
                              userName: 'Aatik Tasneem'),
                          makeStory(
                              storyImage:
                                  'https://img.freepik.com/free-photo/full-shot-woman-with-bicycle-outdoors_23-2149413735.jpg?w=1480&t=st=1697266624~exp=1697267224~hmac=8f185ee54133428214945b52a49d22ec8030a044526d4faabb18b036f5018203',
                              userImage:
                                  'https://img.freepik.com/free-photo/medium-shot-male-flight-attendant-posing_23-2150312701.jpg?w=740&t=st=1697266719~exp=1697267319~hmac=28ff0ed8c6cfa61bd95cfb40c4499c6a9db293cae8d9ff35a21d945faf36b31d',
                              userName: 'Aiony Haust'),
                          makeStory(
                              storyImage:
                                  'https://img.freepik.com/free-photo/side-view-men-practicing-tai-chi-outside_23-2149893699.jpg?w=1480&t=st=1697266642~exp=1697267242~hmac=bffb169005daee8b5f4e8fde59691be4425800249b1c2fba1c62611007d0f8bf',
                              userImage:
                                  'https://img.freepik.com/free-photo/medium-shot-smiley-friends-with-smartphones_23-2149452653.jpg?w=1480&t=st=1697266724~exp=1697267324~hmac=3062f258591710b17e56d2a19caa88876d0171b1abaa20648218f126be9864e1',
                              userName: 'Averie Woodard'),
                          makeStory(
                              storyImage:
                                  'https://img.freepik.com/free-photo/full-shot-woman-running-outdoors_23-2149622958.jpg?w=1480&t=st=1697266664~exp=1697267264~hmac=b36fe8ad70fa5f71ed94c65ecba891db14da497cb789cb8a640e9dd63658c36e',
                              userImage:
                                  'https://img.freepik.com/free-photo/cheerful-young-man-dressed-shirt-wearing-hat_171337-17093.jpg?w=1480&t=st=1697266715~exp=1697267315~hmac=26d471021253f4b63fbad13969665bd99664f4787767e25aa30f9a4b36671667',
                              userName: 'Azamat Zhanisov'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    makeFeed(
                        userName: 'Aiony Haust',
                        userImage:
                            'https://img.freepik.com/free-photo/positive-overjoyed-dark-skinned-man-points-with-both-index-fingers-hints-something-wears-casual-green-jumper-smiles-broadly_273609-23582.jpg?w=1480&t=st=1697266731~exp=1697267331~hmac=ea07202a867e43cf40c0841ad68f15b9f28cbcc63ff33745f945e2fb5ecec37a',
                        feedTime: '1 hr ago',
                        feedText:
                            'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                        feedImage:
                            'https://img.freepik.com/free-photo/medium-shot-smiley-friends-with-smartphones_23-2149452653.jpg?w=1480&t=st=1697266724~exp=1697267324~hmac=3062f258591710b17e56d2a19caa88876d0171b1abaa20648218f126be9864e1'),
                    makeFeed(
                        userName: 'Azamat Zhanisov',
                        userImage:
                            'https://img.freepik.com/free-photo/horizontal-view-attractive-young-black-man-with-toothy-smile-shows-okay-gesture-says-alright-likes-somebodys-idea_273609-23585.jpg?w=1480&t=st=1697266740~exp=1697267340~hmac=be9cf957bff50d7589241b58f8bc9f5c02b17dbe7a605869a61d400dd316f643',
                        feedTime: '3 mins ago',
                        feedText:
                            "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                        feedImage:
                            'https://img.freepik.com/free-photo/portrait-smiley-man-having-good-time_23-2148666496.jpg?w=1480&t=st=1697266729~exp=1697267329~hmac=b2f19924596c933ffcc5b9d9b7ddaf11a9c0011720d901489ec2382cf8d89b6b'),
                    makeFeed(
                        userName: 'Azamat Zhanisov',
                        userImage:
                            'https://img.freepik.com/free-photo/young-african-american-woman-isolated-yellow-studio-background-facial-expression-beautiful-female-half-length-portrait-concept-human-emotions-facial-expression-standing-crossing-hands_155003-25191.jpg?w=1480&t=st=1697266738~exp=1697267338~hmac=8db032cc78f6139606e197e285475fb7ce53dd97db6d742ae4508b0b732229a7',
                        feedTime: '3 mins ago',
                        feedText:
                            "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                        feedImage:
                            'https://img.freepik.com/free-photo/group-four-african-american-girls-sitting-outdoor-showing-fingers_627829-2787.jpg?w=1480&t=st=1697266733~exp=1697267333~hmac=74b44851e9b290a192e2b33f87d660f96176a8be9651f97001ebaa3e59a27bb1'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: NetworkImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        image: NetworkImage(userImage), fit: BoxFit.cover)),
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(userImage), fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        feedTime,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.grey[600],
                ),
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            feedText,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: .7),
          ),
          const SizedBox(
            height: 20,
          ),
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(feedImage), fit: BoxFit.cover)),
                )
              : Container(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  makeLike(),
                  Transform.translate(offset: Offset(-5, 0), child: makeLove()),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "2.5K",
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  )
                ],
              ),
              Text(
                "400 Comments",
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
