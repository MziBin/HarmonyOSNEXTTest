import { promptAction } from '@kit.ArkUI';


@Entry
@Component
struct LoginPage_03 {
  @State username: string = '';
  @State password: string = '';
  @State passwordFlag: boolean = false
  @State isShowButton: boolean = false

  isPassword() {
    if (this.username === "admin" && this.password === "123456") {
      this.passwordFlag = true;
    } else {
      this.passwordFlag = false;
    }
  }

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

      Column({ space: 15 }) {
        TextInput({ placeholder: "输入手机号码", text: $$this.username })
          .borderRadius(15)
          .height(60)
        TextInput({ placeholder: "输入手机密码", text: $$this.password })
          .borderRadius(15)
          .height(60)
          .type(InputType.Password)
        Text("忘记密码")
          .textAlign(TextAlign.End)
          .fontWeight(FontWeight.Bold)
          .width("100%")
        Button("登录", { type: ButtonType.Normal })
          .backgroundColor("#a6d74a")
          .width("100%")
          .borderRadius(15)
          .height(50)
          .onClick(() => {
            this.isPassword()
            if (this.passwordFlag) {
              promptAction.showToast({ message: "登录成功" })
            } else {
              promptAction.showDialog({
                title: "登录失败",
                message: "请检查用户名和密码",
                buttons: [{ text: "确定", color: "#fffffff" }]
              })
            }
          })
          .enabled(this.isShowButton)
      }
      .width("100%")

      Column({ space: 30 }) {
        Text("-第三方账号登录-")
          .fontColor(Color.Gray)
          .margin({ top: 20 })
        Row({ space: 30 }) {
          Row() {
            Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/vector_u55.svg")
              .height(30)
          }
          .justifyContent(FlexAlign.Center)
          .width(60)
          .aspectRatio(1)
          .backgroundColor("#f5f7f9")
          .borderRadius(6)

          Row() {
            Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/vector_u61.svg")
              .height(30)
          }
          .justifyContent(FlexAlign.Center)
          .width(60)
          .aspectRatio(1)
          .backgroundColor("#f5f7f9")
          .borderRadius(6)

          //两个图片的组合怎么弄
          Stack() {
            Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/vector_u67.svg")
              .height(30)
            Image("https://cdn7.axureshop.com/demo2024/2307591/images/%E7%99%BB%E5%BD%95/vector_u66.svg")
              .height(30)
          }
          .alignContent(Alignment.Center)
          .width(60)
          .aspectRatio(1)
          .backgroundColor("#f5f7f9")
          .borderRadius(6)
        }
      }

      Row({ space: 10 }) {
        Text("没有账户？")
          .fontColor(Color.Gray)
        Text("注册")
          .fontWeight(FontWeight.Bold)
      }
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
    .padding({ left: 20, right: 20 })
  }
}