@Entry
@Component
struct TestStatePage {
  @State message: string = 'Hello World';
  @State passwordFlag: boolean = false

  build() {
    Column() {
      Column({ space: 20 }) {
        Stack() {
          Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/bg_u92.svg")
            .height(60)
          Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/u93.svg")
            .height(30)
        }

        Text("闪充")
          .fontSize(22)
          .fontWeight(FontWeight.Bold)
        Text("行驶保价护航，充电轻松安心")
          .fontColor(Color.Gray)
      }
      .width("100%")

      Column() {
        TextInput({ placeholder: "输入手机号码" })
        TextInput({ placeholder: "输入手机密码" })
          .type(InputType.Password)
        Text("忘记密码")
          .textAlign(TextAlign.End)
          .fontWeight(FontWeight.Bold)
          .width("100%")
        Button("登录")
          .backgroundColor("#a6d74a")
          .width("100%")
          .type(ButtonType.Normal)
          .borderRadius(6)
      }
      .width("100%")

      Text("-第三方账号登录-")
        .fontColor(Color.Gray)
      Row() {
        Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/vector_u55.svg")
          .height(30)
        Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/vector_u61.svg")
          .height(30)
        //两个图片的组合怎么弄
        Stack() {
          Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/vector_u67.svg")
            .height(30)
          Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/vector_u66.svg")
            .height(30)
        }
      }

      Row() {
        Text("没有账户？")
        Text("注册")
      }
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
  }
}