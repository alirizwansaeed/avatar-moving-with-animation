import 'package:flutter/material.dart';

///step to add more widgets
//TODO: follow these steps to remove or add new widget
//! step [1]:
//! step [2]
//! step [3]
//! step [4]
//! step[5]

class ProfileAnimaiton extends StatefulWidget {
//TODO: step[1]: ad new variable like blow

//! final Widget bottomSixthWidget
//then make its constructer and mark as required

  ///this is size(width=height) of top two widgets
  final double topWidetsSize;

  ///this is size(width=height)of bottom all widgets
  final double bottomWidetsSize;

  /// icon widget that appear on the top two widgets
  final Widget? closeIcon;
  final double topWidetsBorderRadius;

  /// padding between bottom widgets
  final double bottomWidgetsPadding;

  /// top row first widget
  final Widget topFirstWidet;

  /// Text under first Widget
  final Widget topFirstTextWidget;

  /// Text user second Widget
  final Widget topSecondTextWidget;

  /// top row second Widget
  final Widget topSecondWidget;

  /// bottom row first widget
  final Widget bottomFirstWidget;

  ///bottom row second Widget
  final Widget bottomSecondWidet;

  ///bottom third widget
  final Widget bottomThirdWidget;

  /// bottom fourth widget

  final Widget bottomFourthWidget;

  ///bottom fifth contianer

  final Widget bottomFifthWidget;

  /// Duration of animation
  final Duration duration;

  /// curve of animation
  final Curve curve;

  /// Horizontal postions of top widgets
  ///
  /// 0 mean widgets are located at very left size of screen
  final double topWidgetsHorizontalPosition;

  ///Height of widget is required parameter
  ///
  ///if you require the height of screeen height then use[ MediaQuery.of(context).size.height ]
  final double height;
  const ProfileAnimaiton({
    Key? key,
    this.topWidetsSize = 120.0,
    this.bottomWidetsSize = 80.0,
    this.closeIcon,
    this.topWidetsBorderRadius = 8.0,
    this.bottomWidgetsPadding = 8.0,
    required this.topFirstWidet,
    required this.topFirstTextWidget,
    required this.topSecondTextWidget,
    required this.topSecondWidget,
    required this.bottomFirstWidget,
    required this.bottomSecondWidet,
    required this.bottomThirdWidget,
    required this.bottomFourthWidget,
    required this.bottomFifthWidget,
    required this.duration,
    this.curve = Curves.linear,
    this.topWidgetsHorizontalPosition = 50.0,
    required this.height,
  }) : assert(topWidetsSize > bottomWidetsSize);

  @override
  _ProfileAnimaitonState createState() => _ProfileAnimaitonState();
}

class _ProfileAnimaitonState extends State<ProfileAnimaiton> {
  bool firstTopOccopied = false;
  bool secondTopOccopied = false;
  double firstOpacity = 0;
  double secondOpacity = 0;

  double get topWidgetsSize => widget.topWidetsSize;
  double get bottomWidgetSize => widget.bottomWidetsSize;
  double get topWidgetsHorizontalPostion => widget.topWidgetsHorizontalPosition;
  double get bottomWidgetsPadding => widget.bottomWidgetsPadding;
//TODO: step[2] add new item bottom list like below
  //   when add new widget at bottom simpley add one more zero in bottom list like
  //!bottom=[0,0,0,0,0,0]
  List<double> bottom = [0, 0, 0, 0, 0];
  late List<double> left;
  double get height => widget.height;

  late List<double> botttomWidgetsSize;

