import { ShowGoodsComponent } from './Components'
import { IShowGoodsModel } from './Model'
import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct WaterFlowPage {
  @State
  goodsList: IShowGoodsModel[] = [
    new IShowGoodsModel({
      "id": 1,
      "goods_name": "班俏BANQIAO超火ins潮卫衣女士2020秋季新款韩版宽松慵懒风薄款外套带帽上衣",
      "goods_img": "assets/1.webp",
      "goods_price": 108,
      "goods_count": 1,
    }),
    new IShowGoodsModel({
      "id": 2,
      "goods_name": "嘉叶希连帽卫衣女春秋薄款2020新款宽松bf韩版字母印花中长款外套ins潮",
      "goods_img": "assets/2.webp",
      "goods_price": 129,
      "goods_count": 1,
    }),
    new IShowGoodsModel({
      "id": 3,
      "goods_name": "思蜜怡2020休闲运动套装女春秋季新款时尚大码宽松长袖卫衣两件套",
      "goods_img": "assets/3.webp",
      "goods_price": 198,
      "goods_count": 1,
    }),
    new IShowGoodsModel({
      "id": 4,
      "goods_name": "思蜜怡卫衣女加绒加厚2020秋冬装新款韩版宽松上衣连帽中长款外套",
      "goods_img": "assets/4.webp",
      "goods_price": 99,
      "goods_count": 1,
    }),
    new IShowGoodsModel({
      "id": 5,
      "goods_name": "幂凝早秋季卫衣女春秋装韩版宽松中长款假两件上衣薄款ins盐系外套潮",
      "goods_img": "assets/5.webp",
      "goods_price": 156,
      "goods_count": 1,
    }),
    new IShowGoodsModel({
      "id": 6,
      "goods_name": "ME&CITY女装冬季新款针织抽绳休闲连帽卫衣女",
      "goods_img": "assets/6.webp",
      "goods_price": 142.8,
      "goods_count": 1,
    }),
    new IShowGoodsModel({
      "id": 7,
      "goods_name": "幂凝假两件女士卫衣秋冬女装2020年新款韩版宽松春秋季薄款ins潮外套",
      "goods_img": "assets/7.webp",
      "goods_price": 219,
      "goods_count": 2,
    }),
    new IShowGoodsModel({
      "id": 8,
      "goods_name": "依魅人2020休闲运动衣套装女秋季新款秋季韩版宽松卫衣 时尚两件套",
      "goods_img": "assets/8.webp",
      "goods_price": 178,
      "goods_count": 1,
    }),
    new IShowGoodsModel({
      "id": 9,
      "goods_name": "芷臻(zhizhen)加厚卫衣2020春秋季女长袖韩版宽松短款加绒春秋装连帽开衫外套冬",
      "goods_img": "assets/9.webp",
      "goods_price": 128,
      "goods_count": 1,
    }),
    new IShowGoodsModel({
      "id": 10,
      "goods_name": "Semir森马卫衣女冬装2019新款可爱甜美大撞色小清新连帽薄绒女士套头衫",
      "goods_img": "assets/10.webp",
      "goods_price": 153,
      "goods_count": 1,
    })
  ]
  scroller: Scroller = new Scroller()
  @State
  loadingFlag: boolean = false

  @Builder
  loadingRefresh(): void {
    if (this.loadingFlag) {
      Column() {
        Text("加载中...")
        LoadingProgress()
          .height(20)
          .width(20)
      }
      .width("100%")
      .justifyContent(FlexAlign.Center)
    }
  }

  //添加数据,等待3秒后添加数据刷新
  async addGoods(): Promise<boolean> {

    return new Promise<boolean>((resolve, reject) => {
      setTimeout(() => {
        // 等待一秒钟
        // 得到新的数据 放到新的数组里面
        this.goodsList.push(...this.goodsList.slice(0, 9)) // 直接往里面push10条数据
        resolve(true)
      }, 3000)
    }) // this.goodsList.push(...this.goodsList)// promptAction.showToast({ message: "添加数据" })
    // (this.scroller.scrollEdge(Edge.Top))()
  }

  build() {
    WaterFlow({
      footer: this.loadingRefresh(),
      scroller: this.scroller
    }) {
      ForEach(this.goodsList, (item: IShowGoodsModel, index: number) => {
        FlowItem() {
          ShowGoodsComponent({ showGoodsModel: item, index: index })
        }
      })
    }
    .onReachEnd(
      async () => {
        this.scroller.scrollEdge(Edge.Top)
        // promptAction.showToast({ message: '滚动底部啦' })
        if (!this.loadingFlag) {
          try {
            this.loadingFlag = true // 关门操作
            await this.addGoods() // 执行完毕
            this.loadingFlag = false // 开门操作
          } catch (error) {
          }
        }

      }
      /*() => {
      await this.addGoods()
      this.scrollerItem.scrollEdge(Edge.Top)
      // promptAction.showToast({
      //   message: "加载中..."
      // })
    }*/
    )
    .columnsGap(20)
    .rowsGap(20)
    .padding(20)
    .columnsTemplate("1fr 1fr")
    .height('100%')
    .width('100%')
  }
}