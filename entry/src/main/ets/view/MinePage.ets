import { AlertDialog } from '@kit.ArkUI';
import CommonUtil from '../utils/CommonUtil'
import RouterUtil from '../utils/RouterUtil';
import ItemData from '../ViewModel/ItemData'
import MainViewModel from '../ViewModel/MainViewModel'

/**
 * 我的页面
 */
@Preview
@Component
export default struct MinePage {
  //退出弹窗
  // logoutCustomDialogController: CustomDialogController | null = new CustomDialogController({
  //   builder: LogoutCustomDialog(),
  //   alignment: DialogAlignment.Center,
  //   offset: { dx: 0, dy: -25 }
  // });
  logoutDialog: CustomDialogController =  new CustomDialogController({
    builder: AlertDialog({
      primaryTitle: '提示',
      content: '确认要退出当前账号？',
      primaryButton: {
        value: '取消',
        action: () => {
        },
      },
      secondaryButton: {
        value: '确认',
        role: ButtonRole.ERROR,
        action: () => {
          RouterUtil.clear()
          RouterUtil.push('pages/LoginPage')
        }
      },
    }),
  })

  build() {
    Column() {
      Text('我的')
        .fontSize(24)
        .fontWeight(FontWeight.Medium)
        .margin({
          top: 12
        })
        .alignSelf(ItemAlign.Start)
      //标题
      MineTitleView()
      //功能列表
      MineListView()
      Blank()
      Button('退出登录')
        .width('90%')
        .height(40)
        .margin({ bottom: 24 })
        .fontColor(Color.Red)
        .fontSize(16)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#E5E8EA')
        .onClick(() => {
          this.logoutDialog.open();
        })
    }
    .width('100%')
    .height('100%')
    .padding({
      left: 12,
      right: 12
    })
    .backgroundColor($r('app.color.background'))
  }
}

@Preview
@Component
struct MineTitleView {
  build() {
    Row() {
      Image($r('app.media.ic_account'))
        .width(48)
        .height(48)

      Column() {
        Text('李先生')
          .fontSize(20)
        Text('2000000@shenhua.cc')
          .fontSize(12)
          .margin({ left: 4 })
      }
      .margin({ left: 4 })
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .height('96')
    .margin({
      top: 35,
      bottom: 12
    })
    .alignItems(VerticalAlign.Center)
    .backgroundColor(Color.White)
    .padding({ left: 24 })
    .borderRadius(24)
  }
}

@Preview
@Component
struct MineListView {
  build() {
    List() {
      ForEach(MainViewModel.getMineListData(), (item: ItemData) => {
        ListItem() {
          ListItemView({ item: item })
        }
        .height(48)
      }, (item: Resource) => JSON.stringify(item))
    }
    .width('100%')
    .padding({
      top: 4,
      bottom: 4
    })
    .backgroundColor(Color.White)
    .borderRadius(24)
    .divider({
      strokeWidth: 0.25,
      color: '#33000000',
      startMargin: 46,
      endMargin: 12
    })
  }
}

@Component
struct ListItemView {
  public item?: ItemData;

  build() {
    Row() {
      Row() {
        if (this.item?.img) {
          Image(this.item?.img)
            .width(22)
            .height(22)
        }
        Text(this.item?.title)
          .fontSize(16)
          .margin({ left: 5 })
      }

      if (this.item?.others === undefined) {
        Image($r('app.media.ic_right_grey'))
          .width(12)
          .height(24)
      } else {
        Toggle({ type: ToggleType.Switch, isOn: false })
          .onChange((isChange: boolean) => {
            let change = isChange ? '推送已打开' : '推送已关闭'
            CommonUtil.toast(change)
          })
      }
    }
    .width('100%')
    .padding({
      left: 12,
      right: 12
    })
    .justifyContent(FlexAlign.SpaceBetween)
    .onClick(() => {
      if (this.item?.clickPrompt) {
        CommonUtil.toast(this.item?.clickPrompt)
      }
    })
  }
}