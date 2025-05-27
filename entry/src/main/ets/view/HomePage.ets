import StyleConstants from '../common/constants/StyleConstants'
import CommonUtils from '../utils/CommonUtils'
import ItemData from '../ViewModel/ItemData'
import MainViewModel from '../ViewModel/MainViewModel'
import { JSON } from '@kit.ArkTS'

/**
 * 首页
 */
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

        //滑块视图. Column + Swiper + Image
        SwiperView()
        //网格。 Column + Grid + GridItem + Column
        CenterGridView()
        //列表。 Column + List + ListItem + Column
        ListImageView()
      }
      .width('100%')
      .backgroundColor($r('app.color.background'))
    }
    .scrollBar(BarState.Off) //滚动条显示状态。
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
 * 按钮网格
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
            GridItemView({ item: item })
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
 *
 */
@Preview
@Component
struct ListImageView {
  build() {
    Column() {
      Text('列表')
        .fontSize(16)
        .fontWeight(FontWeight.Medium)
        .alignSelf(ItemAlign.Start)
        .margin({
          top: 12,
          left: 12
        })
      List({ space: 12 }) { //主轴方向的间隔 默认0
        ForEach(MainViewModel.getListImageData(), (item: ItemData) => {
          ListItem() {
            ListItemView({ item: item })
          }
          .margin({ right: 6 })
          .borderRadius(12)
        }, (item: ItemData) => JSON.stringify(item.id))
      }
      .width('95%')
      .margin(12)
      .lanes(2) //布局列数或行数
    }
  }
}


//////////////////////自定义View///////////////////
/**
 * 网格item
 */
@Component
struct GridItemView {
  public item?: ItemData;

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
          .margin({ top: 4 })
      }
    }
    .onClick(() => {
      if (this.item?.clickPrompt) {
        CommonUtils.showToastContent(this.item?.clickPrompt)
      }
    })
  }
}

/**
 * 列表item
 */
@Component
struct ListItemView {
  public item?: ItemData
  private itemImage?: Resource
  private itemTitle?: Resource
  private itemOthers?: Resource

  aboutToAppear(): void {
    if (this.item !== undefined) {
      this.itemImage = this.item.img
      this.itemTitle = this.item.title
      this.itemOthers = this.item.others
    }
  }

  build() {
    Stack({ alignContent: Alignment.TopStart }) {
      if (this.itemImage) {
        Image(this.itemImage)
          .objectFit(ImageFit.Cover)//保持宽高比进行缩小或者放大，使得图片两边都大于或等于显示边界。
          .aspectRatio(1.32)//当前组件的宽高比
          .syncLoad(true)
      }
      Column() {
        Text(this.itemTitle)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .alignSelf(ItemAlign.Start)
        Text(this.itemOthers)
          .margin({ top: 4 })
          .fontSize(12)
          .fontColor(Color.Gray)
      }
      .margin({
        left: 8,
        top: 8
      })
    }
    .onClick(() => {
      if (this.item?.clickPrompt) {
        CommonUtils.showToastContent(this.item?.clickPrompt)
      }
    })
  }
}