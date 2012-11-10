import 'dart:html';
import 'dart:math';

class audioplayer {
   var _playButton;
   AudioContext audioContext;
   AudioBufferSourceNode source;
   AudioGainNode gainNode;

   audioplayer() {
     _playButton = document.query("#play");
     audioContext = new AudioContext();
     gainNode = audioContext.createGainNode();

     source = audioContext.createBufferSource();
     source.connect(gainNode, 0, 0);
     _playButton.on.click.add((e) {
        source.noteOn(0);
     });

     gainNode.connect(audioContext.destination, 0, 0);

     document.query("#volume").on.change.add((e) {
       var volume = int.parse(e.target.value);
       var max = int.parse(e.target.max);
       var fraction = volume / max;
       gainNode.gain.value = fraction * fraction;
     });
  }

  void _loadSound(String name) {
     HttpRequest xhr = new HttpRequest();
     xhr.open("GET", name, true);
     xhr.responseType = "arraybuffer";
     xhr.on.load.add((e) {
       audioContext.decodeAudioData(xhr.response, function(buffer) {
         source.buffer = buffer;
         _playButton.disabled = false;
       }, function(ex) {
         print('Error decoding MP3 file');
       });
     });
     xhr.send();
  }
}

main() {
  var audioPlayer = new audioplayer();
  audioPlayer._loadSound("test.mp3");
}