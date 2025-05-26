
/**
 * 首页
 */
@Preview
@Component
export default struct HomePage {
  build() {
    Scroll() {
      Column() {
        // 标题
        Text('首页')
          .fontWeight(FontWeight.Medium)
          .fontSize(24)
          .margin({
            left: 12,
            top: 12
          })
          .alignSelf(ItemAlign.Start)

        // 图片滑动
        SwiperView()

      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Pink)
    }
    .scrollBar(BarState.Off)//滚动条显示状态。
  }
}

/**
 * 图片滑动
 */
@Preview
@Component
struct SwiperView {
  build() {
    Column() {
      Swiper() {
        Image($r('app.media.ic_home_normal'))
          .borderRadius(16)
          .syncLoad(true)
      }
      .displayCount(3)
      .autoPlay(true)
      .width('95%')
      .itemSpace(0)
      .margin(12)
    }
  }
}