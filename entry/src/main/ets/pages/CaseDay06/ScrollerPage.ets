@Entry
@Component
struct ScrollerPage {
  scroller: Scroller = new Scroller()

  @Builder
  TopItem(): void {
    Row() {
      Text("我是顶部")
        .height(60)
        .width("100%")
        .backgroundColor(Color.Blue)
        .textAlign(TextAlign.Center)
    }
    .width("100%")
    .onClick(() => {
      this.scroller.scrollEdge(Edge.Top)
    })
  }

  @Builder
  bomItem(): void {
    Row() {
      Text("我是底部")
        .width("100%")
        .textAlign(TextAlign.Center)
        .height(60)
    }
    .width("100%")
    .backgroundColor(Color.Red)
    .onClick(() => {
      this.scroller.scrollEdge(Edge.Bottom)
    })
  }

  build() {
    Column() {
      this.TopItem()
      //注意scroll的子组件不要写高度，否则滚动条会出不来
      Scroll(this.scroller) {
        Column({ space: 20 }) {
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
          Row()
            .width("100%")
            .height(60)
            .backgroundColor(Color.Gray)
        }
      }
      .width("100%")
      .layoutWeight(1)

      this.bomItem()
    }
  }
}