import 'package:dio/dio.dart';
import 'package:test3/domain/entities/message.dart';
import 'package:test3/infrastructure/models/YesNoModel.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    if (response.statusCode == 200) {
      final yesNoModel = YesNoModel.fromJsonMap(response.data);
      return Message(
          text: yesNoModel.answer,
          fromWho: FromWho.hers,
          imageUrl: yesNoModel.image);
    }
    throw UnimplementedError();
  }
}
