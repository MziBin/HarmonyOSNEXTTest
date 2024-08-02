import { HMComponent } from './Component/HMComponent'

@Entry
@Component
struct HeimaBliBliPage {
  @State
  dataList: DataList[] = [new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "黑马程序员匠心之作|C++教程从0到1入门编程,学习编程不再难", "黑马程序员", "3.1万", "174万")
  ,new DataList("https://i1.hdslb.com/bfs/archive/b1a018567ac680559b0fdb54ff8767f42bf0fba4.png@468w_292h_1c.webp", "黑马程序员匠心之作|C++教程从0到1入门编程,学习编程不再难", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "黑马程序员匠心之作|C++教程从0到1入门编程,学习编程不再难", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "黑马程序员匠心之作|C++教程从0到1入门编程,学习编程不再难", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i1.hdslb.com/bfs/archive/b1a018567ac680559b0fdb54ff8767f42bf0fba4.png@468w_292h_1c.webp", "黑马程序员匠心之作|C++教程从0到1入门编程,学习编程不再难", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "黑马程序员匠心之作|C++教程从0到1入门编程,学习编程不再难", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "黑马程序员匠心之作|C++教程从0到1入门编程,学习编程不再难", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i1.hdslb.com/bfs/archive/b1a018567ac680559b0fdb54ff8767f42bf0fba4.png@468w_292h_1c.webp", "2024黑马程序员", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "2024黑马程序员", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "2024黑马程序员", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i1.hdslb.com/bfs/archive/b1a018567ac680559b0fdb54ff8767f42bf0fba4.png@468w_292h_1c.webp", "2024黑马程序员", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "2024黑马程序员", "黑马程序员", "3.1万", "174万"),
    new DataList("https://i0.hdslb.com/bfs/archive/e324834c33ca9e9ce64bab15e743c16a19765435.jpg@468w_292h_1c.webp", "2024黑马程序员", "黑马程序员", "3.1万", "174万")
  ]

  build() {
    List({space: 20}) {
      ForEach(this.dataList,(item: DataList)=>{
        ListItem() {
          HMComponent({item})
        }
      })
    }
    .padding(10)
  }
}

export class DataList {
  image: string = ""
  title: string = ""
  up: string = ""
  play: string = ""
  comment: string = ""

  constructor(image: string, title: string, up: string, play: string, comment: string) {
    this.image = image
    this.title = title
    this.up = up
    this.play = play
    this.comment = comment
  }
}
