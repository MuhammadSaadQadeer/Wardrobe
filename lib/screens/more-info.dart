import 'package:flutter/material.dart';
import 'package:wardrobe/components/gradientbutton.dart';

class MoreInfo extends StatefulWidget {
  @override
  _MoreInfoState createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  bool _isMale = true;
  bool _isFemale = false;
  bool _isEcto = true;
  bool _isEndo = false;
  bool _isMeso = false;

  _toggleGenderMale() {
    setState(() {
      _isMale = true;
      _isFemale = false;
    });
  }

  _toggleGenderFemale() {
    setState(() {
      _isFemale = true;
      _isMale = false;
    });
  }

  _toggleEcto() {
    setState(() {
      _isEcto = true;
      _isEndo = false;
      _isMeso = false;
    });
  }

  _toggleEndo() {
    setState(() {
      _isEcto = false;
      _isEndo = true;
      _isMeso = false;
    });
  }

  _toggleMeso() {
    setState(() {
      _isEcto = false;
      _isEndo = false;
      _isMeso = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
                color: Colors.white,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Tell us more about you",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              textBaseline: TextBaseline.alphabetic,
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            "The more we know about you will help us to serve more appropriate match to your dressing style everyday.",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                textBaseline: TextBaseline.alphabetic,
                                fontSize: 14,
                                color: Colors.black26,
                                fontWeight: FontWeight.normal),
                          )),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal)),
                          labelText: 'Occupation',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Gender",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              textBaseline: TextBaseline.alphabetic,
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          OptionsButtons(
                              btnText: "Male",
                              isHighlighted: this._isMale,
                              onPress: _toggleGenderMale),
                          OptionsButtons(
                              btnText: "Female",
                              isHighlighted: this._isFemale,
                              onPress: _toggleGenderFemale),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal)),
                          labelText: 'Age',
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Body Type",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              textBaseline: TextBaseline.alphabetic,
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          OptionsButtons(
                              btnText: "Ectomorph",
                              isHighlighted: this._isEcto,
                              onPress: _toggleEcto),
                          OptionsButtons(
                              btnText: "Endomorph",
                              isHighlighted: this._isEndo,
                              onPress: _toggleEndo),
                          OptionsButtons(
                              btnText: "Mesomorph",
                              isHighlighted: this._isMeso,
                              onPress: _toggleMeso),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Center(
                        child: GradientBtn(
                            btnText: "SAVE AND CONTINUE", onPress: () {}),
                      )
                    ],
                  ),
                ))));
  }
}

class OptionsButtons extends StatelessWidget {
  final String btnText;
  final bool isHighlighted;
  final Function onPress;

  OptionsButtons({this.btnText, this.isHighlighted, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.onPress,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: this.isHighlighted
                  ? [Color(0xffF8BE99), Color(0xffF1A19C)]
                  : [Colors.white, Colors.white],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30.0)),
        child: Container(
          constraints: BoxConstraints(maxWidth: 100.0, minHeight: 40.0),
          alignment: Alignment.center,
          child: Text(
            this.btnText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: this.isHighlighted ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
