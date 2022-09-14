import 'package:json_annotation/json_annotation.dart';

part 'meas_menu_data.g.dart';


@JsonSerializable()
class MeasMenuData extends Object {

  @JsonKey(name: 'presetMenu')
  PresetMenu ?presetMenu;

  MeasMenuData(this.presetMenu,);

  factory MeasMenuData.fromJson(Map<String, dynamic> srcJson) => _$MeasMenuDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasMenuDataToJson(this);

}


@JsonSerializable()
class PresetMenu extends Object {

  @JsonKey(name: 'AppName')
  String? appName;

  @JsonKey(name: 'B_Mode')
  B_Mode? bMode;

  @JsonKey(name: 'D_Mode')
  D_Mode? dMode;

  @JsonKey(name: 'M_Mode')
  M_Mode? mMode;

  @JsonKey(name: 'PresetName')
  String? presetName;

  PresetMenu(this.appName,this.bMode,this.dMode,this.mMode,this.presetName,);

  factory PresetMenu.fromJson(Map<String, dynamic> srcJson) => _$PresetMenuFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PresetMenuToJson(this);

}


@JsonSerializable()
class B_Mode extends Object {

  @JsonKey(name: 'Calc')
  Calc? calc;

  @JsonKey(name: 'Generic')
  Generic? generic;

  B_Mode(this.calc,this.generic,);

  factory B_Mode.fromJson(Map<String, dynamic> srcJson) => _$B_ModeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$B_ModeToJson(this);

}

@JsonSerializable()
class M_Mode extends Object {

  @JsonKey(name: 'Calc')
  Calc ?calc;

  @JsonKey(name: 'Generic')
  Generic? generic;

  M_Mode(this.calc,this.generic,);

  factory M_Mode.fromJson(Map<String, dynamic> srcJson) => _$M_ModeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$M_ModeToJson(this);

}

@JsonSerializable()
class D_Mode extends Object {

  @JsonKey(name: 'Calc')
  Calc? calc;

  @JsonKey(name: 'Generic')
  Generic? generic;

  D_Mode(this.calc,this.generic,);

  factory D_Mode.fromJson(Map<String, dynamic> srcJson) => _$D_ModeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$D_ModeToJson(this);

}

@JsonSerializable()
class Generic extends Object {

  @JsonKey(name: 'MeasStudy')
  List<MeasStudy>? measStudy;

  Generic(this.measStudy,);

  factory Generic.fromJson(Map<String, dynamic> srcJson) => _$GenericFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GenericToJson(this);

}

@JsonSerializable()
class Calc extends Object {

  @JsonKey(name: 'MeasStudy')
  List<MeasStudy>? measStudy;

  @JsonKey(name: 'isFetusAble')
  bool? isFetusAble;

  @JsonKey(name: 'isLocAble')
  bool? isLocAble;

  @JsonKey(name: 'isPosAble')
  bool? isPosAble;

  @JsonKey(name: 'isSideAble')
  bool? isSideAble;

  Calc(this.measStudy,this.isFetusAble,this.isLocAble,this.isPosAble,this.isSideAble,);

  factory Calc.fromJson(Map<String, dynamic> srcJson) => _$CalcFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CalcToJson(this);

}


@JsonSerializable()
class MeasStudy extends Object {

  @JsonKey(name: 'MeasItem')
  List<MeasItem>? measItem;

  @JsonKey(name: 'MeasName')
  String? measName;

  @JsonKey(name: 'Position')
  int? position;

  @JsonKey(name: 'auto')
  int? auto;

  MeasStudy(this.measItem,this.measName,this.position,this.auto,);

  factory MeasStudy.fromJson(Map<String, dynamic> srcJson) => _$MeasStudyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasStudyToJson(this);

}


@JsonSerializable()
class MeasItem extends Object {

  @JsonKey(name: 'MeasItemAddr')
  String? measItemAddr;

  @JsonKey(name: 'MeasItemId')
  String? measItemId;

  @JsonKey(name: 'MeasName')
  String? measName;

  @JsonKey(name: 'MeasTool')
  List<MeasTool>? measTool;

  @JsonKey(name: 'Position')
  int? position;

  MeasItem(this.measItemAddr,this.measItemId,this.measName,this.measTool,this.position,);

