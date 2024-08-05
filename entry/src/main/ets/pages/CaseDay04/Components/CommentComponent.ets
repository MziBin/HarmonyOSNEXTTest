import { CommentItem, CommentItemModel } from '../Model/CommentModel'
import { promptAction } from '@kit.ArkUI'

@Preview
@Component
export struct CommentComponent {
  @State
  commentData: CommentItemModel = new CommentItemModel({} as CommentItem)
  @State upvoteColor: ResourceColor | Length = "#cdcdcd"
  likeUpdate: () => void = () => {
  }

  build() {
    Row({ space: 20 }) {
      Image(this.commentData.avatar)
        .width(60)
        .aspectRatio(1)
        .borderRadius(30)
      Column({ space: 10 }) {
        Text(this.commentData.author)
          .fontWeight(FontWeight.Bold)
        Text(this.commentData.content)
        Row() {
          Text(`${this.commentData.time}` + " .IP " + "属地" + `${this.commentData.area}`)
            .fontColor("#cdcdcd")
            .fontSize(15)
          Row() {
            Image($r("app.media.love"))// .fillColor(this.upvoteColor)
              .fillColor(this.commentData.likeFlag ? Color.Red : "#cdcdcd")
              .width(15)
              .aspectRatio(1)
              .onClick(() => {
                //还是的要小括号，因为变量就相当于函数的引用地址，加个括号才是使用
                this.likeUpdate()
                // this.upvoteColor = Color.Red
                // promptAction.showToast({ message: "点赞" })
              })
            Text(" " + this.commentData.likeNum.toString())
              .fontColor("#cdcdcd")
              .fontSize(15)
          }
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .alignItems(VerticalAlign.Top)
    .width("100%")
    .padding(15)
  }
}