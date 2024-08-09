@Entry
@Component
struct JKYMainPage {
  @State message: string = 'Hello World';
  tbBarItem: ITbBarModel = new ITbBarModel({} as ITbBar)
  tbBarList: ITbBarModel[] = [
    new ITbBarModel({ image: $r("app.media.home_07"), text: "首页" }),
    new ITbBarModel({ image: $r("app.media.chat_07"), text: "问答" }),
    new ITbBarModel({ image: $r("app.media.vlog_07"), text: "视频" }),
    new ITbBarModel({ image: $r("app.media.my_07"), text: "我的" })
  ]

  @Builder
  tbBarS(item: ITbBarModel) {
    Column({ space: 5 }) {
      Image(item.image)
        .width(20)
      Text(item.text)
        .fontSize(13)
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      ForEach(this.tbBarList, (item: ITbBarModel) => {
        TabContent() {

        }.tabBar(this.tbBarS(item))
      })
    }
    .height('100%')
    .width('100%')
  }
}

interface ITbBar {
  image: ResourceStr
  text: string
}

class ITbBarModel {
  image: ResourceStr = ""
  text: string = ""

  constructor(itemModel: ITbBar) {
    this.image = itemModel.image
    this.text = itemModel.text
  }
}