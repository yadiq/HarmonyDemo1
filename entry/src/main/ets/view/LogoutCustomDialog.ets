import CommonConstants from '../common/constants/CommonConstants'
import CommonUtil from '../utils/CommonUtil'

/**
 * 退出登录弹窗
 */
@Preview
@CustomDialog
@Component
export struct LogoutCustomDialog {
  // cancel?: () => void
  // confirm?: () => void
  controller: CustomDialogController

  build() {
    Column() {
      Text('提示')
        .fontSize(20)
        .margin({
          top: 20,
        })
      Text('是否退出登录？')
        .fontSize(14)
        .margin({
          top: 10,
          bottom: 10
        })
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('取消')
          .onClick(() => {
            this.controller.close()
          })
        Button('确定')
          .onClick(() => {
            this.controller.close()
            CommonUtil.toast(CommonConstants.LOGIN_PAGE_URL)
          })
      }
      .margin({
        bottom: 20
      })
    }
    .alignItems(HorizontalAlign.Center)
    .padding({
      left: 24,
      right: 24
    })
  }
}