class Details {
  code: number = 0
  data: DetailsData = new DetailsData()
  msg: string = ""

}

class DetailsData {
  actualArrivalTime: string = ""
  actualDepartureTime: string = ""
  cargoPickUpPictureList: Array<PictureObj>[] = []
  cargoPictureList: Array<PictureObj>[] = []
  deliverPictureList: Array<PictureObj>[] = []
  driverId: string = ""
  driverName: string = ""
  endAddress: string = ""
  endAgencyId: string = ""
  endCity: string = ""
  endProvince: string = ""
  finishHandoverName: string = ""
  finishHandoverPhone: string = ""
  id: string = ""
  licensePlate: string = ""
  planArrivalTime: string = ""
  startAddress: string = ""
  startAgencyId: string = ""
  startCity:string = ""
  startHandoverName: string = ""
  startHandoverPhone: string = ""
  startProvince: string = ""
  status: 1|2|3|4|5|6 = 1
  certificatePictureList: Array<PictureObj>[] = []
  exceptionList: Array<ExceptionObj>[] = []
  transportTaskId: string = ""
}

class PictureObj {
  url: string = ""
}

class ExceptionObj {
  exceptionTime: string = ""
  exceptionPlace: string = ""
  exceptionType: string = ""
  exceptionDescribe: string = ""
  handleResult: string = ""
  exceptionImagesList: Array<PictureObj>[] = []
}