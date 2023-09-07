import 'package:validators/validators.dart';

Function validateUsername(){
  return (String? value){
    if (value!.isEmpty){
      return "이름은 공백이 들어갈 수 없습니다.";
    } else if(value.length > 12){
      return "이름의 길이를 초과하였습니다.";
    } else if(value.length < 4){
      return "이름의 최소 길이는 4글자 입니다.";
    }
    else {
      return null;
    }
  };
}


Function validatePassword(){
  return (String? value){
    if (value!.isEmpty){
      return "비밀번호는 공백이 들어갈 수 없습니다.";
    } else if (!isAlpha(value)){
      return "비밀번호는 한글이 들어갈 수 없습니다.";
    }
    else if(value.length > 12){
      return "비밀번호의 길이를 초과하였습니다.";
    } else if(value.length < 4){
      return "비밀번호의 최소 길이는 4글자 입니다.";
    }
    else {
      return null;
    }
  };
}


Function validateEmail(){
  return (String? value){
    if (value!.isEmpty){
      return "이메일은 공백이 들어갈 수 없습니다.";
    } else if(!isEmail(value)){
      return "이메일 형식이 맞지 않습니다.";
    }
    else {
      return null;
    }
  };
}

Function validateTitle(){
  return (String? value){
    if (value!.isEmpty){
      return "공백이 들어갈 수 없습니다.";
    }
    else {
      return null;
    }
  };
}

Function validateContent(){
  return (String? value){
    if (value!.isEmpty){
      return "공백이 들어갈 수 없습니다.";
    }
    else {
      return null;
    }
  };
}


Function validateHospital(){
  return (String? value){
    {
      return null;
    }
  };
}
