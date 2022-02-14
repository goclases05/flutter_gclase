import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
//import 'package:table_calendar/table_calendar.dart';

class EventosScreen extends StatefulWidget {
  

  @override
  State<EventosScreen> createState() => _EventosScreenState();
}

class _EventosScreenState extends State<EventosScreen> {
  //CalendarFormat format=CalendarFormat.month;
  DateTime selectedDay= DateTime.now();
  DateTime focusedDay=DateTime.now();

  //video eventos
  //DateTime selectedDay;
  List<CleanCalendarEvent>? selectedEvent;

  final Map<DateTime,List<CleanCalendarEvent>> events={
    DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day):[
      CleanCalendarEvent(
        'Event A',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,12,0),
        description: 'A especial event',
        color: Colors.red)
    ],
    DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2):[
      CleanCalendarEvent(
        'Event B',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,10,0),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,12,0),
        description: 'B especial event',
        color: Colors.green),
      
      CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,14,30),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,17,0),
        description: 'C especial event',
        color: Colors.orange),

        CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,14,30),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,18,0),
        description: 'C especial event',
        color: Colors.yellow)
        ,

        CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,14,30),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,19,0),
        description: 'C especial event',
        color: Colors.orange),

        CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,14,30),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,20,0),
        description: 'C especial event',
        color: Colors.pink)
        ,

        CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,14,30),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,22,0),
        description: 'C especial event',
        color: Colors.green)
        ,

        CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,14,30),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,23,0),
        description: 'C especial event',
        color: Colors.blue)
        ,

        CleanCalendarEvent(
        'Event C',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,14,30),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,25,0),
        description: 'C especial event',
        color: Colors.black)
    ]
  };

  void _handleData(date){
    setState(() {
      selectedDay=date;
      selectedEvent=events[selectedDay]?? [
        CleanCalendarEvent(
        'Eventos del Día',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day),
        description: 'No se encontraron eventos registrados',
        color: Colors.pink)
      ];
    });
    print(selectedEvent);
    print(selectedDay);
    
  }

  @override
  void iniState(){
    selectedEvent=events[selectedDay]?? [
      CleanCalendarEvent(
        'Eventos del Día',
        startTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day),
        endTime: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day),
        description: 'No se encontraron eventos registrados',
        color: Colors.pink)
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top:20),
        child: Container(
          child: Calendar(
            bottomBarArrowColor: Colors.red,
            startOnMonday: true,
            selectedColor: Colors.blue.shade500,
            todayColor: Colors.blue[500],
            eventColor: Colors.green,
            eventDoneColor: Colors.amber,
            bottomBarColor: Colors.deepOrange,
            hideTodayIcon: true,
            locale: 'esp',
            onRangeSelected: (range){
              print('selected day ${range.from},${range.to}');
            },
            onDateSelected: (date){
              return _handleData(date);
            },
            events:events,
            isExpanded: true,
            todayButtonText: 'Calendario de Eventos',
            dayOfWeekStyle:const TextStyle(
              fontSize: 16,
              color:Color.fromARGB(255, 9, 149, 214),
              fontWeight: FontWeight.bold,
            ),
            bottomBarTextStyle: TextStyle(
              /*color: Colors.red,
              background: Colors.deepOrangeAccent,*/
            ),
            hideBottomBar: false,
            hideArrows: false,
            weekDays: ['Lun','Mar','Mie','Jue','Vie','Sab','Dom'],
          ),
        ),
      )
    );
  }

  

  /*TableCalendar<dynamic> calen() {
    return TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: selectedDay,
          calendarFormat: format,
          onFormatChanged: (CalendarFormat _format) {
            setState(() {
              format = _format;
            });
          },
          startingDayOfWeek: StartingDayOfWeek.monday,
          daysOfWeekVisible: true,
          //day change
          onDaySelected: (DateTime selectDay, DateTime focusDay){
            setState(() {
              selectedDay=selectDay;
              focusedDay=focusDay;
            });
            print(focusDay);
          },
          selectedDayPredicate: (DateTime date){
            return isSameDay(selectedDay , date);
          },
          //to style the calendar
          calendarStyle:const CalendarStyle(
            isTodayHighlighted: true,
            selectedDecoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            selectedTextStyle: TextStyle(
              color: Colors.white,
            ),
            todayDecoration: BoxDecoration(
              color: Color.fromARGB(255, 158, 220, 248),
              shape: BoxShape.circle,
            ),
            defaultDecoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            weekendDecoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          headerStyle:const HeaderStyle(
            formatButtonVisible: true,
            titleCentered: true,
            formatButtonShowsNext: false,
            /*formatButtonDecoration: BoxDecoration(
              color: Colors.blue,
            ),*/
            leftChevronVisible: true,
            rightChevronVisible: true
          ),
        );
  }*/
}