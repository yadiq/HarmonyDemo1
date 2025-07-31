// 导入页面路由模块
import { BusinessError } from '@kit.BasicServicesKit';
import LogUtil from '../utils/LogUtil';
import RouterUtil from '../utils/RouterUtil';

//入口
@Entry
  //自定义组件
@Component
struct Index {
  private TAG = "Index"

  @State message: string = 'Hello World'; //状态变量

  /**
   * 在组件即将出现时触发。用于初始化数据或执行一些准备工作
   */
  aboutToAppear() {
    LogUtil.d(this.TAG, 'aboutToAppear');
    // 初始化数据
    //this.loadData();
  }

  /**
   * 当页面显示时触发。用于页面级别的显示逻辑，如重新加载数据
   */
  onPageShow() {
    LogUtil.d(this.TAG, 'onPageShow');
    // 重新加载数据
    //this.refreshData();
  }

  /**
   * 当页面隐藏时触发。用于页面级别的隐藏逻辑，如暂停动画或视频播放
   */
  onPageHide() {
    LogUtil.d(this.TAG, 'onPageHide');
    // 暂停视频播放
    //this.pauseVideo();
  }

  /**
   * 在组件即将从界面移除时触发，在自定义组件析构销毁时执行
   * 用于清理资源，如取消订阅事件、释放内存
   */
  aboutToDisappear() {
    LogUtil.d(this.TAG, 'aboutToDisappear');
    // 清理资源
    //this.cleanup();
  }

  /**
   * 当用户点击返回按钮时触发。用于拦截返回操作，比如提示用户是否确认退出。
   * @returns true 表示拦截返回操作; false 表示继续默认行为。
   */
  onBackPress() {
    LogUtil.d(this.TAG, 'onBackPress');
    // 拦截返回操作
    //this.showExitDialog();
    //return true; // 拦截返回
  }

  build() { //ui描述
    Column() { //根布局
      //Text($r('app.string.app_name'))//使用系统资源
      Text(this.message)
        .id('HelloWorld')//组件标识id
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })

      Button() {
        Text('Next')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .type(ButtonType.Capsule)
      .margin({
        top: 20 //单位vp 屏幕密度相关像素
      })
      .backgroundColor('#ff00ff')
      .width('50%')
      .height('5%')
      .onClick(() => {
        LogUtil.d(this.TAG, `Click the 'Next' button.`)
        // 跳转到第二页
        RouterUtil.push('pages/Second')
      })

      //自定义组件
      HelloComponent1({
        message: '自定义组件 构造'
      }).margin({
        top: 20
      })
    }
    .height('100%')
    .width('720lpx') //设计基准宽度720lpx
    .justifyContent(FlexAlign.Center) //对齐
    .backgroundColor(Color.Green)
  }
}

//自定义组件
@Preview({
  title: 'ContentTable'
})
@Component
struct HelloComponent1 {
  @State message: string = '自定义组件'

  build() {
    Row() {
      Text(this.message)
        .onClick(() => {
          this.message = "自定义组件 Click"
        })
    }
  }
}