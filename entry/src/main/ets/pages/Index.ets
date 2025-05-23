// 导入页面路由模块
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

//入口
@Entry
  //自定义组件
@Component
struct Index {
  @State message: string = 'Hello World'; //状态变量

  //页面显示
  onPageShow() {
    console.info('onPageShow');
  }

  //页面隐藏
  onPageHide() {
    console.info('onPageHide');
  }

  //点击返回按钮
  onBackPress() {
    console.info('onBackPress');
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
        console.info(`Succeeded in clicking the 'Next' button.`)
        // 跳转到第二页
        router
          .pushUrl({ url: 'pages/Second' })
          .then(() => {
            console.info('Succeeded in jumping to the second page.')
          })
          .catch((err: BusinessError) => {
            console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
          })
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