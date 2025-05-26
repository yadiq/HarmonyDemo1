import CommonConstants from '../common/constants/CommonConstants'
import HomePage from '../view/HomePage'

/**
 * 主界面
 */
@Entry
@Component
struct MainPage {
  @State currentIndex: number = CommonConstants.HOME_TAB_INDEX

  build() {
    //导航栏+内容切换
    Tabs({
      barPosition: BarPosition.End, //Tabs的页签位置，默认Start
      index: this.currentIndex//当前索引，默认0
    }) {
      TabContent() {
        HomePage()
      }
      .tabBar(this.TabBuilder('Home', CommonConstants.HOME_TAB_INDEX,
        $r('app.media.ic_home_selected'), $r('app.media.ic_home_normal')))

      TabContent() {
        HomePage()
      }
      .tabBar(this.TabBuilder('Mine', CommonConstants.MINE_TAB_INDEX,
        $r('app.media.ic_mine_selected'), $r('app.media.ic_mine_normal')))

    }
    .barWidth('100%')
    .barHeight('7.2%')
    .vertical(false)
    .backgroundColor($r('app.media.background'))
    .barMode(BarMode.Fixed)
    .scrollable(false)
    .onChange((index: number) => {
      this.currentIndex = index
    })
  }

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImg : normalImg)
        .width(25)
        .height(25)
      Text(title)
        .margin({ top: 4 })
        .fontSize(10)
        .fontColor(this.currentIndex === index ? Color.Black : Color.Gray)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}