  @override
  void initState() {
    //TODO: Step[3] ad new item to left list like below
    ///when add more widget at bottom add one more item in left list like
    //!  left = [
    //!  0,
    //!  ((bottomWidgetSize + bottomWidgetsPadding)),
    //!  ((bottomWidgetSize + bottomWidgetsPadding) * 2),
    //!  ((bottomWidgetSize + bottomWidgetsPadding) * 3),
    //!  ((bottomWidgetSize + bottomWidgetsPadding) * 4),
    //!  ((bottomWidgetSize + bottomWidgetsPadding) * 5),
    //! ];

    left = [
      0,
      ((bottomWidgetSize + bottomWidgetsPadding)),
      ((bottomWidgetSize + bottomWidgetsPadding) * 2),
      ((bottomWidgetSize + bottomWidgetsPadding) * 3),
      ((bottomWidgetSize + bottomWidgetsPadding) * 4)
    ];
//TODO: Step[4] ad new item to bottomWidgetsSize list like below
    /// when add more widgets in bottom add one more item in bottomWidgetsSize
    //!botttomWidgetsSize = [
    //!  bottomWidgetSize,
    //!  bottomWidgetSize,
    //!  bottomWidgetSize,
    //!  bottomWidgetSize,
    //!  bottomWidgetSize,
    //!  bottomWidgetSize
    //!  ];

    botttomWidgetsSize = [
      bottomWidgetSize,
      bottomWidgetSize,
      bottomWidgetSize,
      bottomWidgetSize,
      bottomWidgetSize,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Top First widget
              Positioned(
                  top: 0,
                  left: topWidgetsHorizontalPostion,
                  width: topWidgetsSize,
                  height: topWidgetsSize,
                  child: widget.topFirstWidet),
              // Top second Container
              Positioned(
                  top: topWidgetsSize * .5,
                  left: topWidgetsHorizontalPostion + topWidgetsSize,
                  height: topWidgetsSize,
                  width: topWidgetsSize,
                  child: widget.topSecondWidget),
              //bottom first container
              AnimatedPositioned(
                left: left[0],
                bottom: bottom[0],
                width: botttomWidgetsSize[0],
                duration: widget.duration,
                curve: widget.curve,
                height: botttomWidgetsSize[0],
                child: GestureDetector(
                    onTap: () => bottomFunction(0),
                    child: widget.bottomFirstWidget),
              ),
              //bottom second continer
              AnimatedPositioned(
                left: left[1],
                bottom: bottom[1],
                width: botttomWidgetsSize[1],
                duration: widget.duration,
                curve: widget.curve,
                height: botttomWidgetsSize[1],
                child: GestureDetector(
                    onTap: () => bottomFunction(1),
                    child: widget.bottomSecondWidet),
              ),
              //bottom third container
              AnimatedPositioned(
                left: left[2],
                bottom: bottom[2],
                width: botttomWidgetsSize[2],
                duration: widget.duration,
                curve: widget.curve,
                height: botttomWidgetsSize[2],
                child: GestureDetector(
                    onTap: () => bottomFunction(2),
                    child: widget.bottomThirdWidget),
              ),
              //bottom fourth container
              AnimatedPositioned(
                left: left[3],
                bottom: bottom[3],
                width: botttomWidgetsSize[3],
                duration: widget.duration,
                curve: widget.curve,
                height: botttomWidgetsSize[3],
                child: GestureDetector(
                    onTap: () => bottomFunction(3),
                    child: widget.bottomFourthWidget),
              ),
              //bottom fifth container
              AnimatedPositioned(
                left: left[4],
                bottom: bottom[4],
                width: botttomWidgetsSize[4],
                duration: widget.duration,
                curve: widget.curve,
                height: botttomWidgetsSize[4],
                child: GestureDetector(
                  onTap: () => bottomFunction(4),
                  child: widget.bottomFifthWidget,
                ),
              ),
              //TODO: step[5] copy above widget and page below and just change some parameter
              /// when add more item  in bottom just copy above widget and past below and change paramters like
              ///   because index start form zero(0) so its mean 5 mean total 6 bottom widets
              /// and also replace the child with new child like widget.bottomFifthWidget to widget.bottomSixthWidget

              //! AnimatedPositioned(
              //!  left: left[5],
              //!  bottom: bottom[5],
              //!  width: botttomWidgetsSize[5],
              //!  duration: widget.duration,
              //!  curve: widget.curve,
              //!  height: botttomWidgetsSize[5],
              //!  child: GestureDetector(
              //!    onTap: () => bottomFunction(5),
              //!    child: widget.bottomsixthWidget,
              //!    ),
              //! ),
              Positioned(
                  top: 0,
                  left: topWidgetsHorizontalPostion + topWidgetsSize * .70,
                  child: AnimatedOpacity(
                    opacity: firstOpacity,
                    duration: Duration(milliseconds: 100),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          firstTopOccopied = false;
                          firstOpacity = 0;

                          for (int i = 0; i < bottom.length; i++) {
                            if (bottom[i] ==
                                height -
                                    botttomWidgetsSize[i] -
                                    ((topWidgetsSize - botttomWidgetsSize[i]) /
                                        2)) {
                              botttomWidgetsSize[i] = bottomWidgetSize;
                              bottom[i] = 0;
                            }
                          }

                          bottomArrangingLoop();
                        });
                      },
                      child: widget.closeIcon == null
                          ? DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            )
                          : widget.closeIcon,
                    ),
                  )),

              Positioned(
                top: topWidgetsSize * .5,
                left: topWidgetsHorizontalPostion +
                    topWidgetsSize +
                    topWidgetsSize * .7,
                child: AnimatedOpacity(
                  opacity: secondOpacity,
                  duration: Duration(milliseconds: 100),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        secondTopOccopied = false;
                        secondOpacity = 0;

                        for (int i = 0; i < bottom.length; i++) {
                          if (bottom[i] ==
                              (height - botttomWidgetsSize[i]) -
                                  topWidgetsSize * .5 -
                                  ((topWidgetsSize - botttomWidgetsSize[i]) /
                                      2)) {
                            botttomWidgetsSize[i] = bottomWidgetSize;
                            bottom[i] = 0;
                          }
                        }

                        bottomArrangingLoop();
                      });
                    },
                    child: widget.closeIcon == null
                        ? DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          )
                        : widget.closeIcon,
                  ),
                ),
              ),
              Positioned(
                  top: topWidgetsSize + 20,
                  left: topWidgetsHorizontalPostion + (topWidgetsSize * .2),
                  child: Opacity(
                      opacity: firstOpacity, child: widget.topFirstTextWidget)),
              Positioned(
                  top: topWidgetsSize + (topWidgetsSize * .5) + 20,
                  left: topWidgetsHorizontalPostion + topWidgetsSize,
                  child: Opacity(
                      opacity: secondOpacity,
                      child: widget.topSecondTextWidget)),
            ],
          ),
        ),
      ),
    );
  }

  void bottomArrangingLoop() {
    double val = 0;
    for (int i = 0; i < bottom.length; i++) {
      if (bottom[i] == 0) {
        left[i] = (bottomWidgetSize + bottomWidgetsPadding) * val;
        val++;
      }
    }
  }

  void bottomFunction(int index) {
    setState(() {
      /// if bottom widget position is at bottom
      if (bottom[index] == 0) {
        ///check if top both contaier are not occopied with bottom widget
        if (!firstTopOccopied && !secondTopOccopied) {
          ///mark first one as occopied
          firstOpacity = 1.0;
          firstTopOccopied = true;
          //change the size of bottom to top widget size and padding of 10
          botttomWidgetsSize[index] =
              topWidgetsSize - widget.topWidetsBorderRadius;
          // move bottom widget to upword at first widget location
          //where bottom positon and left postion is set

          bottom[index] = height -
              botttomWidgetsSize[index] -
              ((topWidgetsSize - botttomWidgetsSize[index]) / 2);

          left[index] = topWidgetsHorizontalPostion +
              ((topWidgetsSize - botttomWidgetsSize[index]) / 2);

          /// or checked if the first top widget is occopied but second top widget is not occopied then move bottom
          /// widget to second top widget
        } else if (firstTopOccopied && !secondTopOccopied) {
          //marked that second one is occopied
          secondOpacity = 1.0;
          secondTopOccopied = true;
          //increase the size of bottom widget to top widget size with padding of 10
          botttomWidgetsSize[index] =
              topWidgetsSize - widget.topWidetsBorderRadius;

          //moved to second widget
          bottom[index] = (height - botttomWidgetsSize[index]) -
              topWidgetsSize * .5 -
              ((topWidgetsSize - botttomWidgetsSize[index]) / 2);
          left[index] = topWidgetsHorizontalPostion +
              topWidgetsSize +
              ((topWidgetsSize - botttomWidgetsSize[index]) / 2);

          //check if first top widget is not occopied but second one is occopied then
          //move bottom widget toward first widget
        } else if (!firstTopOccopied && secondTopOccopied) {
          ///mark first one as occopied
          firstOpacity = 1;
          firstTopOccopied = true;
          //change the size of bottom to top widget size and padding of 10
          botttomWidgetsSize[index] =
              topWidgetsSize - widget.topWidetsBorderRadius;
          // move bottom widget to upword at first widget location
          //where bottom positon and left postion is set

          bottom[index] = height -
              botttomWidgetsSize[index] -
              ((topWidgetsSize - botttomWidgetsSize[index]) / 2);

          left[index] = topWidgetsHorizontalPostion +
              ((topWidgetsSize - botttomWidgetsSize[index]) / 2);
        }
      }
      // arranging bottom widgets
      bottomArrangingLoop();
    });
  }
}
