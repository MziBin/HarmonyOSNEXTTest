import { CommentComponent, TitleComponent } from './Components'
import { CommentItemModel } from './Model'
import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct ZhiHuPage {
  @State commentData: CommentItemModel = new CommentItemModel({
    id: 0,
    avatar: "https://ts1.cn.mm.bing.net/th/id/R-C.57384e4c2dd256a755578f00845e60af?rik=uy9%2bvT4%2b7Rur%2fA&riu=http%3a%2f%2fimg06file.tooopen.com%2fimages%2f20171224%2ftooopen_sy_231021357463.jpg&ehk=whpCWn%2byPBvtGi1%2boY1sEBq%2frEUaP6w2N5bnBQsLWdo%3d&risl=&pid=ImgRaw&r=0",
    author: '哈哈哈',
    content: "哈哈哈哈哈哈哈哈哈",
    time: '11-30',
    area: '天堂',
    likeNum: 999999999,
    likeFlag: false
  })
  @State commentList: CommentItemModel[] = [
    new CommentItemModel({
      id: 1,
      avatar: 'https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63',
      author: '偏执狂-妄想家',
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: '11-30',
      area: '海南',
      likeNum: 34,
      likeFlag: false
    }),
    new CommentItemModel({
      id: 2,
      avatar: 'https://pic1.zhimg.com/v2-5a3f5190369ae59c12bee33abfe0c5cc_xl.jpg?source=32738c0c',
      author: 'William',
      content: '当年希腊可是把1：0发挥到极致了',
      time: '11-29',
      area: '北京',
      likeNum: 58,
      likeFlag: false
    }),
    new CommentItemModel({
      id: 3,
      avatar: 'https://picx.zhimg.com/v2-e6f4605c16e4378572a96dad7eaaf2b0_l.jpg?source=06d4cd63',
      author: 'Andy Garcia',
      content: '欧洲杯其实16队球队打正赛已经差不多，24队打正赛意味着正赛阶段在小组赛一样有弱队。',
      time: '11-28',
      area: '上海',
      likeNum: 10,
      likeFlag: false
    }),
    new CommentItemModel({
      id: 4,
      avatar: 'https://picx.zhimg.com/v2-53e7cf84228e26f419d924c2bf8d5d70_l.jpg?source=06d4cd63',
      author: '正宗好鱼头',
      content: '确实眼红啊，亚洲就没这种球队，让中国队刷',
      time: '11-27',
      area: '香港',
      likeNum: 139,
      likeFlag: false
    }),
    new CommentItemModel({
      id: 5,
      avatar: 'https://pic1.zhimg.com/v2-eeddfaae049df2a407ff37540894c8ce_l.jpg?source=06d4cd63',
      author: '柱子哥',
      content: '我是支持扩大的，亚洲杯欧洲杯扩到32队，世界杯扩到64队才是好的，世界上有超过200支队伍，欧洲区55支队伍，亚洲区47支队伍，即使如此也就六成出现率',
      time: '11-27',
      area: '旧金山',
      likeNum: 29,
      likeFlag: false
    }),
    new CommentItemModel({
      id: 6,
      avatar: 'https://picx.zhimg.com/v2-fab3da929232ae911e92bf8137d11f3a_l.jpg?source=06d4cd63',
      author: '飞轩逸',
      content: '禁止欧洲杯扩军之前，应该先禁止世界杯扩军，或者至少把亚洲名额一半给欧洲。',
      time: '11-26',
      area: '里约',
      likeNum: 100,
      likeFlag: false
    })
  ]
  @State countComment: number = this.commentList.length

  //在组件内部不需要function
  //todo 将方法放到组件中执行能生效嘛？
  changeLike(item: CommentItemModel) {
    // 需要拿到点击的数据 拿到数据更新数据即可
    // item.likeNum
    // item.likeFlag
    if (item.likeFlag) {
      // 点过赞
      item.likeNum--
    } else {
      // 没有点过赞
      item.likeNum++
    }
    item.likeFlag = !item.likeFlag // 取反
    // State的修饰符的更新机制
    // 只能监测到第一层
    const index = this.commentList.findIndex(obj => obj.id === item.id)
    //this.commentList[index] = item // 这么写为什么不行 // 引用类型 基础类型
    this.commentList[index] = new CommentItemModel(item)
  }

  build() {
    Column() {
      TitleComponent()
      CommentComponent({ commentData: this.commentData })
      Divider()
        .strokeWidth(10)
        .margin({
          top: 10,
          bottom: 15
        })
      Text("评论数 " + `${this.countComment}`)
        .width("100%")
        .padding({
          left: 15
        })
      Divider()
        .strokeWidth(2)
        .margin({
          top: 15,
          bottom: 15
        })
      List() {
        ForEach(this.commentList, (item: CommentItemModel) => {
          ListItem() {
            //changeLike有括号就是调用
            CommentComponent({
              commentData: item, likeUpdate: () => {
                this.changeLike(item)
              }
            })
          }
        })
      }
      .layoutWeight(1)

      Row() {
        TextInput({ placeholder: "请输入你的神评论~" })
          .layoutWeight(1)
        Button("发布")
      }
      .width("100%")
    }
    .height('100%')
    .width('100%')

  }
}