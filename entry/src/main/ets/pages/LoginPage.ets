import StyleConstants from '../common/constants/StyleConstants'
import CommonUtils from '../utils/CommonUtils'

/**
 * 登录页
 */
@Entry
@Component
struct LoginPage {
  build() {
    GridRow({
      //网格布局
      columns: 1, //布局列数,默认值：12
      gutter: {
        //布局间距
        x: StyleConstants.GRID_GUTTER //水平方向间距
      }
    }) {
      GridCol({
        //网格组件
        span: 1, //占用的列数，默认1
        offset: 0, //相对于原本位置偏移的列数，默认0
      }) {
        Column() { //沿垂直方向布局的容器
          LoginTop()
          LoginBottom()
        }
        .backgroundColor($r('app.color.background'))
      }
    }
  }
}

/**
 * 登录页顶部
 */
@Preview
@Component
struct LoginTop {
  build() {
    Column() {
      Image($r('app.media.startIcon'))
        .width('78')
        .height('78')
        .margin({ bottom: 8 })
      Text('登录界面')
        .fontSize(24)
        .fontWeight(FontWeight.Medium)
        .fontColor('#182431')
      Text('登录账号以使用更多服务')
        .fontSize(16)
        .fontColor('#99182431')
        .margin({
          top: 8,
          bottom: 12
        })
    }
    .justifyContent(FlexAlign.Center) //对齐
    .width('100%')
    .height('40%')
  }
}

/**
 * 登录页底部
 */
@Preview
@Component
struct LoginBottom {
  @State account: string = ''
  @State password: string = ''

  build() {
    Column() {
      // 两个输入框
      Column() {
        // 账号
        TextInput({placeholder: '账号'})
          .maxLength(11)
          .type(InputType.Number)
          .inputStyle()
          .onChange((value: string) => {
            this.account = value
          })
        Line()
          .width('100%')
          .height('0.5')
          .backgroundColor(Color.Black)
        // 密码
        TextInput({placeholder: '密码'})
          .maxLength(8)
          .type(InputType.Password)
          .inputStyle()
          .onChange((value: string) => {
            this.password = value
          })
      }
      .backgroundColor(Color.White)
      .borderRadius(24)

      //短信验证码
      Row() {
        Text('短信验证码登录')
          .blueTextStyle()
          .onClick(() => {
            CommonUtils.showToastContent('此功能未完善，敬请期待')
          })
        Text('忘记密码')
          .blueTextStyle()
          .onClick(() => {
            CommonUtils.showToastContent('此功能未完善，敬请期待')
          })
      }
      .width('100%')
      .margin({top: 12})
      .padding({
        left: 12,
        right: 12
      })
      .justifyContent(FlexAlign.SpaceBetween)

      //登录
      Button('登录')
        .id('btnLogin')
        .width('100%')
        .height(40)
        .margin({
          top: 68,
          bottom: 12
        })
        .fontSize(16)
        .fontWeight(FontWeight.Medium)
        .onClick(() => {
          //TODO 登录
        })

      //注册
      Text('注册账号')
        .fontSize(16)
        .fontColor('#007DFF')
        .fontWeight(FontWeight.Medium)
        .onClick(() => {
          CommonUtils.showToastContent('此功能未完善，敬请期待')
        })
    }
    .padding({
      left: 12,
      right: 12
    })
    .justifyContent(FlexAlign.Start)
    .width('100%')
    .height('60%')
  }
}

/**
 * 定义扩展组件样式
 */
@Extend(TextInput) function inputStyle() {
  .placeholderColor('#99182431')
  .height(48)
  .fontSize(16)
  .backgroundColor(Color.White)
  .margin({top: 4})
  .padding({left: 12})
}

@Extend(Text) function blueTextStyle() {
  .fontColor('#007DFF')
  .fontSize(14)
  .fontWeight(FontWeight.Medium)
}