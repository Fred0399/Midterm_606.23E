//task 1
//Loop Type	Use when...
//for	You know exactly how many times to repeat something
//while	You want to repeat an action until a condition changes, but don't know how many times
//You’d say something like:
//“For each item in the list, do this...”
//That’s exactly what for (var item in list) does in Dart.

//task 2
bool isLeapYear(int year) {
  return (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
}

// void main() {
//   print(isLeapYear(2000));
//   print(isLeapYear(1957));
// }

//task 3

List<int> top3Largest(List<int> numbers) {
  List<int> sorted = List.from(numbers);

  sorted.sort((a, b) => b.compareTo(a));

  return sorted.take(3).toList();
}

// void main() {
//   List<int> nums = [10, 57, 33, 77, 5, 99];
//   List<int> top3 = top3Largest(nums);

//   print('Top 3 largest numbers: $top3');

// }

// task 4

// video
abstract class Media {
  String title;

  Media(this.title);

  void play();
}

// Song
class Song extends Media {
  String artist;

  Song(String title, this.artist) : super(title);

  void play() {
    print('Playing song: "$title" by $artist ');
  }
}

// Video
class Video extends Media {
  int duration; // in seconds

  Video(String title, this.duration) : super(title);

  void play() {
    print('Playing video: "$title" [${duration}s] ');
  }
}

// function
void main() {
  Media mySong = Song('Git', 'Sezen Aksu');
  Media myVideo = Video('Pass Exam!!', 300); 

  mySong.play();
  myVideo.play();
}
