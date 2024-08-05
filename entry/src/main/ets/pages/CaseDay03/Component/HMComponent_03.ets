import { DataList } from '../../CaseDay02/HeimaBliBliPage'

@Preview
@Component
export struct HMComponent_03 {
  @State
  item: DataList =
    new DataList("https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg",
      "白云科技充电站", "朝阳区金台路道家园1号", "￥1.50", "空闲 6")

  build() {
    Row({ space: 20 }) {
      Image(this.item.image)
        .aspectRatio(1)
        .borderRadius(6)
        .layoutWeight(1)
      Column() {
        Row() {
          Text(`${this.item.title}`)
          Image($r("app.media.location_01"))
            .margin({ left: 10 })
            .height(15)
            .fillColor(Color.Gray)
          Text("560m")
            .fontColor(Color.Gray)

          Text(`${this.item.play}`)
            .fontColor("#a6d74a")
            .fontWeight(FontWeight.Bold)
        }

        Row() {
          Text(`${this.item.up}`)
            .fontColor(Color.Gray)
          Text(`${this.item.comment}`)
            .fontColor(Color.White)
            .backgroundColor("#a6d74a")
            .borderRadius(10)
            .padding(5)
        }

      }
      .layoutWeight(4)
      .justifyContent(FlexAlign.SpaceBetween)

      // Column() {
      //   // Text(`${this.item.play}`)
      //   //   .fontColor("#a6d74a")
      //   //   .fontWeight(FontWeight.Bold)
      //   // Text(`${this.item.comment}`)
      //   //   .fontColor(Color.White)
      //   //   .backgroundColor("#a6d74a")
      //   //   .borderRadius(10)
      //   //   .padding(5)
      // }
      // .layoutWeight(1)
    }
    .width("100%")
  }
}