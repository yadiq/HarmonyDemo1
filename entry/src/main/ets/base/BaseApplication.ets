import { AbilityStage } from "@kit.AbilityKit";

//应用 Application 类
export default class MyApplication extends AbilityStage {
  onCreate(): void {
    console.log('==> MyApplication onCreate');
  }

  onForeground(): void {
    console.log('==> MyApplication onForeground');
  }

  onBackground(): void {
    console.log('==> MyApplication onBackground');
  }

  onDestroy(): void {
    console.log('==> MyApplication onDestroy');
  }
}