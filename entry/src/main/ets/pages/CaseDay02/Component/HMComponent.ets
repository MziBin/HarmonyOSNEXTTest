import { DataList } from '../HeimaBliBliPage'

@Component
export struct HMComponent {
  @State
  item: DataList = new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "2024黑马程序员", "黑马程序员", "3.1万", "174万")

  build() {
    Row() {
      Image(this.item.image)
        .layoutWeight(2)
        .borderRadius(6)
      Column() {
        Text(this.item.title)
          .maxLines(2)
          .textOverflow({overflow: TextOverflow.Ellipsis})
          .margin({
            bottom: 10
          })
        Column() {
          Row({space: 10}) {
            Image($r("app.media.up_32") )
              .height(22)
            Text(this.item.up)
              .fontColor("rgb(186, 186, 186)")
          }
          .width("100%")
          .justifyContent(FlexAlign.Start)
          Row() {
            Row({space: 10}) {
              Row() {
                Image($r("app.media.bf_32"))
                  .margin({left: 1})
                  .height(12)
              }
              .margin({left: 1})
              .justifyContent(FlexAlign.Center)
              .height(17)
              .width(19)
              .border({width: 1,color: "rgb(191, 191, 191)"})
              .borderRadius(3)

              Text(this.item.play)
                .fontColor("rgb(191, 191, 191)")
            }
            .margin({right: 20})

            Row({space: 5}) {
              Image($r("app.media.key"))
                .height(22)
              Text(this.item.comment)
                .fontColor("rgb(191, 191, 191)")
            }
          }
          .width("100%")
          .justifyContent(FlexAlign.Start)
        }
      }
      .layoutWeight(3)
    }
    .width("100%")
    .backgroundColor("rgb(245, 244, 244)")
  }
}