  factory MeasItem.fromJson(Map<String, dynamic> srcJson) => _$MeasItemFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasItemToJson(this);

}


@JsonSerializable()
class MeasTool extends Object {

  @JsonKey(name: 'MeasName')
  String? measName;

  @JsonKey(name: 'MeasResult')
  List<MeasResult>? measResult;

  @JsonKey(name: 'Position')
  int? position;

  @JsonKey(name: 'Selected')
  int? selected;

  @JsonKey(name: 'ToolId')
  String? toolId;

  MeasTool(this.measName,this.measResult,this.position,this.selected,this.toolId,);

  factory MeasTool.fromJson(Map<String, dynamic> srcJson) => _$MeasToolFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasToolToJson(this);

}


@JsonSerializable()
class MeasResult extends Object {

  @JsonKey(name: 'MeasItemId')
  String? measItemId;

  @JsonKey(name: 'MeasName')
  String? measName;

  @JsonKey(name: 'Position')
  int ?position;

  @JsonKey(name: 'bIsFixedShow')
  bool? bIsFixedShow;

  @JsonKey(name: 'bIsResultNotForPreset')
  int? bIsResultNotForPreset;

  @JsonKey(name: 'bIsResultReportShow')
  bool? bIsResultReportShow;

  @JsonKey(name: 'bIsResultShow')
  bool? bIsResultShow;

  @JsonKey(name: 'bIsResultWorksheetShow')
  bool? bIsResultWorksheetShow;

  MeasResult(this.measItemId,this.measName,this.position,this.bIsFixedShow,this.bIsResultNotForPreset,this.bIsResultReportShow,this.bIsResultShow,this.bIsResultWorksheetShow,);

  factory MeasResult.fromJson(Map<String, dynamic> srcJson) => _$MeasResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasResultToJson(this);

}





/*@JsonSerializable()
class MeasStudy extends Object {

  @JsonKey(name: 'MeasItem')
  List<MeasItem> measItem;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'auto')
  int auto;

  MeasStudy(this.measItem,this.measName,this.position,this.auto,);

  factory MeasStudy.fromJson(Map<String, dynamic> srcJson) => _$MeasStudyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasStudyToJson(this);

}


@JsonSerializable()
class MeasItem extends Object {

  @JsonKey(name: 'MeasItemAddr')
  String measItemAddr;

  @JsonKey(name: 'MeasItemId')
  String measItemId;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'MeasTool')
  List<MeasTool> measTool;

  @JsonKey(name: 'Position')
  int position;

  MeasItem(this.measItemAddr,this.measItemId,this.measName,this.measTool,this.position,);

  factory MeasItem.fromJson(Map<String, dynamic> srcJson) => _$MeasItemFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasItemToJson(this);

}


@JsonSerializable()
class MeasTool extends Object {

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'MeasResult')
  List<MeasResult> measResult;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'Selected')
  int selected;

  @JsonKey(name: 'ToolId')
  String toolId;

  MeasTool(this.measName,this.measResult,this.position,this.selected,this.toolId,);

  factory MeasTool.fromJson(Map<String, dynamic> srcJson) => _$MeasToolFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasToolToJson(this);

}


@JsonSerializable()
class MeasResult extends Object {

  @JsonKey(name: 'MeasItemId')
  String measItemId;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'bIsFixedShow')
  bool bIsFixedShow;

  @JsonKey(name: 'bIsResultNotForPreset')
  int bIsResultNotForPreset;

  @JsonKey(name: 'bIsResultReportShow')
  bool bIsResultReportShow;

  @JsonKey(name: 'bIsResultShow')
  bool bIsResultShow;

  @JsonKey(name: 'bIsResultWorksheetShow')
  bool bIsResultWorksheetShow;

  MeasResult(this.measItemId,this.measName,this.position,this.bIsFixedShow,this.bIsResultNotForPreset,this.bIsResultReportShow,this.bIsResultShow,this.bIsResultWorksheetShow,);

  factory MeasResult.fromJson(Map<String, dynamic> srcJson) => _$MeasResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasResultToJson(this);

}*/



