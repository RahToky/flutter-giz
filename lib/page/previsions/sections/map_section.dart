import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapSection extends StatefulWidget {
  const MapSection({Key key}) : super(key: key);

  @override
  _MapSectionState createState() => _MapSectionState();
}

class _MapSectionState extends State<MapSection> {
  bool _isErrorShown = false;

  _showError() {
    setState(() {});
  }

  Future<void> _autoHide() {
    return Future<void>.delayed(Duration(seconds: 3), () {
      _isErrorShown = false;
      _showError();
    });
  }

  TransformationController _zoomController = TransformationController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final primaryColor = Theme.of(context).primaryColor;

    if (_isErrorShown) _autoHide();

    return Container(
      width: double.infinity,
      height: (screenHeight * 0.62) + 40,
      child: Stack(
        children: [
          //MAP IMAGE
          Positioned(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 40, bottom: 10),
              child: InteractiveViewer(
                panEnabled: false,
                maxScale: 5,
                child: Container(
                  width: screenWidth,
                  child: Image.asset(
                    'assets/images/mada.png',
                  ),
                ),
                transformationController: _zoomController,
              ),
            ),
          ),

          //DATE AND PAGE INDICATOR
          Positioned(
            left: 0,
            right: 0,
            top: 2,
            child: Center(
                child: Column(
              children: [_dateWidget(), SizedBox(height: 5), _pageIndicator()],
            )),
          ),

          // MORNING AFTERNOON BUTTONS
          Positioned(
            top: 50,
            left: 18,
            child: Container(
              height: 80,
              color: Colors.red,
              child: Column(
                children: [
                  MaterialButton(
                    height: 30,
                    minWidth: 80,
                    elevation: 0,
                    onPressed: () {},
                    child: Text('Matin', style: TextStyle(fontSize: 11)),
                    color: primaryColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Expanded(child: Container()),
                  MaterialButton(
                    height: 30,
                    minWidth: 80,
                    elevation: 0,
                    onPressed: () {},
                    child: Text('Après-midi', style: TextStyle(fontSize: 11)),
                    color: Colors.white,
                    textColor: Colors.grey[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(color: Colors.grey[400]),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //IC TERRESTRIAL
          Positioned(
              top: 145,
              left: 15,
              child: Image.asset(
                'assets/images/ic_terrestre.png',
                width: 42,
              )),

          // IC MARINE
          Positioned(
              top: 190,
              left: 17,
              child: Image.asset(
                'assets/images/ic_vague.png',
                width: 36,
              )),

          //IC ALERT
          Positioned(
            top: 10,
            right: 0,
            child: AnimatedContainer(
              width: _isErrorShown ? 220 : 40,
              height: 32,
              duration: Duration(milliseconds: 400),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6))),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.warning_amber_rounded),
                    onPressed: () {
                      _isErrorShown = !_isErrorShown;
                      _showError();
                    },
                    color: Colors.white,
                    padding: EdgeInsets.only(bottom: 2),
                  ),
                  Flexible(
                    child: Text("Il pleut, restez chez vous!",
                        softWrap: false,
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  )
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
