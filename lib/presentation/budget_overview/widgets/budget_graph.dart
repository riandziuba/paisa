import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TransactionGraph extends StatelessWidget {
  const TransactionGraph({
    Key? key,
    required this.seriesList,
  }) : super(key: key);

  final List<OrdinalSales> seriesList;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: seriesList.asMap().entries.map((entry) {
          return BarChartGroupData(
            x: entry.key,
            barRods: [
              BarChartRodData(
                toY: entry.value.sales.toDouble(),
                color: Theme.of(context).colorScheme.primary,
                width: 10,
                borderRadius: BorderRadius.circular(30),
              ),
            ],
          );
        }).toList(),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index < 0 || index >= seriesList.length) {
                  return const SizedBox();
                }
                return Text(
                  seriesList[index].year,
                  style: const TextStyle(fontSize: 10),
                );
              },
            ),
          ),
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(show: false),
        gridData: const FlGridData(show: false),
      ),
    );
  }

  static List<OrdinalSales> createSampleData(List<OrdinalSales> data) {
    return data;
  }
}

class OrdinalSales {
  final String year;
  final num sales;

  OrdinalSales(this.year, this.sales);
}