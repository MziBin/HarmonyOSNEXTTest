interface IContacts {
  user_id: string
  username: string
  avatar: string
}

export class IContactsModel implements IContacts {
  user_id: string = ''
  username: string = ''
  avatar: string = ''

  constructor(model: IContacts) {
    this.user_id = model.user_id
    this.username = model.username
    this.avatar = model.avatar
  }
}

export { IContacts }