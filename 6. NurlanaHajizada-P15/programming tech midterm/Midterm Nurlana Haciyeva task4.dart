//task 4
abstract class Media{
  String title;
  Media(this.title);
  void play();
}
class Song extends Media {
  String artist;

  Song(String title, this.artist) : super(title);

  @override
  void play() {
    print('Playing song "$title" by $artist');
  }
}
class Video extends Media {
  int duration;

  Video(String title, this.duration) : super(title);

  @override
  void play() {
    print('Playing video "$title" for $duration seconds');
  }
}
void main() {
  Song song = Song('any song', 'artist');
  Video video = Video('any video', 10);
  song.play();
  video.play();
}
