import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TimeSeriesBar extends StatelessWidget {
  final List<charts.Series<TimeSeriesSales, DateTime>> seriesList;
  final bool animate;

  TimeSeriesBar(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      defaultInteractions: false,
      defaultRenderer: new charts.BarRendererConfig<DateTime>(),
      domainAxis: new charts.DateTimeAxisSpec(
        renderSpec: new charts.SmallTickRendererSpec(
          labelOffsetFromAxisPx: 16,
          labelJustification: charts.TickLabelJustification.outside,
          labelStyle: new charts.TextStyleSpec(
            color: charts.ColorUtil.fromDartColor(
              Theme.of(context).textTheme.body1.color,
            ),
          ),
          lineStyle: new charts.LineStyleSpec(
            color: charts.MaterialPalette.transparent,
          ),
        ),
      ),
      layoutConfig: new charts.LayoutConfig(
        leftMarginSpec: new charts.MarginSpec.fixedPixel(0),
        topMarginSpec: new charts.MarginSpec.fixedPixel(0),
        rightMarginSpec: new charts.MarginSpec.fixedPixel(0),
        bottomMarginSpec: new charts.MarginSpec.fixedPixel(0),
      ),
      primaryMeasureAxis: new charts.NumericAxisSpec(
        renderSpec: new charts.NoneRenderSpec(),
      ),
    );
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
