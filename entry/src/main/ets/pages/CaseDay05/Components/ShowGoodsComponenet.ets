import { IShowGoods, IShowGoodsModel } from '../Model'

@Preview
@Component
struct ShowGoodsComponent {
  showGoodsModel: IShowGoodsModel = new IShowGoodsModel({} as IShowGoods)
  index: number = 0

  build() {
    Column({ space: 20 }) {
      Row() {
        Image(this.showGoodsModel.goods_img)
          .height(this.index % 2 === 0 ? 230 : 180)
          .borderRadius(20)
      }

      Text(this.showGoodsModel.goods_name)
    }
  }
}

export { ShowGoodsComponent }