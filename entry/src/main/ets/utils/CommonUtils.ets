/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { router } from '@kit.ArkUI';
import { promptAction } from '@kit.ArkUI';
import display from '@ohos.display'

import CommonConstants from '../common/constants/CommonConstants';
import LogUtil from '../common/utils/LogUtil';

/**
 * Common operation tools.
 */
export class CommonUtils {

  private TAG = "CommonUtils"
  /**
   * Router page
   *
   * @param {string} url page url
   */
  public routerPage(url: string): void {
    router.replaceUrl({
      url: url
    }).catch((error: Error) => {
      LogUtil.e(this.TAG, 'replace url error ' + JSON.stringify(error));
    });
  }

  /**
   * Show toast content.
   *
   * @param {Resource | string} content content to show
   */
  public showToastContent(content: Resource | string): void {
    promptAction.showToast({
      message: content,
      duration: CommonConstants.TOAST_DURATION
    });
  }

  /**
   * 登录
   * @param account
   * @param password
   */
  public login(account: string, password: string): void {
    //check
    if (account === '') {
      this.showToastContent('请输入账号')
      return
    }
    if (password === '') {
      this.showToastContent('请输入密码')
      return
    }
    this.routerPage('pages/MainPage')
  }

  public getDefaultDisplay() {
    display.getDefaultDisplay().then(info => {
      LogUtil.d(this.TAG, '设备屏幕宽度 px: %{public}d', info.width)
    })
  }
}

export default new CommonUtils();