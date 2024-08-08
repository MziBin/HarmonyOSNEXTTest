import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct LoginWuLiuPage {
  @State
  phoneNumber: string = ""
  @State
  checkPhone: string = ""

  build() {
    Column() {
      Row() {
        Text("神领快递")
          .fontSize(20)
          .fontWeight(FontWeight.Medium)
      }
      .width("100%")
      .justifyContent(FlexAlign.Center)
      .margin(20)

      Row() {
        Text("手机号登录")
          .fontWeight(FontWeight.Bold)
          .fontSize(26)
          .margin(20)
        Row({ space: 5 }) {
          Text("账号登录")
            .textAlign(TextAlign.End)
            .fontColor("#e16d5d")
            .fontWeight(FontWeight.Medium)
          Image($r('sys.media.ohos_ic_public_play'))
            .width(20)
            .fillColor("#e16d5d")
        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.End)
      }
      .width("100%")
      .height(80)

      Column() {
        Row() {
          TextInput({ placeholder: "请输入手机号", text: $$this.phoneNumber })
            .height(60)
            .backgroundColor(Color.White)
        }
        .border({ width: { bottom: 1 }, color: { bottom: Color.Grey } })

        Row() {
          TextInput({ placeholder: "请输入验证码", text: $$this.checkPhone })
            .height(60)
            .backgroundColor(Color.White)
            .layoutWeight(2)
          Text("获取验证码")
            .layoutWeight(1)
            .border({ width: { left: 1 }, color: Color.Grey })
            .textAlign(TextAlign.Center)
        }
        .border({ width: { bottom: 1 }, color: Color.Grey })
      }
      .margin({ top: 20, bottom: 50 })

      Row() {
        Button("登录")
          .width(260)
          .height(50)
          .backgroundColor("#e16d5d")
          .enabled(!!(this.phoneNumber && this.checkPhone))
          .onClick(() => {
            promptAction.showToast({
              message: "登录成功"
            })
            //将数据加入appstorage
            AppStorage.setOrCreate("userInfo", new iPhoneModel({
              phoneName: this.phoneNumber,
              checkNumber: this.checkPhone
            }))
            router.replaceUrl({
              url: 'pages/CaseDay06/WuLiuMainPage'
            })
          })
      }
    }
  }
}

export interface iPhone {
  phoneName: string
  checkNumber: string
}

export class iPhoneModel implements iPhone {
  phoneName: string = ''
  checkNumber: string = ''

  constructor(model: iPhone) {
    this.phoneName = model.phoneName
    this.checkNumber = model.checkNumber
  }
}

// 将AppStorage.setOrCreate创建的userInfo，加入本地磁盘持久化
PersistentStorage.persistProp<iPhoneModel>("userInfo", new iPhoneModel({} as iPhone))