interface Itext {
  arr: string
  ll: number
}
export class ItextModel implements Itext {
  arr: string = ''
  ll: number = 0

  constructor(model: Itext) {
    this.arr = model.arr
    this.ll = model.ll
  }
}
