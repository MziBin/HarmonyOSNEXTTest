import { it } from '@ohos/hypium'
import { ContactsComponent } from './Components'
import { IContacts, IContactsModel, TabItem, TabItemModel } from './Model'

@Entry
@Component
struct WeiXinPage {
  @State
  tabItemData: TabItemModel = new TabItemModel({
    icon: $r('app.media.ic_public_contacts_group'),
    name: 'connect',
    title: '联系人',
    selectIcon: $r('app.media.ic_public_contacts_group_filled')
  })
  @State
  tabList: TabItem[] = [
    {
      icon: $r('app.media.ic_public_message'),
      name: 'wechat',
      title: '微信',
      selectIcon: $r('app.media.ic_public_message_filled')
    }, {
    icon: $r('app.media.ic_public_contacts_group'),
    name: 'connect',
    title: '联系人',
    selectIcon: $r('app.media.ic_public_contacts_group_filled')
  }, {
    icon: $r('app.media.ic_gallery_discover'),
    name: 'discover',
    title: '发现',
    selectIcon: $r('app.media.ic_gallery_discover_filled')
  }, {
    icon: $r('app.media.ic_public_contacts'),
    name: 'my',
    title: '我的',
    selectIcon: $r('app.media.ic_public_contacts_filled')
  }
  ]
  ContactsList: IContactsModel[] = [new IContactsModel({
    username: '小趴菜',
    avatar: 'https://img2.baidu.com/it/u=2778471297,524433918&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
    user_id: '1'
  } as IContacts),
    new IContactsModel({
      username: '老板',
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F9853de1a-3985-42e6-be59-849853318793%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1708069489&t=f960a72e50a399ddec92b18b3c7fc2d9',
      user_id: '2'
    } as IContacts),
    new IContactsModel({
      username: '老婆',
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fd064be90-6b8c-4a6d-9721-837206fbb4a7%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1708069489&t=c810057a56c27b5747e1e92bfde37799',
      user_id: '3'
    } as IContacts),
    new IContactsModel({
      username: '物业小张',
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fabf9e746-a09c-4b08-bcba-1e347a370226%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1708069489&t=b47c00cad15f8dbdc390e82b95348ed2',
      user_id: '4'
    } as IContacts),
    new IContactsModel({
      username: '水若寒宇',
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Ff1d11ab1-35ff-4f2c-b9e9-3e0c996d34a2%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1708069489&t=e3234db982e8a36639d170fc5cec7848',
      user_id: '5'
    } as IContacts)
  ]

  @Builder
  tabBarWX(item: TabItem) {
    Column({ space: 2 }) {
      Image(item.icon)
        .width(22)
      Text(item.title)
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      ForEach(this.tabList, (item: TabItem) => {
        TabContent() {
          ContactsComponent()
        }.tabBar(this.tabBarWX(item))
      })
    }
    .height('100%')
    .width('100%')
  }
}