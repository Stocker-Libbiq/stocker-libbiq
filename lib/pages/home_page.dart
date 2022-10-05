import 'package:flutter/material.dart';
import 'package:stocker/library/colors.dart';
import 'package:stocker/library/icons.dart';
import 'package:stocker/library/typography.dart';
import 'package:stocker/widgets/left_navigation.dart';
import 'package:stocker/widgets/stocker_frecuenly_access.dart';

class StockerDashBoard extends StatelessWidget {
  const StockerDashBoard({super.key});

  Widget _frecuenlyRight() {
    return Column(
      children: [
        StockerFrecuenlyAccess(
          title: 'Stock',
          isNotList: false,
          content: [
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  StockerIcon(
                    icon: StockerIcons.icons.arrowCircleDown,
                    color: StockerColors.success,
                    size: StockerIconSize.large,
                  ),
                  const SizedBox(width: 15.0),
                  const Text('Registrar entrada')
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  StockerIcon(
                    icon: StockerIcons.icons.arrowCircleUp,
                    color: StockerColors.errorDark,
                    size: StockerIconSize.large,
                  ),
                  const SizedBox(width: 15.0),
                  const Text('Registrar salida')
                ],
              ),
            )
          ],
        ),
        StockerFrecuenlyAccess(
          title: 'Clasificación',
          isNotList: true,
          icon: StockerIcons.icons.viewList,
          iconColor: StockerColors.info,
          contentTitle: 'Agregar clasificación',
          onTap: () {}
        ),
      ],
    );
  }

  Widget _frecuenlyLeft() {
    return Column(
      children: [
        StockerFrecuenlyAccess(
          title: 'Reactivos',
          isNotList: true,
          icon: StockerIcons.icons.addCircle,
          iconColor: StockerColors.info,
          contentTitle: 'Agregar un reactivo',
          onTap: () {}
        ),
        StockerFrecuenlyAccess(
          title: 'Ubicaciones',
          isNotList: true,
          icon: StockerIcons.icons.locationOn,
          iconColor: StockerColors.info,
          contentTitle: 'Agregar ubicación',
          onTap: () {}
        ),
      ],
    );
  }

  Widget _frecuenlyWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      color: Colors.purple,
      child: Row(
        children: [
          _frecuenlyLeft(),
          _frecuenlyRight()
        ],
      ),
    );
  }

  

  Widget _navigation(BuildContext context) {
    return Column(
      children: [
        LeftNavigation(
          onTap: () {}, 
          text: 'Inicio'
        ),
        LeftNavigation(
          onTap: () {}, 
          text: 'Inicio2'
        ),
        LeftNavigation(
          onTap: () {}, 
          text: 'Inicio3'
        ),
        LeftNavigation(
          onTap: () {}, 
          text: 'Inicio4'
        ),
        _frecuenlyWidget(context)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StockerColors.backgroundLight,
      appBar: AppBar(
        backgroundColor: StockerColors.backgroundDark,
        leading: Text('Stocker', style: StockerTypography.title,),
        centerTitle: true,
        title: SizedBox(
          width: 200.0,
          child: TextFormField()
        ),
        actions: [
          StockerIcon(icon: StockerIcons.icons.accountCircle),
          StockerIcon(icon: StockerIcons.icons.arrowCircleDown),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.blue,
              child: _navigation(context)
            ),
          ],
        ),
      ),
    );
  }
}