@Entry
@Component
struct HMDiscoverPage {

  build() {
    Column() {
      Row() {
        Row({space: 2}) {
          Image($r("app.media.location_01") )
            .height(13)
          Text("西安市")
            .fontSize(13)
        }
        .width(60)
        .padding(5)
        .backgroundColor("#ffffff")
        .borderRadius(6)
        .justifyContent(FlexAlign.Center)

        Row({space: 20}) {
          Text("发现")
            .fontSize(22)
            .fontWeight(FontWeight.Medium)
            .border({
              width: {
                bottom: 3
              },
              color: "#ff6c08d4"
            })
          Text("附近")
            .fontSize(22)
        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.Center)

        Row() {
          Image($r("app.media.navigation_bar"))
            .height(16)
        }
        .width(60)
        .justifyContent(FlexAlign.End)

      }
      .width("100%")

      Stack({alignContent: Alignment.BottomEnd}) {
        Image($r("app.media.people_01"))
          .height(500)
          .borderRadius(12)
        Row() {
          Column() {
            Text("西瓜")
              .fontSize(22)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.White)
            Text("3.4km.互联网.天秤座")
              .fontColor(Color.White)
            Row({space: 3}) {
              Image($r("app.media.bf_02"))
                .height(20)
              Image($r("app.media.voice"))
                .height(20)
            }
          }
          .alignItems(HorizontalAlign.Start)

          Row() {
            Image($r("app.media.love"))
              .height(25)
          }
          .justifyContent(FlexAlign.Center)
          .height(50)
          .width(50)
          .borderRadius(25)
          .backgroundColor(Color.White)

        }
        .padding(10)
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
        .alignItems(VerticalAlign.Bottom)
      }
      .margin({
        top: 20
      })

      Row() {
        Row() {
          Column() {
            Text("灵魂匹配")
              .fontSize(18)
            Text("和欣赏你的人聊天")
              .fontSize(9)
          }
          .alignItems(HorizontalAlign.Start)
          Image($r("app.media.aiqfome"))
            .height(50)
        }
        .justifyContent(FlexAlign.SpaceEvenly)
        .width("146")
        .height("60")
        .backgroundColor("#c39653c8")
        .borderRadius(12)

        Row() {
          Column() {
            Text("灵魂匹配")
              .fontSize(18)
            Text("和欣赏你的人聊天")
              .fontSize(9)
          }
          .alignItems(HorizontalAlign.Start)
          Image($r("app.media.aiqfome"))
            .height(50)
        }
        .justifyContent(FlexAlign.SpaceEvenly)
        .width("146")
        .height("60")
        .backgroundColor("#c3c6aa70")
        .borderRadius(12)
      }
      .margin(20)
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)
      //底部
      Row({space: 60}) {
        Image($r("app.media.compass") )
          .height(30)
        Image($r("app.media.chat") )
          .height(30)
        Image($r("app.media.me") )
          .height(30)
      }
      .padding({
        right: 30,
        top: 10
      })
      .justifyContent(FlexAlign.End)
      .width("100%")
      .border({width: {
        top: 2
      },color: "#ffe9b5b5"})
    }
    .backgroundColor("#fff6f2f2")
    .height('100%')
    .width('100%')
    .padding({
      left: 20,
      right: 20
    })
  }
}