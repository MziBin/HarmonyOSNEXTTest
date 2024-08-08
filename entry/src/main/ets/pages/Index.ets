import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Index {
  routerList: arrRouter[] = [
    new arrRouter("哔哩哔哩黑马页面", 'pages/CaseDay02/HeimaBliBliPage'),
    new arrRouter("知乎页面", 'pages/CaseDay04/ZhiHuPage'),
    new arrRouter("登录页面", "pages/CaseDay03/LoginPage_03"),
    new arrRouter("物流", "pages/CaseDay06/LogisticsRedirectPage")

  ]

  build() {
    List() {
      ForEach(this.routerList, (item: arrRouter) => {
        ListItem() {
          // 添加按钮，以响应用户点击
          Button() {
            Text(item.buttonName)
              .fontSize(30)
              .fontWeight(FontWeight.Bold)
          }
          //样式复用
          .buttonExtend(item)
        }
      })
    }
  }
}

class arrRouter {
  buttonName: string = ""
  urlPage: string = ""

  constructor(buttonName: string, urlPage: string) {
    this.buttonName = buttonName
    this.urlPage = urlPage
  }
}

@Extend(Button)
function buttonExtend(item: arrRouter) {
  .type(ButtonType.Capsule)
  .margin({
    top: 20
  })
  .backgroundColor('#0D9FFB')
  .width('100%')
  // 跳转按钮绑定onClick事件，点击时跳转到第二页
  .onClick(() => {
    console.info(`Succeeded in clicking the 'Next' button.`)
    // 跳转到第二页
    router.pushUrl({ url: item.urlPage }).then(() => {
      console.info('Succeeded in jumping to the second page.')

    }).catch((err: BusinessError) => {
      console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
    })
  })
}