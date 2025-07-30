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

import { hilog } from '@kit.PerformanceAnalysisKit';

class LogUtil {
  private domain: number;

  constructor(domain: number) {
    this.domain = domain;
  }

  //打印日志
  //domain 日志对应的领域标识，范围是0x0~0xFFFF
  //tag 日志标识
  //format 格式字符串,标识{public}的内容明文输出
  //args 格式字符串对应的参数

  d(tag: string, format: string, ...args: string[]): void {
    hilog.debug(this.domain, tag, format, args);
  }

  i(tag: string, format: string, ...args: string[]): void {
    hilog.info(this.domain, tag, format, args);
  }

  w(tag: string, format: string, ...args: string[]): void {
    hilog.warn(this.domain, tag, format, args);
  }

  e(tag: string, format: string, ...args: string[]): void {
    hilog.error(this.domain, tag, format, args);
  }
}

export default new LogUtil(0x0000)