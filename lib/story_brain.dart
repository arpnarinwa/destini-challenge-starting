import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'In a foreign land, I see amazing fast cars around me all the time. Being a teenager college student, I wish I could get one too! Well, my father is fairly rich and I ask him to get me one. He said to me I would get one if do well in the upcoming semester.',
        choice1: 'Wow! Thanks, Dad I will give my best!',
        choice2: 'Hmm. No, I am fine.'),
    Story(
        storyTitle:
            'My best friend gets a flashing new BMW. No wonder, his father is quite rich, but he doesn’t deserve it. Well, I should really focus on myself.',
        choice1: 'I call my papa if his offer is still valid :)',
        choice2: 'Next Party transportation, BMW.'),
    Story(
        storyTitle:
            'Day and night study!. Drop cricket club, no Friday night movie, and focus Focus Focus. I get awesome grades and my father gets a GTI delivered to my dormitory! I take it out for a ride. Days pass, the car becomes a burden to handle. Insurance, taking friends to parties, study pressure piling on. Meanwhile, found some Singhs wanting to go to Sangat.',
        choice1: 'Wow! I remember my junior Khalsa camp days. Can I help?',
        choice2: 'Hmm. No time, maybe when I am 60…. :-/'),
    Story(
        storyTitle:
            'Next 3 parties, we were the strangest people with a BMW :-/ Well, my friend goes out with someone on a date, I am feeling lonely now. Got a call from buddy Bhujangi Singh next door, there seems to be a new Gurdwara in Roanoke, that they want a website for. Hmm.. http://sttm.co/s/5533/60321',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'I continue my life by involving myself in more worldly affairs and my intellect, wondering why I am climbing an endless ladder. One early morning in December: “Is someone playing dholki on the streets?” http://sttm.co/s/2529/28631',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'I get blessed with Sadh Sangat, explore the path of true religion (Shabad Guru), and give myself to Guru Panj Pyaare in front of Sahib Sri Guru Granth Sahib. The rest of life goes naturally. http://sttm.co/s/41000/207391',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
