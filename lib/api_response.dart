class APIresponse<T> {
  T ?  data  ;
  bool response;
  String errorMessage;
  APIresponse({
    required  this.data ,
     this.response = false,
     required this.errorMessage
  });
}
