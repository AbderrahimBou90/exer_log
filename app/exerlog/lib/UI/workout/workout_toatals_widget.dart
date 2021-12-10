import 'package:exerlog/Models/exercise.dart';
import 'package:exerlog/Models/sets.dart';
import 'package:exerlog/Models/workout.dart';
import 'package:exerlog/UI/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkoutTotalsWidget extends StatefulWidget {
  WorkoutTotals totals;
  WorkoutTotalsWidget({required this.totals});
  @override
  _WorkoutTotalsWidgetState createState() => _WorkoutTotalsWidgetState();
  
}

class _WorkoutTotalsWidgetState extends State<WorkoutTotalsWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.13,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                offset: Offset(0, 3),
                blurRadius: 5,
                spreadRadius: 5),
          ]),
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(children: [
            Container(
              child: Text('Totals', style: mediumTitleStyleWhite,),
            )
          ],),
          Divider(
            color: Colors.white.withOpacity(0.2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Container(
                  child: Text("sets", style: setStyle,),
                ),
                Container(
                  child: Text(widget.totals.sets.toString(), style: setStyle,),
                )
                ],
              ),
              Column(
                children: [Container(
                  child: Text("reps", style: setStyle,),
                ),
                Container(
                  child: Text(widget.totals.reps.toString(), style: setStyle,),
                )
                ],
              ),
              Column(
                children: [Container(
                  child: Text("load", style: setStyle,),
                ),
                Container(
                  child: Text(widget.totals.weight.toString(), style: setStyle,),
                )
                ],
              ),
              Column(
                children: [Container(
                  child: Text("kg/rep", style: setStyle,),
                ),
                Container(
                  child: Text(widget.totals.avgKgs.toString(), style: setStyle,),
                )
                ],
              ),
              Column(
                children: [Container(
                  child: Text("exercises", style: setStyle,),
                ),
                Container(
                  child: Text(widget.totals.exercises.toString(), style: setStyle,),
                )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WorkoutTotals {
  int sets;
  int reps;
  double weight;
  double avgKgs;
  int exercises;

  WorkoutTotals(this.sets, this.reps, this.weight, this.avgKgs, this.exercises) {
    sets = this.sets;
    reps = this.reps;
    weight = this.weight;
    avgKgs = this.avgKgs;
    exercises = this.exercises;
  }
}