import { FileStrategy, Logger } from '@nzy/logger';

//文件目录
// let parentPath = getContext(this).getApplicationContext().filesDir

Logger.init({
  domain: 0xFF00, // domain
  isEnable: true, // 是否打印，默认是 true，是否打印，不影响写文件
  isShowFile: true, // 是否显示打印日志文件的位置 默认 true
  tag: 'MyTag', // 全局TAG 默认是 Logger
  jsonWrite: false, // 是否写入文件 默认是 true
  debugLevelWrite: true, // debug级别的是否写入文件 默认是 true
  // parentPath: parentPath // 写入文件的 parent 路径
},
  new FileStrategy(`${Date.now()}.txt`)// 要写入文件策略模式，自己也可以去实现
)

export default Logger

// 用法
// Logger.debug('hello world')
// Logger.info(new Person())
// Logger.warn(new Person())
// Logger.error('这是一个error')
// Logger.fatal('这是一个fatal')
// Logger.json(new Person())
// Logger.debug("你好\n我好")