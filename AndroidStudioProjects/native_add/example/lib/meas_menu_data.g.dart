// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meas_menu_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasMenuData _$MeasMenuDataFromJson(Map<String, dynamic> json) => MeasMenuData(
      json['presetMenu'] == null
          ? null
          : PresetMenu.fromJson(json['presetMenu'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MeasMenuDataToJson(MeasMenuData instance) =>
    <String, dynamic>{
      'presetMenu': instance.presetMenu,
    };

PresetMenu _$PresetMenuFromJson(Map<String, dynamic> json) => PresetMenu(
      json['AppName'] as String?,
      json['B_Mode'] == null
          ? null
          : B_Mode.fromJson(json['B_Mode'] as Map<String, dynamic>),
      json['D_Mode'] == null
          ? null
          : D_Mode.fromJson(json['D_Mode'] as Map<String, dynamic>),
      json['M_Mode'] == null
          ? null
          : M_Mode.fromJson(json['M_Mode'] as Map<String, dynamic>),
      json['PresetName'] as String?,
    );

Map<String, dynamic> _$PresetMenuToJson(PresetMenu instance) =>
    <String, dynamic>{
      'AppName': instance.appName,
      'B_Mode': instance.bMode,
      'D_Mode': instance.dMode,
      'M_Mode': instance.mMode,
      'PresetName': instance.presetName,
    };

B_Mode _$B_ModeFromJson(Map<String, dynamic> json) => B_Mode(
      json['Calc'] == null
          ? null
          : Calc.fromJson(json['Calc'] as Map<String, dynamic>),
      json['Generic'] == null
          ? null
          : Generic.fromJson(json['Generic'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$B_ModeToJson(B_Mode instance) => <String, dynamic>{
      'Calc': instance.calc,
      'Generic': instance.generic,
    };

M_Mode _$M_ModeFromJson(Map<String, dynamic> json) => M_Mode(
      json['Calc'] == null
          ? null
          : Calc.fromJson(json['Calc'] as Map<String, dynamic>),
      json['Generic'] == null
          ? null
          : Generic.fromJson(json['Generic'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$M_ModeToJson(M_Mode instance) => <String, dynamic>{
      'Calc': instance.calc,
      'Generic': instance.generic,
    };

D_Mode _$D_ModeFromJson(Map<String, dynamic> json) => D_Mode(
      json['Calc'] == null
          ? null
          : Calc.fromJson(json['Calc'] as Map<String, dynamic>),
      json['Generic'] == null
          ? null
          : Generic.fromJson(json['Generic'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$D_ModeToJson(D_Mode instance) => <String, dynamic>{
      'Calc': instance.calc,
      'Generic': instance.generic,
    };

Generic _$GenericFromJson(Map<String, dynamic> json) => Generic(
      (json['MeasStudy'] as List<dynamic>?)
          ?.map((e) => MeasStudy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenericToJson(Generic instance) => <String, dynamic>{
      'MeasStudy': instance.measStudy,
    };

Calc _$CalcFromJson(Map<String, dynamic> json) => Calc(
      (json['MeasStudy'] as List<dynamic>?)
          ?.map((e) => MeasStudy.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['isFetusAble'] as bool?,
      json['isLocAble'] as bool?,
      json['isPosAble'] as bool?,
      json['isSideAble'] as bool?,
    );

Map<String, dynamic> _$CalcToJson(Calc instance) => <String, dynamic>{
      'MeasStudy': instance.measStudy,
      'isFetusAble': instance.isFetusAble,
      'isLocAble': instance.isLocAble,
      'isPosAble': instance.isPosAble,
      'isSideAble': instance.isSideAble,
    };

MeasStudy _$MeasStudyFromJson(Map<String, dynamic> json) => MeasStudy(
      (json['MeasItem'] as List<dynamic>?)
          ?.map((e) => MeasItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['MeasName'] as String?,
      json['Position'] as int?,
      json['auto'] as int?,
    );

Map<String, dynamic> _$MeasStudyToJson(MeasStudy instance) => <String, dynamic>{
      'MeasItem': instance.measItem,
      'MeasName': instance.measName,
      'Position': instance.position,
      'auto': instance.auto,
    };

MeasItem _$MeasItemFromJson(Map<String, dynamic> json) => MeasItem(
      json['MeasItemAddr'] as String?,
      json['MeasItemId'] as String?,
      json['MeasName'] as String?,
      (json['MeasTool'] as List<dynamic>?)
          ?.map((e) => MeasTool.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['Position'] as int?,
    );

Map<String, dynamic> _$MeasItemToJson(MeasItem instance) => <String, dynamic>{
      'MeasItemAddr': instance.measItemAddr,
      'MeasItemId': instance.measItemId,
      'MeasName': instance.measName,
      'MeasTool': instance.measTool,
      'Position': instance.position,
    };

MeasTool _$MeasToolFromJson(Map<String, dynamic> json) => MeasTool(
      json['MeasName'] as String?,
      (json['MeasResult'] as List<dynamic>?)
          ?.map((e) => MeasResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['Position'] as int?,
      json['Selected'] as int?,
      json['ToolId'] as String?,
    );

Map<String, dynamic> _$MeasToolToJson(MeasTool instance) => <String, dynamic>{
      'MeasName': instance.measName,
      'MeasResult': instance.measResult,
      'Position': instance.position,
      'Selected': instance.selected,
      'ToolId': instance.toolId,
    };

MeasResult _$MeasResultFromJson(Map<String, dynamic> json) => MeasResult(
      json['MeasItemId'] as String?,
      json['MeasName'] as String?,
      json['Position'] as int?,
      json['bIsFixedShow'] as bool?,
      json['bIsResultNotForPreset'] as int?,
      json['bIsResultReportShow'] as bool?,
      json['bIsResultShow'] as bool?,
      json['bIsResultWorksheetShow'] as bool?,
    );

Map<String, dynamic> _$MeasResultToJson(MeasResult instance) =>
    <String, dynamic>{
      'MeasItemId': instance.measItemId,
      'MeasName': instance.measName,
      'Position': instance.position,
      'bIsFixedShow': instance.bIsFixedShow,
      'bIsResultNotForPreset': instance.bIsResultNotForPreset,
      'bIsResultReportShow': instance.bIsResultReportShow,
      'bIsResultShow': instance.bIsResultShow,
      'bIsResultWorksheetShow': instance.bIsResultWorksheetShow,
    };
