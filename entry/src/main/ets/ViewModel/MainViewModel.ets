import { CENTER_GRID_DATA, LIST_IMAGE_DATA, SWIPER_IMAGES } from '../common/data/SourceData';
import ItemData from './ItemData';

/**
 * 数据绑定到组件
 */
export class MainViewModel {
  /**
   * 主界面顶部滑动，图片列表
   * @returns
   */
  public getSwiperImages(): Array<Resource> {
    let swiperImages: Array<Resource> = []
    SWIPER_IMAGES.forEach((swiperImage: Resource) => {
      swiperImages.push(swiperImage)
    })
    return swiperImages;
  }

  /**
   * 主界面中间九宫格，图文列表
   * @returns
   */
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

  /**
   * 主界面底部列表，图文列表
   * @returns
   */
  public getListImageData(): Array<ItemData> {
    let centerGridData: Array<ItemData> = [];
    LIST_IMAGE_DATA.forEach((itemData: ItemData, index: number) => {
      let data: ItemData = {
        id: index,
        title: itemData.title,
        img: itemData.img,
        others: itemData.others,
        clickPrompt: itemData.clickPrompt
      }
      centerGridData.push(data)
    })
    return centerGridData;
  }
}


export default new MainViewModel()