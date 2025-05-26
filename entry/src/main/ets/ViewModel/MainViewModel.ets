import { CENTER_GRID_DATA, SWIPER_IMAGES } from '../common/data/SourceData';
import ItemData from './ItemData';

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

  //获取中间九宫格
  public getCenterGridData(): Array<ItemData> {
    let centerGridData: Array<ItemData> = [];
    CENTER_GRID_DATA.forEach((itemData: ItemData) => {
        let data: ItemData = {
          title: itemData.title,
          img: itemData.img,
          clickPrompt: itemData.clickPrompt
        }
        centerGridData.push(data)
    })
    return centerGridData;
  }

}


export default new MainViewModel()