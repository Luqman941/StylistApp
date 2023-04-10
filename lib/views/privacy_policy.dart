import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: Text('Privacy Policy', style: TextStyle(color: Colors.black)),
        elevation: 2,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              'Ullamcorper errors sensctus urna sit element um aliq uet.Nibh maruris trist ique elit pellen'
                  'tesque sapien malesuada eleifend. Lorem ipsum  dolor sit amet, Consectetur adipiscing elit.Libero, '
                  'condimentum dolor tempor aenean lacina.Volutpat faucibus eumassa et volutpat at cras in . '
                  'lectus send et,send tristique semper.Lectus nec,nunc maecenas egestas eges tas sit facilisis ullamcoper'
                  '.Nunc,irsus con sequat in ornare mauris.Hac ullamc orper orci commodo,mauris risus '
                  'felis.Nisl a trist ique donec eu.Purus molllis mollis senectus rhoncus nec ante interdum'
                  '. urna,tellus,a commodo tortor augue ut malesuada odio iaculis proin. Habitasse quis tincidunt'
                  'elem entum eleifend felis eleifend eget. ullamcoper eros sensectus urna sit element um '
                  'aliq uet.Nibh maruis trist ique elit pellen tesque sapien malesada eleifend',

              // textAlign: TextAlign.center,
              // style: TextStyle(letterSpacing: 0.7)

              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