/*@JsonSerializable()
class Calc extends Object {

  @JsonKey(name: 'MeasStudy')
  List<MeasStudy> measStudy;

  @JsonKey(name: 'isFetusAble')
  bool isFetusAble;

  @JsonKey(name: 'isLocAble')
  bool isLocAble;

  @JsonKey(name: 'isPosAble')
  bool isPosAble;

  @JsonKey(name: 'isSideAble')
  bool isSideAble;

  Calc(this.measStudy,this.isFetusAble,this.isLocAble,this.isPosAble,this.isSideAble,);

  factory Calc.fromJson(Map<String, dynamic> srcJson) => _$CalcFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CalcToJson(this);

}


@JsonSerializable()
class MeasStudy extends Object {

  @JsonKey(name: 'MeasItem')
  List<MeasItem> measItem;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'auto')
  int auto;

  MeasStudy(this.measItem,this.measName,this.position,this.auto,);

  factory MeasStudy.fromJson(Map<String, dynamic> srcJson) => _$MeasStudyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasStudyToJson(this);

}*/


/*
@JsonSerializable()
class MeasItem extends Object {

  @JsonKey(name: 'MeasItemAddr')
  String measItemAddr;

  @JsonKey(name: 'MeasItemId')
  String measItemId;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'MeasTool')
  List<MeasTool> measTool;

  @JsonKey(name: 'Position')
  int position;

  MeasItem(this.measItemAddr,this.measItemId,this.measName,this.measTool,this.position,);

  factory MeasItem.fromJson(Map<String, dynamic> srcJson) => _$MeasItemFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasItemToJson(this);

}


@JsonSerializable()
class MeasTool extends Object {

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'MeasResult')
  List<MeasResult> measResult;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'Selected')
  int selected;

  @JsonKey(name: 'ToolId')
  String toolId;

  MeasTool(this.measName,this.measResult,this.position,this.selected,this.toolId,);

  factory MeasTool.fromJson(Map<String, dynamic> srcJson) => _$MeasToolFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasToolToJson(this);

}


@JsonSerializable()
class MeasResult extends Object {

  @JsonKey(name: 'MeasItemId')
  String measItemId;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'bIsFixedShow')
  bool bIsFixedShow;

  @JsonKey(name: 'bIsResultNotForPreset')
  int bIsResultNotForPreset;

  @JsonKey(name: 'bIsResultReportShow')
  bool bIsResultReportShow;

  @JsonKey(name: 'bIsResultShow')
  bool bIsResultShow;

  @JsonKey(name: 'bIsResultWorksheetShow')
  bool bIsResultWorksheetShow;

  MeasResult(this.measItemId,this.measName,this.position,this.bIsFixedShow,this.bIsResultNotForPreset,this.bIsResultReportShow,this.bIsResultShow,this.bIsResultWorksheetShow,);

  factory MeasResult.fromJson(Map<String, dynamic> srcJson) => _$MeasResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasResultToJson(this);

}


@JsonSerializable()
class Generic extends Object {

  @JsonKey(name: 'MeasStudy')
  List<MeasStudy> measStudy;

  Generic(this.measStudy,);

  factory Generic.fromJson(Map<String, dynamic> srcJson) => _$GenericFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GenericToJson(this);

}


@JsonSerializable()
class MeasStudy extends Object {

  @JsonKey(name: 'MeasItem')
  List<MeasItem> measItem;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'auto')
  int auto;

  MeasStudy(this.measItem,this.measName,this.position,this.auto,);

  factory MeasStudy.fromJson(Map<String, dynamic> srcJson) => _$MeasStudyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasStudyToJson(this);

}


@JsonSerializable()
class MeasItem extends Object {

  @JsonKey(name: 'MeasItemAddr')
  String measItemAddr;

  @JsonKey(name: 'MeasItemId')
  String measItemId;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'MeasTool')
  List<MeasTool> measTool;

  @JsonKey(name: 'Position')
  int position;

  MeasItem(this.measItemAddr,this.measItemId,this.measName,this.measTool,this.position,);

  factory MeasItem.fromJson(Map<String, dynamic> srcJson) => _$MeasItemFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasItemToJson(this);

}


@JsonSerializable()
class MeasTool extends Object {

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'MeasResult')
  List<MeasResult> measResult;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'Selected')
  int selected;

  @JsonKey(name: 'ToolId')
  String toolId;

  MeasTool(this.measName,this.measResult,this.position,this.selected,this.toolId,);

  factory MeasTool.fromJson(Map<String, dynamic> srcJson) => _$MeasToolFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasToolToJson(this);

}


@JsonSerializable()
class MeasResult extends Object {

  @JsonKey(name: 'MeasItemId')
  String measItemId;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'bIsFixedShow')
  bool bIsFixedShow;

  @JsonKey(name: 'bIsResultNotForPreset')
  int bIsResultNotForPreset;

  @JsonKey(name: 'bIsResultReportShow')
  bool bIsResultReportShow;

  @JsonKey(name: 'bIsResultShow')
  bool bIsResultShow;

  @JsonKey(name: 'bIsResultWorksheetShow')
  bool bIsResultWorksheetShow;

  MeasResult(this.measItemId,this.measName,this.position,this.bIsFixedShow,this.bIsResultNotForPreset,this.bIsResultReportShow,this.bIsResultShow,this.bIsResultWorksheetShow,);

  factory MeasResult.fromJson(Map<String, dynamic> srcJson) => _$MeasResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasResultToJson(this);

}
*/





