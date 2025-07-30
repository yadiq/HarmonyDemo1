import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { window } from '@kit.ArkUI';
import Logger from '../common/utils/Logger';

//主 UIAbility 类
//UIAbility组件，提供展示UI的能力，主要用于和用户交互
export default class EntryAbility extends UIAbility {

  private TAG = "EntryAbility"

  //创建 Ability 时调用。初始化资源
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    Logger.info(this.TAG, 'Ability onCreate');

    // this.context.getApplicationContext().setColorMode(ConfigurationConstant.ColorMode.COLOR_MODE_NOT_SET);
    //存储键值对
    // GlobalContext.getInstance().setObject('abilityWant', want);
    // GlobalContext.getInstance().setObject('launchParam', launchParam);
    //读取设备类型，非平板时设置为竖屏
    // if (deviceInfo.deviceType !== CommonConstants.TABLET_DEVICE_TYPE) {
    //   // 获取最上层的窗口
    //   window.getLastWindow(this.context, (err, data) => {
    //     if (err.code) {
    //       Logger.error('Failed to obtain the top window. Cause: ' + JSON.stringify(err));
    //       return;
    //     }
    //     let orientation = window.Orientation.PORTRAIT;
    //     data.setPreferredOrientation(orientation, (err) => {
    //       if (err.code) {
    //         Logger.error('Failed to set window orientation. Cause: ' + JSON.stringify(err));
    //         return;
    //       }
    //       Logger.info('Succeeded in setting window orientation.');
    //     });
    //   });
    // }
  }

  //创建 UI 页面时调用。设置 UI 页面
  onWindowStageCreate(windowStage: window.WindowStage): void {
    Logger.info(this.TAG, 'Ability onWindowStageCreate');
    windowStage.loadContent('pages/LoginPage', (err, data) => {
      if (err.code) {
        Logger.error(this.TAG, 'Load the content to failed ' + JSON.stringify(err));
        return;
      }
      Logger.info(this.TAG, 'Load the content to succeeded ' + JSON.stringify(data));
    });
  }

  //UI 页面销毁时调用。释放 UI 资源
  onWindowStageDestroy(): void {
    Logger.info(this.TAG, 'Ability onWindowStageDestroy');
  }

  //应用从后台进入前台。恢复状态或资源
  onForeground(): void {
    // Ability has brought to foreground
    Logger.info(this.TAG, 'Ability onForeground');
  }

  //应用进入后台。暂停任务、释放资源
  onBackground(): void {
    // Ability has back to background
    Logger.info(this.TAG, 'Ability onBackground');
  }

  //Ability 被销毁时。最后清理工作
  onDestroy(): void {
    Logger.info(this.TAG, 'Ability onDestroy');
  }







}