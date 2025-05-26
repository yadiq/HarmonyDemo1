import StyleConstants from "../common/constants/StyleConstants"
import CommonUtils from "../utils/CommonUtils"
import ItemData from "../ViewModel/ItemData"
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
        //网格
        CenterGridView()

      }
      .width('100%')
      .height('100%')
      .backgroundColor($r('app.color.background'))
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

/**
 * 中间网格
 */
@Preview
@Component
struct CenterGridView {
  build() {
    Column() {
      Grid() {
        //基于数组类型数据来进行循环渲染。数据源，组件生成，键值生成
        ForEach(MainViewModel.getCenterGridData(), (item: ItemData) => {
          GridItem() {
            GridItemView({item: item})
          }
        }, (item: ItemData) => JSON.stringify(item))
      }
      .columnsTemplate(StyleConstants.GRID_COLUMNS) //设置行列数目 1fr 1fr 2fr
      .rowsTemplate(StyleConstants.GRID_ROWS)
      .columnsGap(8) //行列间距
      .rowsGap(12)
      .height('15.9%')
      .backgroundColor(Color.White)
      .borderRadius(24)
      .padding({
        top: 12,
        bottom: 12
      })
      .width('95%')
      .margin(12)
    }
  }
}

/**
 * 自定义网格Item
 */
@Component
struct GridItemView {

  private item? : ItemData;

  //自定义组件生命周期之一，在执行其build函数之前执行
  aboutToAppear(): void {

  }

  build() {
    Column() {
      if (this.item) {
        Image(this.item.img)
          .width(24)
          .height(24)
          .syncLoad(true)

        Text(this.item.title)
          .fontSize(12)
          .margin({top: 4})
      }
    }
    .onClick(() => {
      if (this.item?.clickPrompt) {
        CommonUtils.showToastContent(this.item?.clickPrompt)
      }
    })
  }
}
