import { AbilityConstant, Want } from '@kit.AbilityKit';
import { window } from '@kit.ArkUI';
import BaseUIAbility from '../base/BaseUIAbility';
import LogUtil from '../utils/LogUtil';

//主 UIAbility 类
//UIAbility组件，提供展示UI的能力，主要用于和用户交互
export default class EntryAbility extends BaseUIAbility {

  private TAG = "EntryAbility"

  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    super.onCreate(want, launchParam)
    LogUtil.d(this.TAG, "onCreate")
    // this.context.getApplicationContext().setColorMode(ConfigurationConstant.ColorMode.COLOR_MODE_NOT_SET);
    //存储键值对
    // GlobalContext.getInstance().setObject('abilityWant', want);
    // GlobalContext.getInstance().setObject('launchParam', launchParam);
    //读取设备类型，非平板时设置为竖屏
    // if (deviceInfo.deviceType !== CommonConstants.TABLET_DEVICE_TYPE) {
    //   // 获取最上层的窗口
    //   window.getLastWindow(this.context, (err, data) => {
    //     if (err.code) {
    //       Log.error('Failed to obtain the top window. Cause: ' + JSON.stringify(err));
    //       return;
    //     }
    //     let orientation = window.Orientation.PORTRAIT;
    //     data.setPreferredOrientation(orientation, (err) => {
    //       if (err.code) {
    //         Log.error('Failed to set window orientation. Cause: ' + JSON.stringify(err));
    //         return;
    //       }
    //       Log.d('Succeeded in setting window orientation.');
    //     });
    //   });
    // }
  }

  //创建 UI 页面时调用。设置 UI 页面
  onWindowStageCreate(windowStage: window.WindowStage): void {
    super.onWindowStageCreate(windowStage)
    windowStage.loadContent('pages/Index')
    // windowStage.loadContent('pages/LoginPage', (err, data) => {
    //   if (err.code) {
    //     Log.e(this.TAG, 'Load the content to failed ' + JSON.stringify(err));
    //     return;
    //   }
    //   Log.d(this.TAG, 'Load the content to succeeded ' + JSON.stringify(data));
    // });
  }
}