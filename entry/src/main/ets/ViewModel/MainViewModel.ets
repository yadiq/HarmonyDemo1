import { SWIPER_IMAGES } from '../common/data/SourceData';

/**
 * 数据绑定到组件
 */
export class MainViewModel {
  //滑动图片列表
  public getSwiperImages(): Array<Resource> {
    let swiperImages: Array<Resource> = []
    SWIPER_IMAGES.forEach((swiperImage: Resource) => {
      swiperImages.push(swiperImage)
    })
    return swiperImages;
  }
}

export default new MainViewModel()