import 'package:flutter/material.dart';

class ExemploFlow extends StatefulWidget {
  @override
  _ExemploFlowState createState() => _ExemploFlowState();
}

class _ExemploFlowState extends State<ExemploFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo Flow'),
      ),
      body: FlowMenu(),
    );
  }
}

//Criando um Widget para montar o menu
class FlowMenu extends StatefulWidget {
  @override
  _FlowMenuState createState() => _FlowMenuState();
}

class _FlowMenuState extends State<FlowMenu> with SingleTickerProviderStateMixin {

  AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  //Ícone de cada item do meu
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  //Atualiza o estado falando qual menu foi selecionado
  void _updateMenu(IconData icon) {
    if (icon != Icons.menu)
      setState(() => lastTapped = icon);
  }

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  //Método que cria cada item de menu
  Widget flowMenuItem(IconData icon) {
    final double buttonDiameter = MediaQuery.of(context).size.width / menuItems.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RawMaterialButton(
        fillColor: lastTapped == icon ? Colors.amber[700] : Colors.blue,
        splashColor: Colors.amber[100],
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          _updateMenu(icon);
          menuAnimation.status == AnimationStatus.completed
            ? menuAnimation.reverse()
            : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 45.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flow(
        delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        children: menuItems.map<Widget>((IconData icon) => flowMenuItem(icon)).toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({this.menuAnimation}) : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i).width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0,
          0,
        ),
      );
    }
  }
}