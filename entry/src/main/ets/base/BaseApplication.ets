import { AbilityStage } from "@kit.AbilityKit";
import Log from '../utils/LogUtil';

//应用 Application 类 弃用
export default class BaseApplication extends AbilityStage {
  private TAG = "BaseApplication"

  onCreate(): void {
    Log.d(this.TAG, "onCreate")
  }

  onDestroy(): void {
    Log.d(this.TAG, "onDestroy")
  }
}