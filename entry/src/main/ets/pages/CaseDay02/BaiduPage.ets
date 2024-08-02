import { LengthMetricsUnit } from '@kit.ArkUI';

@Entry
@Component
struct BaiduPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Image("https://search-operate.cdn.bcebos.com/e8cbce1d53432a6950071bf26b640e2b.gif")
        .width(160)
        .height(80)

      Row() {
        TextInput()
          .height(40)
          .type(InputType.Normal)
          .layoutWeight(1)
          .borderRadius({
            topLeft: 10,
            bottomLeft: 10
          })
          .border({
            width: {
              top: 2,
              left: 2,
              bottom: 2
            },
            color: "rgb(153, 159, 167)"
          })

        Button("百度一下")
          .type(ButtonType.Normal)
          .backgroundColor("rgb(80, 176, 253)")
          .borderRadius({
            topRight: 10,
            bottomRight: 10
          })
      }
    }
    .padding({
      right: 20,
      left: 20
      // start: {value: 20, unit: 1},
      // end: {value: 20, unit: 1}
    })
    .height('100%')
    .width('100%')
    .backgroundColor("rgba(226, 146, 146, 1.00)")
    .justifyContent(FlexAlign.Center)
  }
}