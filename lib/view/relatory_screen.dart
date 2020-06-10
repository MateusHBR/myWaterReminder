import 'package:dink_water/widgets/item_relatory.dart';
import 'package:flutter/material.dart';

class RelatoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.035,
            top: size.height * 0.02,
            bottom: size.height * 0.02,
          ),
          child: Text(
            'Relatório pessoal',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ItemRelatory(
          color: Colors.green,
          title: 'Média semanal',
        ),
        ItemRelatory(
          color: Colors.blue,
          title: 'Média mensal',
        ),
        ItemRelatory(
          color: Colors.red,
          title: 'Frequência de bebida',
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.035,
            top: size.height * 0.02,
            bottom: size.height * 0.02,
          ),
          child: Text(
            'Dicas para beber àgua',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: size.height * 0.4,
          padding: EdgeInsets.symmetric(horizontal: size.height * 0.02),
          child: Card(
            elevation: 9,
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Beba água temperada'),
                  subtitle: Text(
                    'Para quem não é muito fã do gosto da água, a água “temperada” ou aromatizada com rodelas de limão ou folhas de hortelã é a melhor opção. Para dar sabor, pode-se usar também abacaxi, canela em pau, gengibre, conforme a preferência pelo gosto.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.height * 0.02,
                  ),
                  child: Divider(),
                ),
                ListTile(
                  title: Text('Ande com uma garrafinha'),
                  subtitle: Text(
                    'Ter à mão cantis ou pequenas garrafas com água fresca é boa providência quando se está fora de casa. Com a preocupação com a sustentabilidade, hoje em muitos lugares não são oferecidos mais copos de plásticos. Além de ajudar a lembrar que é preciso tomar água, andar com uma garrafinha garante o abastecimento em filtros e bebedouros.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.height * 0.02,
                  ),
                  child: Divider(),
                ),
                ListTile(
                  title: Text('Tome mais chá e café'),
                  subtitle: Text(
                    'Faz parte da cultura alimentar do brasileiro o consumo na forma de bebidas como café e chá, que são boas fontes de líquido. Entretanto, neste caso, convém não adicionar açúcar ou, pelo menos, reduzir a quantidade ao mínimo.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.height * 0.02,
                  ),
                  child: Divider(),
                ),
                ListTile(
                  title: Text('Coma mais frutas e verduras'),
                  subtitle: Text(
                    'A maioria dos alimentos in natura ou minimamente processados e as preparações com esses alimentos têm alto conteúdo de água. O leite e a maior parte das frutas contêm entre 80% e 90% de água. Verduras e legumes cozidos ou na forma de saladas costumam ter mais do que 90% do seu peso em água. Após o cozimento, macarrão, batata ou mandioca têm cerca de 70% de água. Um prato de feijão com arroz é constituído de dois terços de água. Quando a alimentação é baseada nesses alimentos e preparações, é usual que forneçam cerca de metade da água que precisamos ingerir.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.height * 0.02,
                  ),
                  child: Divider(),
                ),
                ListTile(
                  title: Text('Tome um copo antes das refeições'),
                  subtitle: Text(
                    'Antes do café da manhã, dos lanches, do almoço e do jantar, tome um copo de água. Essa é uma estratégia indicada para os esquecidos, que assim podem garantir a ingestão de pelo menos cinco copos de água por dia.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.height * 0.02,
                  ),
                  child: Divider(),
                ),
                ListTile(
                  title: Text('Beba água com gás e limão'),
                  subtitle: Text(
                    'Essa é uma dica especial para quem gosta de refrigerante: trocar pela água com gás e limão. Refrigerantes e vários tipos de bebidas adoçadas possuem alta proporção de água, mas contêm açúcar ou adoçantes artificiais e vários aditivos, razão pela qual não podem ser considerados fontes adequadas para hidratação.',
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
