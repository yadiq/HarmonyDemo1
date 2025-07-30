
@Preview
@Component
export default struct PageBase {
  @State title: string = '默认标题';

  build() {
    Column() {
      Text(this.title)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .padding(12)
        .backgroundColor('#eeeeee')

      // 插槽：子页面填充区域
      // this.renderContent()
    }
    .height('100%')
    .width('100%')
  }

  // 子页面重写此方法
  renderContent(): void {}
}
