@Entry
@Component
struct StatePage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text(this.message)
      //这里不加双$$，为什么值改变了，页面不会刷新
      //相当于页面的值传第不了给数据，$$就是就是表示页面的值能改变数据，数据改变，@state带动页面刷新
      TextInput({ text: $$this.message })
    }
    .height('100%')
    .width('100%')
  }
}