/*@JsonSerializable()
class Calc extends Object {

  @JsonKey(name: 'isFetusAble')
  bool isFetusAble;

  @JsonKey(name: 'isLocAble')
  bool isLocAble;

  @JsonKey(name: 'isPosAble')
  bool isPosAble;

  @JsonKey(name: 'isSideAble')
  bool isSideAble;

  Calc(this.isFetusAble,this.isLocAble,this.isPosAble,this.isSideAble,);

  factory Calc.fromJson(Map<String, dynamic> srcJson) => _$CalcFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CalcToJson(this);

}


@JsonSerializable()
class Generic extends Object {

  @JsonKey(name: 'MeasStudy')
  List<MeasStudy> measStudy;

  Generic(this.measStudy,);

  factory Generic.fromJson(Map<String, dynamic> srcJson) => _$GenericFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GenericToJson(this);

}


@JsonSerializable()
class MeasStudy extends Object {

  @JsonKey(name: 'MeasItem')
  List<MeasItem> measItem;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'auto')
  int auto;

  MeasStudy(this.measItem,this.measName,this.position,this.auto,);

  factory MeasStudy.fromJson(Map<String, dynamic> srcJson) => _$MeasStudyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasStudyToJson(this);

}


@JsonSerializable()
class MeasItem extends Object {

  @JsonKey(name: 'MeasItemAddr')
  String measItemAddr;

  @JsonKey(name: 'MeasItemId')
  String measItemId;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'MeasTool')
  List<MeasTool> measTool;

  @JsonKey(name: 'Position')
  int position;

  MeasItem(this.measItemAddr,this.measItemId,this.measName,this.measTool,this.position,);

  factory MeasItem.fromJson(Map<String, dynamic> srcJson) => _$MeasItemFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasItemToJson(this);

}


@JsonSerializable()
class MeasTool extends Object {

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'MeasResult')
  List<MeasResult> measResult;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'Selected')
  int selected;

  @JsonKey(name: 'ToolId')
  String toolId;

  MeasTool(this.measName,this.measResult,this.position,this.selected,this.toolId,);

  factory MeasTool.fromJson(Map<String, dynamic> srcJson) => _$MeasToolFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasToolToJson(this);

}


@JsonSerializable()
class MeasResult extends Object {

  @JsonKey(name: 'MeasItemId')
  String measItemId;

  @JsonKey(name: 'MeasName')
  String measName;

  @JsonKey(name: 'Position')
  int position;

  @JsonKey(name: 'bIsFixedShow')
  bool bIsFixedShow;

  @JsonKey(name: 'bIsResultNotForPreset')
  int bIsResultNotForPreset;

  @JsonKey(name: 'bIsResultReportShow')
  bool bIsResultReportShow;

  @JsonKey(name: 'bIsResultShow')
  bool bIsResultShow;

  @JsonKey(name: 'bIsResultWorksheetShow')
  bool bIsResultWorksheetShow;

  MeasResult(this.measItemId,this.measName,this.position,this.bIsFixedShow,this.bIsResultNotForPreset,this.bIsResultReportShow,this.bIsResultShow,this.bIsResultWorksheetShow,);

  factory MeasResult.fromJson(Map<String, dynamic> srcJson) => _$MeasResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MeasResultToJson(this);

}*/


