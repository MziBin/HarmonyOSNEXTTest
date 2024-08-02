/*
@Entry
@Component
struct Login {
  @Styles
  inputStyle() {
    .backgroundColor('#fff')
    .border({ color: "#EEEEEE", width: { bottom: 1 } })
    .width('100%')
    .height(58)
    .borderRadius(0)
  }

  build() {
    Column() {
      // 顶部标题
      Text("神领快递").fontColor("#2A2929").fontSize(18).height(25)
      // 账号登录
      Row() {
        Text('账号登录').fontColor("#2A2929").fontSize(24).fontWeight(FontWeight.Bold)
        Row() {
          Text("账号登录").fontColor("#EF4F3F").fontSize(16).fontWeight(FontWeight.Bold)
        }
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 50, bottom: 50 })

      // 用户名输入框
      TextInput({ placeholder: '请输入账号' })
        .inputStyle()

      // 密码框
      TextInput({ placeholder: '请输入密码' })
        .inputStyle()
        .type(InputType.Password)// 密码框
        .showPasswordIcon(true) // 显示密码按钮

      // 登录按钮
      Button({ type: ButtonType.Capsule }) {
        Row() {
          LoadingProgress().width(20).height(20).margin({ right: 12 }).color(Color.White)
          Text('登录').fontColor(Color.White)
        }
      }
      .backgroundColor("#FADCD9")
      .width('100%')
      .height(50)
      .margin({ top: 50 })

      Row() {
        componentTest01() {
          Text()
        }
      }
    }
    .padding({ left: 32, right: 32 })
    .margin({ top: 40 })
  }
}


@Component
struct componentTest01 {
  build() {
    Text()
  }
}*/
