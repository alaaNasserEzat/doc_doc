abstract class ApiConcumer {
  Future<dynamic> get(String path,{Map<String,dynamic> ?queryParams,Object ?data});
    Future<dynamic> post(String path,{Map<String,dynamic> ?queryParams,Object ?data});
      Future<dynamic> delete(String path,{Map<String,dynamic> ?queryParams,Object ?data});
        Future<dynamic> patch(String path,{Map<String,dynamic> ?queryParams,Object ?data});
}