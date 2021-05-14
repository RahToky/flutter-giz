import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapSection extends StatefulWidget {
  const MapSection({Key key}) : super(key: key);

  @override
  _MapSectionState createState() => _MapSectionState();
}

class _MapSectionState extends State<MapSection> with TickerProviderStateMixin {
  //final TransformationController _zoomController = TransformationController();
  bool _isErrorShown = false;
  bool _isEarthly = true;
  double seaOpacity = 1;

  _updateUI() {
    setState(() {});
  }

  Future<void> _autoHide() {
    return Future<void>.delayed(Duration(seconds: 3), () {
      if (_isErrorShown) {
        _isErrorShown = false;
        _updateUI();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final primaryColor = Theme.of(context).primaryColor;

    if (_isErrorShown) _autoHide();

    return Container(
      width: double.infinity,
      height: (screenHeight * 0.62) + 130,
      child: Stack(
        children: [
          /** DATE AND PAGE INDICATOR */
          Positioned(
            left: 0,
            right: 0,
            top: 2,
            child: Center(
                child: Column(
              children: [_dateWidget(), SizedBox(height: 5), _pageIndicator()],
            )),
          ),

          /** MAP + SVG */
          Positioned(
            child: Container(
              width: screenWidth,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 40, bottom: 10),
                child: InteractiveViewer(
                    child: Stack(
                  children: [
                    Positioned.fill(
                        top: -50,
                        child: Opacity(
                          opacity: _isEarthly ? 0 : 1,
                          child: Image.asset(
                            'assets/images/mada_sea.png',
                          ),
                        )),
                    Positioned.fill(
                        top: -40,
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Image.asset('assets/images/mada.png'),
                        )),
                  ],
                )),
              ),
            ),
          ),

          /** MORNING AFTERNOON BUTTONS */
          Positioned(
            top: 50,
            left: 18,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    height: 28,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {},
                      child: Text('Matin', style: TextStyle(fontSize: 12)),
                      color: primaryColor,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 90,
                    height: 28,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {},
                      child: Text('Après-midi', style: TextStyle(fontSize: 12)),
                      color: Colors.white,
                      textColor: Colors.grey[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /** IC TERRESTRIAL */
          Positioned(
            top: 135,
            left: 15,
            child: SizedBox(
              width: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isEarthly?Colors.amber:Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  side: _isEarthly ? null : BorderSide(color: Colors.grey),
                  elevation: _isEarthly?2:0,
                ),
                onPressed: () {
                  if(!_isEarthly) {
                    _isEarthly = true;
                    _updateUI();
                  }
                },
                child: Image.asset(
                  'assets/images/ico_terre.png',
                  color: _isEarthly ? Colors.black : Colors.grey,
                  width: 30,
                ),
              ),
            ),
          ),

          /** IC MARINE */
          Positioned(
            top: 183,
            left: 15,
            child: SizedBox(
              width: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: !_isEarthly?Colors.amber:Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  side: !_isEarthly ? null : BorderSide(color: Colors.grey),
                  elevation: !_isEarthly?2:0,
                ),
                onPressed: () {
                  if(_isEarthly) {
                    _isEarthly = false;
                    _updateUI();
                  }
                },
                child: Image.asset(
                  'assets/images/ico_vague.png',
                  color: !_isEarthly ? Colors.black : Colors.grey,
                  width: 30,
                ),
              ),
            ),
          ),

          /** ERROR CONTAINER */
          Positioned(
            top: 10,
            right: 0,
            child: AnimatedContainer(
              width: _isErrorShown ? 220 : 40,
              height: 35,
              duration: Duration(milliseconds: 400),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(6))),
              child: Row(
                children: [
                  Container(
                    height: 32,
                    width: 40,
                    child: IconButton(
                      icon: Icon(Icons.warning_amber_rounded),
                      onPressed: () {
                        _isErrorShown = !_isErrorShown;
                        _updateUI();
                      },
                      color: Colors.white,
                      padding: EdgeInsets.only(bottom: 2),
                    ),
                  ),
                  Flexible(
                      child: Text('Le cyclone sera là dans 2H',
                          style: TextStyle(color: Colors.white)))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _dateWidget() => Text(
      'Jeudi, 28 Nov',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );

Widget _pageIndicator() => Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.circle, color: Colors.grey, size: 12),
          SizedBox(width: 4),
          Image.asset('assets/images/ic_circle.png', width: 10),
          SizedBox(width: 4),
          Image.asset('assets/images/ic_circle.png', width: 10),
          SizedBox(width: 4),
          Image.asset('assets/images/ic_circle.png', width: 10),
          SizedBox(width: 4),
          Image.asset('assets/images/ic_circle.png', width: 10),
          SizedBox(width: 4),
          Image.asset('assets/images/ic_circle.png', width: 10),
        ],
      ),
    );
