import { promptAction, router } from '@kit.ArkUI'
import { iPhone, iPhoneModel } from './LoginWuLiuPage'


@Entry
@Component
struct Splash {
  @State
  num: number = 5
  timer: number = -1
  //获取AppStorage中userInfo的数据给下面的字段
  @StorageLink("userInfo")
  userPhone: iPhoneModel = new iPhoneModel({} as iPhone)

  // 生命周期
  // 页面创建时执行  在build之前
  aboutToAppear(): void {
    this.beginRun() // 开启倒计时
  }

  beginRun() {
    this.timer = setInterval(() => {
      if (this.num === 0) {
        // clearInterval(this.timer) // 清空定时器
        // push的时候 前一个页面不会销毁
        // router.replaceUrl({
        //   url: 'pages/CaseDay06/LoginWuLiuPage'
        // })
        if (this.userPhone.phoneName === "admin3") {
          router.replaceUrl({
            url: 'pages/CaseDay06/WuLiuMainPage'
          })
        } else {
          router.replaceUrl({
            url: 'pages/CaseDay06/LoginWuLiuPage'
          })
        }
        // router.replaceUrl({
        //   url: '/pages/CaseDay01/LoginPage'
        // })
        // replace会销毁前面的页面
      } else {
        this.num--
      }

    }, 1000)

  }

  // 页面显示时触发
  onPageShow(): void {
  }

  // 页面隐藏时触发
  onPageHide(): void {
  }

  // 页面销毁时执行
  aboutToDisappear(): void {
    clearInterval(this.timer) // 直接清空
  }

  build() {
    RelativeContainer() {
      Text(this.num + "秒后跳转")
        .id('SplashHelloWorld')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Top },
          middle: { anchor: '__container__', align: HorizontalAlign.End }
        })
        .backgroundColor("#ffc10f0f")
        .border({
          width: 1,
          color: Color.Gray
        })
        .borderRadius(30)
        .margin({ right: 100 })
        .fontColor(Color.Gray)
        .onClick(() => {
          // 直接跳转
          // clearInterval(this.timer)
          // router.replaceUrl({
          //   url: 'pages/CaseDay06/LoginWuLiuPage'
          // })
          promptAction.showToast({
            message: "跳转"
          })

          if (this.userPhone.phoneName === "admin3") {
            router.replaceUrl({
              url: 'pages/CaseDay06/WuLiuMainPage'
            })
          } else {
            router.replaceUrl({
              url: 'pages/CaseDay06/LoginWuLiuPage'
            })
          }

        })
    }
    .backgroundImage("/assets/gaungao.png")
    .height('100%')
    .backgroundImageSize({
      width: '100%',
      height: '100%'
    })
    .width('100%')
  }
}