// import { DataList } from '../CaseDay02/HeimaBliBliPage'
//
// @Entry
// @Component
// export struct ContentPage_03 {
//   @State
//   item: DataList =
//     new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp",
//       "2024黑马程序员", "黑马程序员", "3.1万", "174万")
//
//   build() {
//     Row() {
//       Image(this.item.image)
//         .layoutWeight(2)
//         .borderRadius(6)
//       Column() {
//         Text(this.item.title)
//           .maxLines(2)
//           .textOverflow({ overflow: TextOverflow.Ellipsis })
//           .margin({
//             bottom: 10
//           })
//         Column() {
//           Row({ space: 10 }) {
//             Image($r("app.media.up_32"))
//               .height(22)
//             Text(this.item.up)
//               .fontColor("rgb(186, 186, 186)")
//           }
//           .width("100%")
//           .justifyContent(FlexAlign.Start)
//
//           Row() {
//             Row({ space: 10 }) {
//               Row() {
//                 Image($r("app.media.bf_32"))
//                   .margin({ left: 1 })
//                   .height(12)
//               }
//               .margin({ left: 1 })
//               .justifyContent(FlexAlign.Center)
//               .height(17)
//               .width(19)
//               .border({ width: 1, color: "rgb(191, 191, 191)" })
//               .borderRadius(3)
//
//               Text(this.item.play)
//                 .fontColor("rgb(191, 191, 191)")
//             }
//             .margin({ right: 20 })
//
//             Row({ space: 5 }) {
//               Image($r("app.media.key"))
//                 .height(22)
//               Text(this.item.comment)
//                 .fontColor("rgb(191, 191, 191)")
//             }
//           }
//           .width("100%")
//           .justifyContent(FlexAlign.Start)
//         }
//       }
//       .layoutWeight(3)
//     }
//     .width("100%")
//     .backgroundColor("rgb(245, 244, 244)")
//   }
// }
//
import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct ContentPage_03 {
  @State
  Power: powerobject[] = [
    {
      imgurl: "https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg",
      name: '白云科技充电站',
      distens: '560m',
      address: '朝阳区金台路道家园1号',
      cost: '1.50'
    },
    {
      imgurl: "https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg",
      name: '四川科技充电站',
      distens: '300m',
      address: '四川区金台路道2号',
      cost: '3.50'
    },
    {
      imgurl: "https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg",
      name: '重庆充电站',
      distens: '50m',
      address: '重庆区家园100号',
      cost: '2.00'
    },
    {
      imgurl: "https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg",
      name: '白科云充电站',
      distens: '560m',
      address: '朝阳区金台路道家园1号',
      cost: '1.50'
    },
    {
      imgurl: "https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg",
      name: '科云充电站',
      distens: '560m',
      address: '区金台路道家园朝阳1号',
      cost: '1.50'
    },
    {
      imgurl: "https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg",
      name: '白云科技充电站',
      distens: '560m',
      address: '台路道家朝阳区金园1号',
      cost: '1.50'
    },
    {
      imgurl: "https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg",
      name: '白云充电站',
      distens: '560m',
      address: '道家朝阳园1号金台区路',
      cost: '1.50'
    },

  ]

  build() {
    Column() {
      Row() {
        Text("充电站列表")
          .fontSize(23)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Start)
          .width('100%')
          .padding({ left: 20 })
      }
      .height(60)
      .alignItems(VerticalAlign.Top)


      List() {
        ForEach(this.Power, (item: powerobject, index: number) => {
          ListItem() {
            Row({ space: 10 }) {
              Image(item.imgurl)
                .width(70)
                .aspectRatio(1)
                .borderRadius(10)
              Column() {
                Row() {
                  Row() {
                    Text(item.name + '')
                      .fontSize(14)
                    Image($r("app.media.location_01"))
                      .width(16)
                      .fillColor('#bfc0bb')
                    Text(item.distens + '')
                      .fontColor('#bfc0bb')
                      .fontSize(15)
                  }

                  Text(`￥${item.cost}`)
                    .fontSize(17)
                    .fontWeight(FontWeight.Bold)
                    .fontColor('#a3d744')

                }.justifyContent(FlexAlign.SpaceBetween)
                .width('100%')

                Row() {
                  Text(item.address)
                    .fontColor('#bfc0bb')
                    .fontSize(12)
                    .width(135)

                  Text('删除')
                    .fontSize(15)
                    .width(45)
                    .height(25)
                    .fontWeight(FontWeight.Bold)
                    .fontColor(Color.White)
                    .textAlign(TextAlign.Center)
                    .backgroundColor('#fff30528')
                    .borderRadius(10)
                    .margin({ right: 5 })
                    .onClick(() => {
                      AlertDialog.show(
                        {
                          title: '提示',
                          subtitle: '',
                          message: '确认要删除吗',
                          autoCancel: true,
                          alignment: DialogAlignment.Center,
                          gridCount: 3,
                          showInSubWindow: true,
                          isModal: true,
                          offset: { dx: 10, dy: 10 },
                          buttonDirection: DialogButtonDirection.HORIZONTAL,
                          buttons: [
                            {
                              value: '取消',
                              fontColor: '#818181',
                              action: () => {
                                promptAction.showToast({ message: '已取消删除' })
                              }
                            },
                            {
                              value: '确认',
                              fontColor: '#cb675a',
                              action: () => {
                                this.Power.splice(index, 1)
                                promptAction.showToast({ message: '已成功删除' })
                              }
                            }
                          ],
                          cancel: () => {
                            promptAction.showToast({ message: '已取消删除' })
                          }
                        })
                    })
                  Text('空闲 6')
                    .fontSize(15)
                    .width(48)
                    .height(25)
                    .fontWeight(FontWeight.Bold)
                    .fontColor(Color.White)
                    .textAlign(TextAlign.Center)
                    .backgroundColor('#a8d541')
                    .borderRadius(10)
                }
                .justifyContent(FlexAlign.Center)
                .alignItems(VerticalAlign.Bottom)

              }
              .height(65)
              .alignItems(HorizontalAlign.Start)
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
            }
            .width('80%')
            .alignItems(VerticalAlign.Top)
          }
          .width('80%')
          .height(100)
        })
      }
    }
    .height('100%')
    .width('100%')
    .padding({ right: 15 })
  }
}

class powerobject {
  imgurl: Resource | string =
    "https://cdn7.axureshop.com/demo2024/2307591/images/%E9%A6%96%E9%A1%B5/%E8%B7%AF%E5%BE%84_u597.svg"
  name: String = ''
  distens: String = ''
  address: string = ''
  cost: string = ''
}