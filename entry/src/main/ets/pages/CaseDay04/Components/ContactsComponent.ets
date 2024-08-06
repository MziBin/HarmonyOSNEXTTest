import { IContactsModel } from '../Model/ContactsModel'

@Preview
@Component
export struct ContactsComponent {
  ContactsData: IContactsModel = new IContactsModel({
    user_id: "0",
    avatar: "https://picx.zhimg.com/v2-fab3da929232ae911e92bf8137d11f3a_l.jpg?source=06d4cd63",
    username: "花开富贵"
  })

  build() {
    Row({ space: 3 }) {
      Image(this.ContactsData.avatar)
        .width(16)
        .borderRadius(2)
      Text(this.ContactsData.username)
        .fontSize(10)
    }
  }
}