@Entry
@Component
struct WuLiuMainPage {
  @State
  tabsIconItem: TabsIconModel = new TabsIconModel({ image: $r("app.media.task_06"), text: "任务" })
  @State
  tabsIconList: TabsIconModel[] = [
    new TabsIconModel({ image: $r("app.media.task_06"), text: "任务" }),
    new TabsIconModel({ image: $r("app.media.message_06"), text: "消息" }),
    new TabsIconModel({ image: $r("app.media.my_06"), text: "我的" })
  ]

  @Builder
  tabsBuilder(item: TabsIconModel) {
    Column() {
      Image(item.image)
        .height(20)
      Text(item.text)
        .fontSize(20)
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      ForEach(this.tabsIconList, (item: TabsIconModel) => {
        TabContent() {
          Tabs() {
            TabContent() {
              Column() {

              }
              .width("100%")
              .height("100%")
              .backgroundColor(Color.Green)
            }
            .tabBar("待提货")

            TabContent() {
              Column() {

              }
              .width("100%")
              .height("100%")
              .backgroundColor(Color.Black)
            }
            .tabBar("在途")

            TabContent() {
              Column() {

              }
              .width("100%")
              .height("100%")
              .backgroundColor(Color.Grey)
            }
            .tabBar("已完成")
          }
        }
        .tabBar(this.tabsBuilder(item))
      })
    }
    .width("100%")
    .height("100%")
  }
}

export interface TabsIcon {
  image: ResourceStr | string
  text: string
}

export class TabsIconModel implements TabsIcon {
  image: ResourceStr | string = ''
  text: string = ''

  constructor(model: TabsIcon) {
    this.image = model.image
    this.text = model.text
  }
}
