import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.8
import QtQuick.Window 2.2

Window {
    id: mainWindow
    visible: true
    title: qsTr("CuteRadio")

    //Component.onCompleted: mainWindow.showFullScreen()
    Component.onCompleted: mainWindow.showNormal()

    Rectangle {
        anchors.fill:  parent
        color: "magenta"

        Rectangle {
            anchors.centerIn: parent
            width: 800
            height: 480
            color: "blue"

            property real _menuWidth: 0.25 * width
            property real _rowHeight: 0.125 * height

            Rectangle {
                id: statusBar
                anchors.left: parent.left
                anchors.right: parent.right
                height: parent._rowHeight
                color: "#946846" // raw umber
            }

            Rectangle {
                id: menu
                anchors.left: parent.left
                anchors.top: statusBar.bottom
                anchors.bottom: bottomBar.top
                width: parent._menuWidth
                color: "#E3C16F" // straw
            }

            Rectangle {
                id: stationInfo
                anchors.left: menu.right
                anchors.right: favorites.left
                anchors.top: statusBar.bottom
                anchors.bottom: bottomBar.top
                color: "#FAFF70" // unmellow yellow

                Label {
                    anchors.centerIn: parent
                    text: "Virgin On Air"
                    //text: "Virgin Rock Hits"
                    font.pixelSize: 36
                }
            }


            Rectangle {
                id: favorites
                anchors.right: parent.right
                anchors.top: statusBar.bottom
                anchors.bottom: bottomBar.top
                width: parent._menuWidth
                color: "#6D213C" // wine
            }

            BottomBar {
                id: bottomBar
                anchors.left: parent.left
                anchors.leftMargin: menu.width
                anchors.right: parent.right
                anchors.rightMargin: favorites.width
                anchors.bottom: parent.bottom
                height: parent._rowHeight
                player: g_player
            }
        }
    }

    MediaPlayer {
        id: g_player
        autoPlay: true
        volume: 0.10 // default volume at startup
        source: "https://icecast.unitedradio.it/Virgin.mp3?aw_0_1st.segment=%5B%22trzgdt3is%22%2C%22trzge0is9%22%2C%22trzfpeynk%22%2C%22trzf6bgf0%22%2C%22trzf7rahp%22%2C%22trzfrfwcn%22%2C%22trzf83269%22%2C%22trzgag9f7%22%2C%22trzftc44l%22%2C%22trzfvcju2%22%2C%22trzf3jap1%22%2C%22trzgbvzwd%22%2C%22trzfwudi6%22%2C%22trzixl1ai%22%2C%22trzi0hhh1%22%2C%22trzi2zfft%22%2C%22trzi4hyei%22%2C%22trzi562j4%22%2C%22trzjcdqgz%22%2C%22trzje1e1r%22%2C%22trzjgjz59%22%2C%22trzjipxcd%22%2C%22trzjmypdl%22%2C%22trzjrc7rk%22%2C%22trzjs66zn%22%2C%22trzjw0p87%22%2C%22trzjy7myk%22%2C%22trzj1z8r9%22%2C%22trzj34yf9%22%2C%22trzj6cppk%22%2C%22trzj72q96%22%2C%22trzkunu6p%22%2C%22trzkwjmcx%22%2C%22trzkyfhv5%22%2C%22trzk0x6b5%22%2C%22trzk23bus%22%2C%22trzk6df08%22%2C%22trzloaudx%22%2C%22trzlpk3fp%22%2C%22trzlq0k8w%22%2C%22trzlxi1py%22%2C%22trzlysrpk%22%2C%22trzlz5o6u%22%2C%22trzl09ylw%22%2C%22trzw33ib1%22%2C%22trzw5fnq0%22%2C%22trzw6tevp%22%2C%22trzw783d6%22%2C%22trzxe6z6m%22%2C%22trzxglubs%22%2C%22trzxikwym%22%2C%22trzylsz33%22%2C%22trzynj8e6%22%2C%22trzyo6hbi%22%2C%22trzyqfwdq%22%2C%22trzyrsanz%22%2C%22trzys7u8n%22%2C%22trzyul8v3%22%2C%22trzwmx211%22%2C%22trzwoh7l5%22%2C%22trzwpu3wl%22%2C%22trzwrc91i%22%2C%22trzws5nnt%22%2C%22trzwu1x3l%22%2C%22trzwv54cu%22%2C%22trzwxrg1d%22%2C%22trzwy8jla%22%2C%22trzggweha%22%2C%22trzgtr0wu%22%2C%22trzgu4t5q%22%5D&aw_0_req.userConsent=BOoyhzcOvVTchAKAABITC--AAAAuhr_7__7-_9_-_f__9uj3Or_v_f__32ccL59v_h_7v-_7fi_20nV4-_1vft9yfk1-5dtDztp507iakiPHmqNeb9n9mz1e5pRP78k89r7337Ew_v8_v-b7JCON_YxEiA&listenerid=0964bea5e65b69ac8ab671d56e5c8879"
        //source: "http://icy.unitedradio.it/VirginRockHits.mp3?aw_0_1st.segment=%5B%22trzgdt3is%22%2C%22trzge0is9%22%2C%22trzfpeynk%22%2C%22trzf6bgf0%22%2C%22trzf7rahp%22%2C%22trzfrfwcn%22%2C%22trzf83269%22%2C%22trzgag9f7%22%2C%22trzftc44l%22%2C%22trzfvcju2%22%2C%22trzf3jap1%22%2C%22trzgbvzwd%22%2C%22trzfwudi6%22%2C%22trzixl1ai%22%2C%22trzi0hhh1%22%2C%22trzi2zfft%22%2C%22trzi4hyei%22%2C%22trzi562j4%22%2C%22trzjcdqgz%22%2C%22trzje1e1r%22%2C%22trzjgjz59%22%2C%22trzjipxcd%22%2C%22trzjmypdl%22%2C%22trzjrc7rk%22%2C%22trzjs66zn%22%2C%22trzjw0p87%22%2C%22trzjy7myk%22%2C%22trzj1z8r9%22%2C%22trzj34yf9%22%2C%22trzj6cppk%22%2C%22trzj72q96%22%2C%22trzkunu6p%22%2C%22trzkwjmcx%22%2C%22trzkyfhv5%22%2C%22trzk0x6b5%22%2C%22trzk23bus%22%2C%22trzk6df08%22%2C%22trzloaudx%22%2C%22trzlpk3fp%22%2C%22trzlq0k8w%22%2C%22trzlxi1py%22%2C%22trzlysrpk%22%2C%22trzlz5o6u%22%2C%22trzl09ylw%22%2C%22trzw33ib1%22%2C%22trzw5fnq0%22%2C%22trzw6tevp%22%2C%22trzw783d6%22%2C%22trzxe6z6m%22%2C%22trzxglubs%22%2C%22trzxikwym%22%2C%22trzylsz33%22%2C%22trzynj8e6%22%2C%22trzyo6hbi%22%2C%22trzyqfwdq%22%2C%22trzyrsanz%22%2C%22trzys7u8n%22%2C%22trzyul8v3%22%2C%22trzwmx211%22%2C%22trzwoh7l5%22%2C%22trzwpu3wl%22%2C%22trzwrc91i%22%2C%22trzws5nnt%22%2C%22trzwu1x3l%22%2C%22trzwv54cu%22%2C%22trzwxrg1d%22%2C%22trzwy8jla%22%2C%22trzggweha%22%2C%22trzgtr0wu%22%2C%22trzgu4t5q%22%5D&amp;aw_0_req.userConsent=BOoyhzcOu-MhgB7DPBITC2-AAAAtF7_______9______9uz_Ov_v_f__33e8__9v_l_7_-___u_-33d4u_1vf99yfm1-7etr3tp_87ues2_Xur__79__3z3_9pxP78k89r7337Ew_v-_v-b7JCON_A&amp;listenerid=0964bea5e65b69ac8ab671d56e5c8879"
    }
}
