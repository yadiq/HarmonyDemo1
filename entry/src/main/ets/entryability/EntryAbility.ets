import { AbilityConstant, ConfigurationConstant, UIAbility, Want } from '@kit.AbilityKit';
import { window } from '@kit.ArkUI';
import Logger from '../common/utils/Logger';
import { deviceInfo } from '@kit.BasicServicesKit';
import CommonConstants from '../common/constants/CommonConstants';
import { GlobalContext } from '../common/utils/GlobalContext';

const DOMAIN = 0x0000;

//UIAbility组件，提供展示UI的能力，主要用于和用户交互
export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    Logger.info(CommonConstants.TAG_ABILITY, 'Ability onCreate');

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

  onDestroy(): void {
    Logger.info(CommonConstants.TAG_ABILITY, 'Ability onDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    Logger.info(CommonConstants.TAG_ABILITY, 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    Logger.info(CommonConstants.TAG_ABILITY, 'Ability onBackground');
  }


  /**
   * 主窗口创建，设置主页
   */
  onWindowStageCreate(windowStage: window.WindowStage): void {
    Logger.info(CommonConstants.TAG_ABILITY, 'Ability onWindowStageCreate');
    windowStage.loadContent('pages/LoginPage', (err, data) => {
      if (err.code) {
        Logger.error(CommonConstants.TAG_ABILITY, 'Load the content to failed ' + JSON.stringify(err));
        return;
      }
      Logger.info(CommonConstants.TAG_ABILITY, 'Loading the content to succeeded ' + JSON.stringify(data));
    });
  }


  /**
   * 主窗口销毁，释放UI相关资源
   */
  onWindowStageDestroy(): void {
    Logger.info(CommonConstants.TAG_ABILITY, 'Ability onWindowStageDestroy');
  }


}