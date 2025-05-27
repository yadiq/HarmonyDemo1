
/**
 * 本地数据源
 */

import ItemData from "../../ViewModel/ItemData"

//主界面顶部滑动，图片列表
export const SWIPER_IMAGES: Array<Resource> = [
  $r('app.media.ic_first_card'),
  $r('app.media.ic_second_card'),
  $r('app.media.ic_third_card'),
  $r('app.media.ic_fourth_card'),
]

//主界面中间九宫格，图文列表
export const CENTER_GRID_DATA: Array<ItemData> = [
  {
    title: $r('app.string.my_love'),
    img: $r('app.media.ic_love'),
    clickPrompt: $r('app.string.open_my_love')
  },
  {
    title: $r('app.string.history_record'),
    img: $r('app.media.ic_record'),
    clickPrompt: $r('app.string.open_history_record')
  },
  {
    title: $r('app.string.message'),
    img: $r('app.media.ic_message'),
    clickPrompt: $r('app.string.open_message')
  },
  {
    title: $r('app.string.shopping_cart'),
    img: $r('app.media.ic_shopping'),
    clickPrompt: $r('app.string.open_shopping_cart')
  },
  {
    title: $r('app.string.my_goal'),
    img: $r('app.media.ic_target'),
    clickPrompt: $r('app.string.open_my_goal')
  },
  {
    title: $r('app.string.group'),
    img: $r('app.media.ic_circle'),
    clickPrompt: $r('app.string.open_group')
  },
  {
    title: $r('app.string.favorites'),
    img: $r('app.media.ic_favorite'),
    clickPrompt: $r('app.string.open_favorites')
  },
  {
    title: $r('app.string.recycle_bin'),
    img: $r('app.media.ic_recycle'),
    clickPrompt: $r('app.string.open_recycle_bin')
  }
]

//主界面底部列表，图文列表
export const LIST_IMAGE_DATA: Array<ItemData> = [
  {
    title: $r('app.string.main_page_rankings'),
    img: $r('app.media.ic_top'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_rankings')
  },
  {
    title: $r('app.string.main_page_new'),
    img: $r('app.media.ic_new'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_new')
  },
  {
    title: $r('app.string.main_Page_brand'),
    img: $r('app.media.ic_brand'),
    others: $r('app.string.main_page_more'),
    clickPrompt: $r('app.string.open_brand')
  },
  {
    title: $r('app.string.main_page_found'),
    img: $r('app.media.ic_found'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_found')
  },
  {
    title: $r('app.string.main_page_rankings'),
    img: $r('app.media.ic_top'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_rankings')
  },
  {
    title: $r('app.string.main_page_new'),
    img: $r('app.media.ic_new'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_new')
  },
  {
    title: $r('app.string.main_Page_brand'),
    img: $r('app.media.ic_brand'),
    others: $r('app.string.main_page_more'),
    clickPrompt: $r('app.string.open_brand')
  },
  {
    title: $r('app.string.main_page_found'),
    img: $r('app.media.ic_found'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_found')
  },
  {
    title: $r('app.string.main_page_rankings'),
    img: $r('app.media.ic_top'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_rankings')
  },
  {
    title: $r('app.string.main_page_new'),
    img: $r('app.media.ic_new'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_new')
  },
  {
    title: $r('app.string.main_Page_brand'),
    img: $r('app.media.ic_brand'),
    others: $r('app.string.main_page_more'),
    clickPrompt: $r('app.string.open_brand')
  },
  {
    title: $r('app.string.main_page_found'),
    img: $r('app.media.ic_found'),
    others: $r('app.string.main_page_others'),
    clickPrompt: $r('app.string.open_found')
  }
];