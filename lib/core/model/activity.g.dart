// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      key: json['key'] as String,
      activity: json['activity'] as String,
      type: json['type'] as String,
      participants: (json['participants'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'activity': instance.activity,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
    };

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      description: json['description'] as String,
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'completed': instance.completed,
    };
