import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
import LogUtil from '../utils/LogUtil';
import RouterUtil from '../utils/RouterUtil';

@Entry
@Component
struct Second {
  private TAG = "Second"

  @State message: string = 'Hi there';

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
   * 在组件即将从界面移除时触发。用于清理资源，如取消订阅事件、释放内存
   */
  aboutToDisappear() {
    LogUtil.d(this.TAG, 'aboutToDisappear');
    // 清理资源
    //this.cleanup();
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text('Back')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Blue)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          RouterUtil.back()
        })
      }
      .width('100%')
    }
    .height('100%')

  }
}