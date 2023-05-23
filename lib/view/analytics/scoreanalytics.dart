import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swish_basketball/widgets/dropdown.dart';

class ScoreAnalytics extends StatefulWidget {
  const ScoreAnalytics({super.key});

  @override
  State<ScoreAnalytics> createState() => _ScoreAnalyticsState();
}

class _ScoreAnalyticsState extends State<ScoreAnalytics> {
  int touchedIndex = -1;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Score Analytics",
          style: TextStyle(color: const Color(0xffFF4A31), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            25.verticalSpace,
            SizedBox(
              width: 350.w,
              child: Text(
                "Customized your analytics by selecting below  dropdown list.",
                style:
                    TextStyle(color: const Color(0xff7C8396), fontSize: 14.sp),
              ),
            ),
            26.verticalSpace,
            SizedBox(
              width: 350.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 202.w,
                    child: MyDropdownWidget(
                      options: const [
                        'Shot Selection',
                        'Total Shots',
                        'Free Throw %'
                      ],
                      selectedValue: 'Shot Selection',
                      onChanged: (newValue) {
                        // setState(() {
                        //   selectedValue = newValue;
                        // });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 132.w,
                    child: MyDropdownWidget(
                      options: const ['Frequency', 'Last Month', 'Last Year'],
                      selectedValue: 'Frequency',
                      onChanged: (newValue) {
                        // setState(() {
                        //   selectedValue = newValue;
                        // });
                      },
                    ),
                  ),
                ],
              ),
            ),
            25.verticalSpace,
            Container(
              height: 293.h,
              width: 350.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: BarChart(
                  mainBarData(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    Color barColor = const Color(0xff8FE133),
    double width = 15,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: barColor,
          width: width,
          borderSide: const BorderSide(color: Colors.white, width: 1),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 15,
            color: Colors.grey,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5);
          case 1:
            return makeGroupData(1, 6.5);
          case 2:
            return makeGroupData(2, 5);
          case 3:
            return makeGroupData(3, 7.5);
          case 4:
            return makeGroupData(4, 9);
          case 5:
            return makeGroupData(5, 11.5);
          case 6:
            return makeGroupData(6, 6.5);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: const Color(0xffFF4A31),
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            String weekDay;
            switch (group.x) {
              case 0:
                weekDay = 'Jan';
                break;
              case 1:
                weekDay = 'Feb';
                break;
              case 2:
                weekDay = 'March';
                break;
              case 3:
                weekDay = 'April';
                break;
              case 4:
                weekDay = 'May';
                break;
              case 5:
                weekDay = 'Jun';
                break;
              case 6:
                weekDay = 'Jul';
                break;
              default:
                throw Error();
            }
            return BarTooltipItem(
              '$weekDay\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY - 1).toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            getTitlesWidget: getTitles,
            reservedSize: 30,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(
        show: false,
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Jan', style: style);
        break;
      case 1:
        text = const Text('Feb', style: style);
        break;
      case 2:
        text = const Text('March', style: style);
        break;
      case 3:
        text = const Text('April', style: style);
        break;
      case 4:
        text = const Text('May', style: style);
        break;
      case 5:
        text = const Text('Jun', style: style);
        break;
      case 6:
        text = const Text('Jul', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }
}
