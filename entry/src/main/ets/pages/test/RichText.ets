@Entry
@Component
struct RichTextTest {
  build() {
    Column() {
      Text() {
        Span("黑马")
          .fontColor(Color.Red)
        Span("瀚宇")
      }

      Text("你好")
    }
  }
}