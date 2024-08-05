import { router } from '@kit.ArkUI'

@Preview
@Component
export struct TitleComponent {
  title: string = "评论回复"

  build() {
    Row() {
      Image($r("app.media.ic_public_arrow_left"))
        .width(30)
        .aspectRatio(1)
        .backgroundColor("#cdcdcd")
        .borderRadius(15)
        .stateStyles({
          normal: {
            .backgroundColor("#cdcdcd")
          },
          pressed: {
            .backgroundColor("#ffffff")
          }
        })
        .onClick(() => {
          router.back()
        })
      Text(this.title)
        .fontSize(26)
        .fontWeight(FontWeight.Bold)
        .layoutWeight(1)
        .textAlign(TextAlign.Center)//要么内边距，要么就在下面在写行row
        .padding({
          right: 15
        })
      // Row()
      //   .width(30)
    }
    .width("100%")
    .padding({ left: 15, right: 15, bottom: 20 })
  }
}