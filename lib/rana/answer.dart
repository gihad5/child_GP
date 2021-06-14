import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
          /* ClipOval(
        child: Material(
          color: Colors.green[100],
          child: InkWell(
                            splashColor: Colors.pink[50], // inkwell color
                            child: SizedBox(
                                width: 75,
                                height: 45, 
                                child: Text(
                                 answerText,
                                 textAlign: TextAlign.center,
                                 
                                )),
                            onTap: () {
                            selectHandler();
                            },
                          ),
                        ),
                      ),
*/
          TextButton(
        child: Text(answerText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(13)),
            //margin:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.teal[200]),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
              //side: BorderSide(color: Colors.red[200])
            ))),
        onPressed: () => selectHandler(),
      ),

      // color: Color(0x3F00E676),
      /* textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      )
      ),*/ //RaisedButton
    ); //Container
  }
}
