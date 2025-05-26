import MainViewModel from "../ViewModel/MainViewModel"

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
      // .backgroundColor(Color.Pink)
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
      //滑块视图
      Swiper() {
        //基于数组类型数据来进行循环渲染。数据源，组件生成，键值生成
        ForEach(MainViewModel.getSwiperImages(), (item: Resource) => {
          Image(item)
            .borderRadius(16)
            .syncLoad(true)
        }, (item: Resource) => JSON.stringify(item))
      }
      .displayCount(1)
      .autoPlay(true)
      .width('95%')
      .itemSpace(12)
      .margin(12)
    }
  }
}