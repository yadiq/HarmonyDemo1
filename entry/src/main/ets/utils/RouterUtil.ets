import { router } from '@kit.ArkUI';
import LogUtil from './LogUtil';

type Arg = string | number | boolean;

//路由工具类
class RouterUtil {
  private TAG = "RouterUtil"

  /**
   * 页面跳转
   * @param url
   * @param params
   */
  push(url: string, params?: Record<string, Arg>): Promise<void> {
    return router.pushUrl({
      url, params
    }).catch((error: Error) => {
      LogUtil.e(this.TAG, 'push error %s', JSON.stringify(error));
    });
  }

  /**
   * 页面返回
   */
  back() {
    router.back()
    // try {
    //   router.back()
    // } catch (err) {
    //   let code = (err as BusinessError).code
    //   let message = (err as BusinessError).message
    //   LogUtil.e(this.TAG, `Failed to return to the first page. Code is ${code}, message is ${message}`)
    // }
  }

  /**
   * 替换页面
   * @param url
   * @param params
   */
  replace(url: string, params?: Record<string, Arg>): Promise<void> {
    return router.replaceUrl({
      url, params
    }).catch((error: Error) => {
      LogUtil.e(this.TAG, 'replace error %s', JSON.stringify(error));
    });
  }

  /**
   * 清空页面栈
   */
  clear() {
    router.clear()
  }

  //获取参数	router.getParams()
}

export default new RouterUtil()