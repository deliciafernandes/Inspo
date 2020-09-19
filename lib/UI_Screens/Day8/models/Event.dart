class Event {
  String name;
  String date; // 17 Sept 2020
  // Use Timestamp when using Firebase
  String time;
  String imageUrl;

  Event({this.name, this.date, this.time, this.imageUrl});
}

class EventDetails {
  List<Event> _eventList = [
    Event(
        name: 'Coachella',
        date: '17 Sept 2020',
        time: '19:00 PM',
        imageUrl:
            'https://cdn.pixabay.com/photo/2017/07/21/23/57/concert-2527495_960_720.jpg'),
    Event(
        name: 'Tomorrowland',
        date: '19 Sept 2020',
        time: '18:00 PM',
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/05/15/14/50/concert-768722_960_720.jpg'),
    Event(
        name: 'FYF Fest',
        date: '21 Sept 2020',
        time: '16:00 PM',
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/09/02/13/26/glasses-919071_960_720.jpg'),
    Event(
        name: 'Lollapalooza',
        date: '22 Sept 2020',
        time: '20:00 PM',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/11/22/19/15/audience-1850119_960_720.jpg'),
    Event(
        name: 'Vh1 Supersonic',
        date: '25 Sept 2020',
        time: '19:00 PM',
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/09/18/11/38/audience-945449_960_720.jpg'),
    Event(
        name: 'New Orleans Jazz and Heritage Festival',
        date: '30 Sept 2020',
        time: '18:00 PM',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/11/22/21/36/audience-1850665_960_720.jpg'),
  ];

  String getName(int eventNumber) {
    return _eventList[eventNumber].name;
  }

  String getDay(int eventNumber) {
    List<String> _eventDate = _eventList[eventNumber].date.split(' ');

    return _eventDate[0];
  }

  String getMonth(int eventNumber) {
    List<String> _eventDate = _eventList[eventNumber].date.split(' ');

    return _eventDate[1].toUpperCase();
  }

  String getYear(int eventNumber) {
    List<String> _eventDate = _eventList[eventNumber].date.split(' ');

    return _eventDate[2];
  }

  String getTime(int eventNumber) {
    return _eventList[eventNumber].time;
  }

  String getImageUrl(int eventNumber) {
    return _eventList[eventNumber].imageUrl;
  }

  int getLength() {
    return _eventList.length;
  }
}
