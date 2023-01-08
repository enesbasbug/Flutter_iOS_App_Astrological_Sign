import 'package:astrological_sign/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.orange,
            flexibleSpace: FlexibleSpaceBar(
            title: Text(secilenBurc.burcAdi +  " Sign and its features"),
              background: Image.asset('images/'+secilenBurc.burcBuyukResim, fit: BoxFit.cover ,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ),
            ),
          ),
        ],)
    );
  }
}