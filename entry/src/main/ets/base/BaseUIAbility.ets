import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { window } from '@kit.ArkUI';


export default class BaseUIAbility extends UIAbility {

  //创建 Ability 时调用。初始化资源
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    super.onCreate(want, launchParam);
  }

  //创建 UI 页面时调用。设置 UI 页面
  onWindowStageCreate(windowStage: window.WindowStage): void {
    super.onWindowStageCreate(windowStage)
  }

  //应用从后台进入前台。恢复状态或资源
  onForeground(): void {
    super.onForeground();
  }

  //应用从前台进入后台。暂停任务、释放资源
  onBackground(): void {
    super.onBackground();
  }

  //UI 页面销毁时调用。释放 UI 资源
  onWindowStageDestroy(): void {
    super.onWindowStageDestroy()
  }

  //Ability 被销毁时。最后清理工作
  onDestroy(): void {
    super.onDestroy();
  }
}
