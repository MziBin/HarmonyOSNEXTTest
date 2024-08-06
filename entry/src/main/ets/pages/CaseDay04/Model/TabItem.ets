export interface TabItem {
  icon: Resource | string,
  name: string,
  title: string,
  selectIcon: Resource | string
}

export class TabItemModel implements TabItem {
  icon: Resource | string = ''
  name: string = ''
  title: string = ''
  selectIcon: Resource | string = ''

  constructor(model: TabItem) {
    this.icon = model.icon
    this.name = model.name
    this.title = model.title
    this.selectIcon = model.selectIcon
  }
}
