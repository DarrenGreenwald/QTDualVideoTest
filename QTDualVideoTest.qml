import QtQuick 2.0
import QtMultimedia 5.0


Rectangle {
    width: 800
    height: 300
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Rectangle {
        id: innerRect1;
        width: 400
        height: 300
        x: 0
        y: 0
        color: "black"

        MediaPlayer {
            id: player1
            source: "file:///C:/Users/darren/Desktop/TestVideo.MOV"
            autoPlay: true

            onStopped: {
                console.log("Video stoppped");
                player1.play();
            }

            onPlaying: {
                console.log("Video playing");
            }
            onPlaybackStateChanged: {
                console.log("Video playback state changed");
            }
        }

        VideoOutput {
            id: videoOutput1
            source: player1
            anchors.fill: parent
        }
    }

    Rectangle {
        id: innerRect2;
        width: 400
        height: 300
        x: 400
        y: 0
        color: "black"

        MediaPlayer {
            id: player2
            source: "file:///C:/Users/darren/Desktop/sample_mpeg.mp4"
            autoPlay: true

            onStopped: {
                console.log("Video stoppped");
                player2.play();
            }

            onPlaying: {
                console.log("Video playing");
            }
            onPlaybackStateChanged: {
                console.log("Video playback state changed");
            }
        }

        VideoOutput {
            id: videoOutput2
            source: player2
            anchors.fill: parent
        }
    }
}



