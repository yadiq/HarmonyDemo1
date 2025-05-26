
/**
 * 本地数据源
 */

import ItemData from "../../ViewModel/ItemData"

export const SWIPER_IMAGES: Array<Resource> = [
  $r('app.media.ic_first_card'),
  $r('app.media.ic_second_card'),
  $r('app.media.ic_third_card'),
  $r('app.media.ic_fourth_card'),
]

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