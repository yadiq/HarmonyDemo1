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
import CommonConstants from '../common/constants/CommonConstants';
import Logger from '../common/utils/Logger';

/**
 * Common operation tools.
 */
export class CommonUtils {

  /**
   * Router page
   *
   * @param {string} url page url
   */
  public routerPage(url: string): void {
    router.replaceUrl({
      url: url
    }).catch((error: Error) => {
      Logger.error(CommonConstants.TAG_COMMON_UTILS, 'replace url error ' + JSON.stringify(error));
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
}

export default new CommonUtils();