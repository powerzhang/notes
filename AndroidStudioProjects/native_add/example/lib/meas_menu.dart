class MeasMenu {
  PresetMenu? presetMenu;

  MeasMenu({this.presetMenu});

  MeasMenu.fromJson(Map<String, dynamic> json) {
    presetMenu = json['presetMenu'] != null
        ? new PresetMenu.fromJson(json['presetMenu'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.presetMenu != null) {
      data['presetMenu'] = this.presetMenu!.toJson();
    }
    return data;
  }
}

class PresetMenu {
  String? appName;
  BMode? bMode;
  BMode? dMode;
  BMode? mMode;
  String? presetName;

  PresetMenu(
      {this.appName, this.bMode, this.dMode, this.mMode, this.presetName});

  PresetMenu.fromJson(Map<String, dynamic> json) {
    appName = json['AppName'];
    bMode = json['B_Mode'] != null ? new BMode.fromJson(json['B_Mode']) : null;
    dMode = json['D_Mode'] != null ? new BMode.fromJson(json['D_Mode']) : null;
    mMode = json['M_Mode'] != null ? new BMode.fromJson(json['M_Mode']) : null;
    presetName = json['PresetName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AppName'] = this.appName;
    if (this.bMode != null) {
      data['B_Mode'] = this.bMode!.toJson();
    }
    if (this.dMode != null) {
      data['D_Mode'] = this.dMode!.toJson();
    }
    if (this.mMode != null) {
      data['M_Mode'] = this.mMode!.toJson();
    }
    data['PresetName'] = this.presetName;
    return data;
  }
}

class BMode {
  Calc? calc;
  Generic? generic;

  BMode({this.calc, this.generic});

  BMode.fromJson(Map<String, dynamic> json) {
    calc = json['Calc'] != null ? new Calc.fromJson(json['Calc']) : null;
    generic =
    json['Generic'] != null ? new Generic.fromJson(json['Generic']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.calc != null) {
      data['Calc'] = this.calc!.toJson();
    }
    if (this.generic != null) {
      data['Generic'] = this.generic!.toJson();
    }
    return data;
  }
}

/*
class Calc {
  MeasItem? measItem;
  List<MeasStudy>? measStudy;
  bool? isFetusAble;
  bool? isLocAble;
  bool? isPosAble;
  bool? isSideAble;

  Calc(
      {this.measItem,
        this.measStudy,
        this.isFetusAble,
        this.isLocAble,
        this.isPosAble,
        this.isSideAble});

  Calc.fromJson(Map<String, dynamic> json) {
    measItem = json['MeasItem'];
    if (json['MeasStudy'] != null) {
      measStudy = <MeasStudy>[];
      json['MeasStudy'].forEach((v) {
        measStudy!.add(new MeasStudy.fromJson(v));
      });
    }
    isFetusAble = json['isFetusAble'];
    isLocAble = json['isLocAble'];
    isPosAble = json['isPosAble'];
    isSideAble = json['isSideAble'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MeasItem'] = this.measItem;
    if (this.measStudy != null) {
      data['MeasStudy'] = this.measStudy!.map((v) => v.toJson()).toList();
    }
    data['isFetusAble'] = this.isFetusAble;
    data['isLocAble'] = this.isLocAble;
    data['isPosAble'] = this.isPosAble;
    data['isSideAble'] = this.isSideAble;
    return data;
  }
}
*/

class MeasStudy {
  List<MeasItem>? measItem;
  String? measName;
  int? position;
  int? auto;

  MeasStudy({this.measItem, this.measName, this.position, this.auto});

  MeasStudy.fromJson(Map<String, dynamic> json) {
    if (json['MeasItem'] != null) {
      measItem = <MeasItem>[];
      json['MeasItem'].forEach((v) {
        measItem!.add(new MeasItem.fromJson(v));
      });
    }
    measName = json['MeasName'];
    position = json['Position'];
    auto = json['auto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.measItem != null) {
      data['MeasItem'] = this.measItem!.map((v) => v.toJson()).toList();
    }
    data['MeasName'] = this.measName;
    data['Position'] = this.position;
    data['auto'] = this.auto;
    return data;
  }
}

/*class MeasItem {
  String? measItemAddr;
  String? measItemId;
  String? measName;
  List<MeasTool>? measTool;
  int? position;

  MeasItem(
      {this.measItemAddr,
        this.measItemId,
        this.measName,
        this.measTool,
        this.position});

  MeasItem.fromJson(Map<String, dynamic> json) {
    measItemAddr = json['MeasItemAddr'];
    measItemId = json['MeasItemId'];
    measName = json['MeasName'];
    if (json['MeasTool'] != null) {
      measTool = <MeasTool>[];
      json['MeasTool'].forEach((v) {
        measTool!.add(new MeasTool.fromJson(v));
      });
    }
    position = json['Position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MeasItemAddr'] = this.measItemAddr;
    data['MeasItemId'] = this.measItemId;
    data['MeasName'] = this.measName;
    if (this.measTool != null) {
      data['MeasTool'] = this.measTool!.map((v) => v.toJson()).toList();
    }
    data['Position'] = this.position;
    return data;
  }
}*/

/*class MeasTool {
  String? measName;
  List<MeasResult>? measResult;
  int? position;
  int? selected;
  String? toolId;

  MeasTool(
      {this.measName,
        this.measResult,
        this.position,
        this.selected,
        this.toolId});

  MeasTool.fromJson(Map<String, dynamic> json) {
    measName = json['MeasName'];
    if (json['MeasResult'] != null) {
      measResult = <MeasResult>[];
      json['MeasResult'].forEach((v) {
        measResult!.add(new MeasResult.fromJson(v));
      });
    }
    position = json['Position'];
    selected = json['Selected'];
    toolId = json['ToolId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MeasName'] = this.measName;
    if (this.measResult != null) {
      data['MeasResult'] = this.measResult!.map((v) => v.toJson()).toList();
    }
    data['Position'] = this.position;
    data['Selected'] = this.selected;
    data['ToolId'] = this.toolId;
    return data;
  }
}*/

class MeasResult {
  String? measItemId;
  String? measName;
  int? position;
  bool? bIsFixedShow;
  int? bIsResultNotForPreset;
  bool? bIsResultReportShow;
  bool? bIsResultShow;
  bool? bIsResultWorksheetShow;

  MeasResult(
      {this.measItemId,
        this.measName,
        this.position,
        this.bIsFixedShow,
        this.bIsResultNotForPreset,
        this.bIsResultReportShow,
        this.bIsResultShow,
        this.bIsResultWorksheetShow});

  MeasResult.fromJson(Map<String, dynamic> json) {
    measItemId = json['MeasItemId'];
    measName = json['MeasName'];
    position = json['Position'];
    bIsFixedShow = json['bIsFixedShow'];
    bIsResultNotForPreset = json['bIsResultNotForPreset'];
    bIsResultReportShow = json['bIsResultReportShow'];
    bIsResultShow = json['bIsResultShow'];
    bIsResultWorksheetShow = json['bIsResultWorksheetShow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MeasItemId'] = this.measItemId;
    data['MeasName'] = this.measName;
    data['Position'] = this.position;
    data['bIsFixedShow'] = this.bIsFixedShow;
    data['bIsResultNotForPreset'] = this.bIsResultNotForPreset;
    data['bIsResultReportShow'] = this.bIsResultReportShow;
    data['bIsResultShow'] = this.bIsResultShow;
    data['bIsResultWorksheetShow'] = this.bIsResultWorksheetShow;
    return data;
  }
}

class Generic {
  Null? measItem;
  List<MeasStudy>? measStudy;

  Generic({this.measItem, this.measStudy});

  Generic.fromJson(Map<String, dynamic> json) {
    measItem = json['MeasItem'];
    if (json['MeasStudy'] != null) {
      measStudy = <MeasStudy>[];
      json['MeasStudy'].forEach((v) {
        measStudy!.add(new MeasStudy.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MeasItem'] = this.measItem;
    if (this.measStudy != null) {
      data['MeasStudy'] = this.measStudy!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MeasItem {
  String? measItemAddr;
  String? measItemId;
  String? measName;
  List<MeasTool>? measTool;
  int? position;
  bool? isPosable;
  bool? isSideable;

  MeasItem(
      {this.measItemAddr,
        this.measItemId,
        this.measName,
        this.measTool,
        this.position,
        this.isPosable,
        this.isSideable});

  MeasItem.fromJson(Map<String, dynamic> json) {
    measItemAddr = json['MeasItemAddr'];
    measItemId = json['MeasItemId'];
    measName = json['MeasName'];
    if (json['MeasTool'] != null) {
      measTool = <MeasTool>[];
      json['MeasTool'].forEach((v) {
        measTool!.add(new MeasTool.fromJson(v));
      });
    }
    position = json['Position'];
    isPosable = json['isPosable'];
    isSideable = json['isSideable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MeasItemAddr'] = this.measItemAddr;
    data['MeasItemId'] = this.measItemId;
    data['MeasName'] = this.measName;
    if (this.measTool != null) {
      data['MeasTool'] = this.measTool!.map((v) => v.toJson()).toList();
    }
    data['Position'] = this.position;
    data['isPosable'] = this.isPosable;
    data['isSideable'] = this.isSideable;
    return data;
  }
}

class MeasTool {
  String? measName;
  List<MeasResult>? measResult;
  int? position;
  int? selected;
  String? toolId;
  int? sysMode;

  MeasTool(
      {this.measName,
        this.measResult,
        this.position,
        this.selected,
        this.toolId,
        this.sysMode});

  MeasTool.fromJson(Map<String, dynamic> json) {
    measName = json['MeasName'];
    if (json['MeasResult'] != null) {
      measResult = <MeasResult>[];
      json['MeasResult'].forEach((v) {
        measResult!.add(new MeasResult.fromJson(v));
      });
    }
    position = json['Position'];
    selected = json['Selected'];
    toolId = json['ToolId'];
    sysMode = json['SysMode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MeasName'] = this.measName;
    if (this.measResult != null) {
      data['MeasResult'] = this.measResult!.map((v) => v.toJson()).toList();
    }
    data['Position'] = this.position;
    data['Selected'] = this.selected;
    data['ToolId'] = this.toolId;
    data['SysMode'] = this.sysMode;
    return data;
  }
}

class Calc {
  MeasItem? measItem;
  List<MeasStudy>? measStudy;
  bool? isFetusAble;
  bool? isLocAble;
  bool? isPosAble;
  bool? isSideAble;

  Calc(
      {this.measItem,
        this.measStudy,
        this.isFetusAble,
        this.isLocAble,
        this.isPosAble,
        this.isSideAble});

  Calc.fromJson(Map<String, dynamic> json) {
    measItem = json['MeasItem'];
    measStudy = json['MeasStudy'];
    isFetusAble = json['isFetusAble'];
    isLocAble = json['isLocAble'];
    isPosAble = json['isPosAble'];
    isSideAble = json['isSideAble'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MeasItem'] = this.measItem;
    data['MeasStudy'] = this.measStudy;
    data['isFetusAble'] = this.isFetusAble;
    data['isLocAble'] = this.isLocAble;
    data['isPosAble'] = this.isPosAble;
    data['isSideAble'] = this.isSideAble;
    return data;
  }
}
