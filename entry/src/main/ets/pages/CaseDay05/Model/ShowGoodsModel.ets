export interface IShowGoods {
  id: number
  goods_name: string
  goods_img: string
  goods_price: number
  goods_count: number
}

export class IShowGoodsModel implements IShowGoods {
  id: number = 0
  goods_name: string = ''
  goods_img: string = ''
  goods_price: number = 0
  goods_count: number = 0

  constructor(model: IShowGoods) {
    this.id = model.id
    this.goods_name = model.goods_name
    this.goods_img = model.goods_img
    this.goods_price = model.goods_price
    this.goods_count = model.goods_count
  }
}
