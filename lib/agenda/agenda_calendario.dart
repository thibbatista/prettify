import 'package:flutter/material.dart';
import 'package:prettify/agenda/horarios.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendaCalendario extends StatefulWidget {
  @override
  _AgendaCalendarioState createState() => _AgendaCalendarioState();
}

class _AgendaCalendarioState extends State<AgendaCalendario> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          headerStyle:
              HeaderStyle(formatButtonVisible: false, titleCentered: true),
          locale: 'pt_BR',
          firstDay: DateTime.now(),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            print(_selectedDay);

            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              // Call `setState()` when updating the selected day
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              // Call `setState()` when updating calendar format
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            // No need to call `setState()` here
            _focusedDay = focusedDay;

          },
          
        ),
        Container(
          //width: 200,
          height: 300,
          color: Colors.green,
          child: Teste(),
        )
        
      ],
    );
  }
}
