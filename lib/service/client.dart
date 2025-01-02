import 'package:core/core.dart';
import 'package:machine_test/model/response_model.dart';

class HomeClient {
  DioClient dioClient;
  HomeClient(this.dioClient);

  Future<ResponseModel> getUserList(){
    return dioClient.get<ResponseModel>("https://reqres.in/api/users?page=1", serializerMapFunction: (data)=>ResponseModel.fromJson(data));
  }
}