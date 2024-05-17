import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login1 extends StatelessWidget {
  Login1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            color: const Color(0xfff2f2f2),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(-205.0, -83.4, -243.4, 179.1),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, -164.0, 0.0, 0.0),
                      child: SizedBox.expand(
                          child: SvgPicture.string(
                        _svg_xj1j6,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.851, -0.085),
                          end: Alignment(-0.595, 0.971),
                          colors: [
                            const Color(0x4cffffff),
                            const Color(0x4cfbb03b)
                          ],
                          stops: [0.0, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(startFraction: 0.8959, endFraction: 0.0465),
            Pin(startFraction: 0.0204, endFraction: 0.9659),
            child: SvgPicture.string(
              _svg_es53sn,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 54.0, end: 65.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff0d77e2),
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 0.029),
                  child: SizedBox(
                    width: 144.0,
                    height: 19.0,
                    child: Text(
                      'Register/Log in ',
                      style: TextStyle(
                        fontFamily: 'SF Compact',
                        fontSize: 19,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        height: 0.42105263157894735,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 54.0, middle: 0.5722),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.007, -0.029),
                  child: SizedBox(
                    width: 84.0,
                    height: 19.0,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'SF Compact',
                        fontSize: 19,
                        color: const Color(0xff000000),
                        height: 0.4371883994654605,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 54.0, middle: 0.4954),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.01, 0.029),
                  child: SizedBox(
                    width: 162.0,
                    height: 19.0,
                    child: Text(
                      'Username or Email',
                      style: TextStyle(
                        fontFamily: 'SF Compact',
                        fontSize: 19,
                        color: const Color(0xff000000),
                        height: 0.4371883994654605,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.005, -0.144),
            child: SizedBox(
              width: 231.0,
              height: 40.0,
              child: Transform.rotate(
                angle: 3.1416,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffff2b2b),
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 164.0, start: 20.0),
                      Pin(size: 15.0, middle: 0.52),
                      child: Transform.rotate(
                        angle: 3.1416,
                        child: Text(
                          'Credentials are incorrect',
                          style: TextStyle(
                            fontFamily: 'Tajawal Light',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            height: 2.066666666666667,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 19.8, end: 19.0),
                      Pin(size: 19.8, middle: 0.5),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              border: Border.all(
                                  width: 2.0, color: const Color(0xffffffff)),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: 6.0,
                              height: 6.0,
                              child: Stack(
                                children: <Widget>[
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_f77lun,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_dkuvz,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_xj1j6 =
    '<svg viewBox="0.0 0.0 876.4 994.3" ><defs><linearGradient id="gradient" x1="0.92528" y1="0.457353" x2="0.20232" y2="0.985736"><stop offset="0.0" stop-color="#ffffff" /><stop offset="1.0" stop-color="#fbb03b" /></linearGradient></defs><path transform="translate(0.0, 0.0)" d="M 782.5877075195312 126.9135055541992 L 650.040771484375 33.9968376159668 C 598.9683837890625 -1.795136570930481 530.4151611328125 -9.494335174560547 451.78076171875 11.69774341583252 C 436.9540100097656 15.69479370117188 412.1641540527344 25.4719123840332 393.9845886230469 32.97148895263672 C 378.4863586425781 39.3595085144043 367.261962890625 52.97942352294922 363.9590759277344 69.40316772460938 C 360.6607360839844 85.81330108642578 365.737548828125 102.6952896118164 377.5472412109375 114.5594024658203 C 391.9701843261719 129.0504150390625 413.4798583984375 133.3060607910156 432.3626098632812 125.3845520019531 C 501.2425537109375 96.49327850341797 562.418701171875 96.29365539550781 604.6168823242188 124.8174362182617 C 649.89111328125 155.4191436767578 672.32177734375 217.49365234375 667.7802124023438 299.6078491210938 C 662.7079467773438 391.1498107910156 624.9968872070312 493.2265930175781 561.5885009765625 587.0369873046875 C 498.1755676269531 680.8474731445312 417.5132141113281 753.892333984375 334.455322265625 792.7195434570312 C 259.9541015625 827.5451049804688 193.9914398193359 829.8679809570312 148.7172393798828 799.2617797851562 C 126.9898071289062 784.5711669921875 110.4662475585938 762.5759887695312 99.61386871337891 733.8798217773438 C 91.76042175292969 713.1278686523438 71.58915710449219 699.8436279296875 49.27190780639648 700.8554077148438 C 33.02056503295898 701.5858154296875 17.89438629150391 710.0880737304688 8.797807693481445 723.59912109375 C -0.3713617622852325 737.2235107421875 -2.490116119384766 753.8877563476562 2.99051570892334 769.3224487304688 C 19.43241119384766 815.5947875976562 45.79660797119141 851.237060546875 81.3526611328125 875.2556762695312 L 144.4525299072266 917.8938598632812 L 144.3935394287109 917.9029541015625 L 204.8891906738281 958.7672119140625 C 240.0051574707031 982.4908447265625 281.5953674316406 994.3368530273438 327.541015625 994.3368530273438 C 375.4420776367188 994.3368530273438 428.0706481933594 981.4564819335938 482.9994812011719 955.7274780273438 C 581.6690063476562 909.50048828125 676.708984375 824.1741333007812 750.6158447265625 715.4644165039062 C 824.5499267578125 606.709228515625 868.89404296875 486.9429321289062 875.4816284179688 378.2331237792969 C 882.4776611328125 263.0718078613281 849.4849853515625 173.8164672851562 782.5877075195312 126.9135055541992 M 645.4085693359375 643.6671752929688 C 718.8798828125 534.9710083007812 762.6886596679688 414.7374267578125 768.7545166015625 305.1066284179688 C 768.99951171875 300.6967163085938 769.1810302734375 296.3140258789062 769.303466796875 291.9721374511719 C 774.6343994140625 315.7230834960938 776.5081787109375 342.6634826660156 774.7161254882812 372.1990051269531 C 763.3782348632812 559.2482299804688 610.1973266601562 784.5302734375 440.216064453125 864.1446533203125 C 415.3445129394531 875.7955322265625 391.4030456542969 883.80322265625 368.8499145507812 888.1450805664062 C 371.64013671875 886.906494140625 374.4348754882812 885.6361694335938 377.2341918945312 884.3250122070312 C 476.6931457519531 837.8348999023438 571.9326782226562 752.3633422851562 645.4085693359375 643.6671752929688" fill="url(#gradient)" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_es53sn =
    '<svg viewBox="383.4 18.9 24.7 12.7" ><path transform="translate(47.43, 45.57)" d="M 338.988525390625 -26.66666793823242 L 357.6664428710938 -26.66666793823242 L 357.6664428710938 -26.66666793823242 C 359.3169555664062 -26.66666793823242 360.6549377441406 -25.32868003845215 360.6549377441406 -23.67818832397461 L 360.6549377441406 -16.95410919189453 L 360.6549377441406 -16.95410919189453 C 360.6549377441406 -15.30361938476562 359.3169555664062 -13.9656286239624 357.6664428710938 -13.9656286239624 L 338.988525390625 -13.9656286239624 L 338.988525390625 -13.9656286239624 C 337.3380126953125 -13.9656286239624 336 -15.30361938476562 336 -16.95410919189453 L 336 -23.67818832397461 L 336 -23.67818832397461 C 336 -25.32868003845215 337.3380126953125 -26.66666793823242 338.988525390625 -26.66666793823242 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f77lun =
    '<svg viewBox="0.0 0.0 6.4 6.4" ><path transform="translate(0.0, 0.0)" d="M 0 0 L 6.376543521881104 6.376543521881104" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dkuvz =
    '<svg viewBox="0.0 0.0 6.4 6.4" ><path transform="translate(0.0, 0.0)" d="M 6.376543521881104 0 L 0 6.376543521881104" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
