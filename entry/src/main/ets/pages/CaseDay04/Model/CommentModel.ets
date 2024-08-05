export interface CommentItem {
  id: number
  avatar: string
  author: string
  content: string
  time: string
  area: string
  likeNum: number
  likeFlag: boolean
}

export class CommentItemModel implements CommentItem {
  id: number = 0
  avatar: string = ''
  author: string = ''
  content: string = ''
  time: string = ''
  area: string = ''
  likeNum: number = 0
  likeFlag: boolean = false

  constructor(model: CommentItem) {
    this.avatar = model.avatar
    this.author = model.author
    this.content = model.content
    this.time = model.time
    this.area = model.area
    this.likeNum = model.likeNum
    this.likeFlag = model.likeFlag
  }
}
