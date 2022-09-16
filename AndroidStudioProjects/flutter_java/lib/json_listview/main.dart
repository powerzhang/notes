import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'meas_menu_data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: MeasMenuContent(),
    ));
  }
}
class MeasMenuContent extends StatefulWidget {
  MeasMenuContent({Key? key}) : super(key: key);

  _MeasMenuContentState createState() => _MeasMenuContentState();
}

class _MeasMenuContentState extends State<MeasMenuContent> {
  MeasMenuData? measMenuData;
  List<MeasItem>? genMeasItemList;
  List<MeasItem>? calcMeasItemList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    measMenuData = parseJson();
    genMeasItemList = measMenuData!.presetMenu!.bMode!.generic!.measStudy![0].measItem;
    calcMeasItemList = measMenuData!.presetMenu!.bMode!.calc!.measStudy![0].measItem;
    print("measMenuData genMeasItemList :${genMeasItemList}");
    print("measMenuData calcMeasItemList :${calcMeasItemList}");
  }
  MeasMenuData parseJson(){
    String str ='''{
    "presetMenu": {
        "AppName": "ABD",
        "B_Mode": {
            "Calc": {
                "MeasItem": null,
                "MeasStudy": [
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581839616",
                                "MeasItemId": "ITEM_ABD_LIVER_LENGTH",
                                "MeasName": "Liver L",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "L",
                                                "MeasName": "Length",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 1
                            },
                            {
                                "MeasItemAddr": "538581840000",
                                "MeasItemId": "ITEM_ABD_LIVER_WIDTH",
                                "MeasName": "Liver W",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "W",
                                                "MeasName": "Width",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 2
                            },
                            {
                                "MeasItemAddr": "538581840384",
                                "MeasItemId": "ITEM_ABD_LIVER_HEIGHT",
                                "MeasName": "Liver H",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "H",
                                                "MeasName": "Height",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 3
                            },
                            {
                                "MeasItemAddr": "538581840768",
                                "MeasItemId": "ITEM_ABD_LIVER_PVDIA",
                                "MeasName": "Portal Vein",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PVDia",
                                                "MeasName": "Portal V.Diam.",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 4
                            },
                            {
                                "MeasItemAddr": "538581841152",
                                "MeasItemId": "ITEM_ABD_LIVER_CHD",
                                "MeasName": "CHD",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "CHD",
                                                "MeasName": "CHD",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 5
                            },
                            {
                                "MeasItemAddr": "538581841536",
                                "MeasItemId": "ITEM_ABD_GALBLAD_LENGTH",
                                "MeasName": "GB L",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "L",
                                                "MeasName": "Length",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 6
                            },
                            {
                                "MeasItemAddr": "538581841920",
                                "MeasItemId": "ITEM_ABD_GALBLAD_HEIGHT",
                                "MeasName": "GB H",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "H",
                                                "MeasName": "Height",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 7
                            },
                            {
                                "MeasItemAddr": "538581842304",
                                "MeasItemId": "ITEM_ABD_GALBLAD_WALL",
                                "MeasName": "GB wall th",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Wall",
                                                "MeasName": "GB wall thick",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 8
                            },
                            {
                                "MeasItemAddr": "538581842688",
                                "MeasItemId": "ITEM_ABD_GALBLAD_CBD",
                                "MeasName": "CBD",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "CBD",
                                                "MeasName": "CBD",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 9
                            },
                            {
                                "MeasItemAddr": "538581843072",
                                "MeasItemId": "ITEM_ABD_PANCREAS_DUCT",
                                "MeasName": "Panc duct",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Duct",
                                                "MeasName": "Duct",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 10
                            },
                            {
                                "MeasItemAddr": "538581843456",
                                "MeasItemId": "ITEM_ABD_PANCREAS_HEAD",
                                "MeasName": "Panc head",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Head",
                                                "MeasName": "Head",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 11
                            },
                            {
                                "MeasItemAddr": "538581843840",
                                "MeasItemId": "ITEM_ABD_PANCREAS_BODY",
                                "MeasName": "Panc body",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Body",
                                                "MeasName": "P_Body",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 12
                            },
                            {
                                "MeasItemAddr": "538581844224",
                                "MeasItemId": "ITEM_ABD_PANCREAS_TAIL",
                                "MeasName": "Panc tail",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Tail",
                                                "MeasName": "Tail",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 13
                            },
                            {
                                "MeasItemAddr": "538581844608",
                                "MeasItemId": "ITEM_ABD_SPLEEN_LENGTH",
                                "MeasName": "Spleen L",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "L",
                                                "MeasName": "Length",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 14
                            },
                            {
                                "MeasItemAddr": "538581844992",
                                "MeasItemId": "ITEM_ABD_SPLEEN_HEIGHT",
                                "MeasName": "Spleen H",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "H",
                                                "MeasName": "Height",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 15
                            }
                        ],
                        "MeasName": "Liver",
                        "Position": 1,
                        "auto": 1
                    }
                ],
                "isFetusAble": false,
                "isLocAble": false,
                "isPosAble": false,
                "isSideAble": false
            },
            "Generic": {
                "MeasItem": null,
                "MeasStudy": [
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581771264",
                                "MeasItemId": "ITEM_GEN_2D_DIST_2PT",
                                "MeasName": "Dist. 2Point",
                                "MeasTool": [
                                    {
                                        "MeasName": "Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "D",
                                                "MeasName": "Distance",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_DIST"
                                    }
                                ],
                                "Position": 1
                            },
                            {
                                "MeasItemAddr": "538581771648",
                                "MeasItemId": "ITEM_GEN_AREA_ELLIPSE",
                                "MeasName": "Area Ellipse",
                                "MeasTool": [
                                    {
                                        "MeasName": "Ellipse",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "C",
                                                "MeasName": "Circ",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "A",
                                                "MeasName": "Area",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_ELLIPSE"
                                    }
                                ],
                                "Position": 2
                            },
                            {
                                "MeasItemAddr": "538581772032",
                                "MeasItemId": "ITEM_GEN_ANGLE_3PT",
                                "MeasName": "Angle 3Point",
                                "MeasTool": [
                                    {
                                        "MeasName": "Angle",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Ang",
                                                "MeasName": "Angle",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_ANGLE"
                                    }
                                ],
                                "Position": 3
                            },
                            {
                                "MeasItemAddr": "538581772416",
                                "MeasItemId": "ITEM_GEN_VOLUME_3DIST",
                                "MeasName": "Volume 3Dist.",
                                "MeasTool": [
                                    {
                                        "MeasName": "3 Distance",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "D1",
                                                "MeasName": "D1",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "D2",
                                                "MeasName": "D2",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "D3",
                                                "MeasName": "D3",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VOL_3DIST",
                                                "MeasName": "Vol",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_2D_3DIST"
                                    }
                                ],
                                "Position": 4
                            }
                        ],
                        "MeasName": "Distance",
                        "Position": 1,
                        "auto": -1
                    }
                ]
            }
        },
        "D_Mode": {
            "Calc": {
                "MeasItem": null,
                "MeasStudy": [
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581846144",
                                "MeasItemId": "ITEM_ABD_PORTALV",
                                "MeasName": "Portal V",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "Portal V Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            }
                        ],
                        "MeasName": "Portal V",
                        "Position": 1,
                        "auto": 1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581846912",
                                "MeasItemId": "ITEM_ABD_IVC",
                                "MeasName": "IVC",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "IVC Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            }
                        ],
                        "MeasName": "IVC",
                        "Position": 2,
                        "auto": 1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581847680",
                                "MeasItemId": "ITEM_ABD_M_PORTALV",
                                "MeasName": "M Portal V",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "M Portal V Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            }
                        ],
                        "MeasName": "M Portal V",
                        "Position": 3,
                        "auto": 1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581848448",
                                "MeasItemId": "ITEM_ABD_HEPATICV",
                                "MeasName": "Hepatic V",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "Hepatic V Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            }
                        ],
                        "MeasName": "Hepatic V",
                        "Position": 4,
                        "auto": 1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581849216",
                                "MeasItemId": "ITEM_ABD_MHEPATICV",
                                "MeasName": "M Hepatic V",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "M Hepatic V Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            }
                        ],
                        "MeasName": "M Hepatic V",
                        "Position": 5,
                        "auto": 1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581849984",
                                "MeasItemId": "ITEM_ABD_SPLENICV",
                                "MeasName": "Splenic V",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "Splenic V Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            }
                        ],
                        "MeasName": "Splenic V",
                        "Position": 6,
                        "auto": 1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581850752",
                                "MeasItemId": "ITEM_ABD_SMV",
                                "MeasName": "SMV",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "SMV Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            }
                        ],
                        "MeasName": "SMV",
                        "Position": 7,
                        "auto": 1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581851520",
                                "MeasItemId": "ITEM_ABD_IMV",
                                "MeasName": "IMV",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "IMV Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            }
                        ],
                        "MeasName": "IMV",
                        "Position": 8,
                        "auto": 1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581852288",
                                "MeasItemId": "ITEM_ABD_AA_PW_AUTOTRACE_FROZEN",
                                "MeasName": "Auto Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Auto Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmean",
                                                "MeasName": "TAMean",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 14,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 15,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_AUTO_TRACE_FROZEN"
                                    }
                                ],
                                "Position": 1,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581852672",
                                "MeasItemId": "ITEM_ABD_AA_PW_PS",
                                "MeasName": "PS",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 2,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581853056",
                                "MeasItemId": "ITEM_ABD_AA_PW_ED",
                                "MeasName": "ED",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 3,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581853440",
                                "MeasItemId": "ITEM_ABD_AA_PW_RI",
                                "MeasName": "RI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 4,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581853824",
                                "MeasItemId": "ITEM_ABD_AA_PW_PI",
                                "MeasName": "PI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 5,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581854208",
                                "MeasItemId": "ITEM_ABD_AA_PW_PS_ED_RI_SD",
                                "MeasName": "PS,ED,RI,S/D",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 6,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581854592",
                                "MeasItemId": "ITEM_ABD_AA_PW_TRACE_DRAW",
                                "MeasName": "Manual Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 7,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581854976",
                                "MeasItemId": "ITEM_ABD_AA_PW_TRACE_SPLINE",
                                "MeasName": "Spline Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "PW Line",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_SPLINE"
                                    }
                                ],
                                "Position": 8,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581855360",
                                "MeasItemId": "ITEM_ABD_AA_PW_HR",
                                "MeasName": "HR",
                                "MeasTool": [
                                    {
                                        "MeasName": "HR",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_HR"
                                    }
                                ],
                                "Position": 9,
                                "isPosable": true
                            },
                            {
                                "MeasItemAddr": "538581855744",
                                "MeasItemId": "ITEM_ABD_AA_PW_TIME",
                                "MeasName": "Time",
                                "MeasTool": [
                                    {
                                        "MeasName": "Time",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_TIME"
                                    }
                                ],
                                "Position": 10,
                                "isPosable": true
                            }
                        ],
                        "MeasName": "AA",
                        "Position": 9,
                        "auto": -1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581856512",
                                "MeasItemId": "ITEM_ABD_SMA_PW_AUTOTRACE_FROZEN",
                                "MeasName": "Auto Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Auto Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmean",
                                                "MeasName": "TAMean",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 14,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 15,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_AUTO_TRACE_FROZEN"
                                    }
                                ],
                                "Position": 1
                            },
                            {
                                "MeasItemAddr": "538581856896",
                                "MeasItemId": "ITEM_ABD_SMA_PW_PS",
                                "MeasName": "PS",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 2
                            },
                            {
                                "MeasItemAddr": "538581857280",
                                "MeasItemId": "ITEM_ABD_SMA_PW_ED",
                                "MeasName": "ED",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 3
                            },
                            {
                                "MeasItemAddr": "538581857664",
                                "MeasItemId": "ITEM_ABD_SMA_PW_RI",
                                "MeasName": "RI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 4
                            },
                            {
                                "MeasItemAddr": "538581858048",
                                "MeasItemId": "ITEM_ABD_SMA_PW_PI",
                                "MeasName": "PI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 5
                            },
                            {
                                "MeasItemAddr": "538581858432",
                                "MeasItemId": "ITEM_ABD_SMA_PW_PS_ED_RI_SD",
                                "MeasName": "PS,ED,RI,S/D",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 6
                            },
                            {
                                "MeasItemAddr": "538581858816",
                                "MeasItemId": "ITEM_ABD_SMA_PW_TRACE_DRAW",
                                "MeasName": "Manual Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 7
                            },
                            {
                                "MeasItemAddr": "538581859200",
                                "MeasItemId": "ITEM_ABD_SMA_PW_TRACE_SPLINE",
                                "MeasName": "Spline Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "PW Line",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_SPLINE"
                                    }
                                ],
                                "Position": 8
                            },
                            {
                                "MeasItemAddr": "538581859584",
                                "MeasItemId": "ITEM_ABD_SMA_PW_HR",
                                "MeasName": "HR",
                                "MeasTool": [
                                    {
                                        "MeasName": "HR",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_HR"
                                    }
                                ],
                                "Position": 9
                            },
                            {
                                "MeasItemAddr": "538581859968",
                                "MeasItemId": "ITEM_ABD_SMA_PW_TIME",
                                "MeasName": "Time",
                                "MeasTool": [
                                    {
                                        "MeasName": "Time",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_TIME"
                                    }
                                ],
                                "Position": 10
                            }
                        ],
                        "MeasName": "SMA",
                        "Position": 10,
                        "auto": -1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581860736",
                                "MeasItemId": "ITEM_ABD_IMA_PW_AUTOTRACE_FROZEN",
                                "MeasName": "Auto Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Auto Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmean",
                                                "MeasName": "TAMean",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 14,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 15,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_AUTO_TRACE_FROZEN"
                                    }
                                ],
                                "Position": 1
                            },
                            {
                                "MeasItemAddr": "538581861120",
                                "MeasItemId": "ITEM_ABD_IMA_PW_PS",
                                "MeasName": "PS",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 2
                            },
                            {
                                "MeasItemAddr": "538581861504",
                                "MeasItemId": "ITEM_ABD_IMA_PW_ED",
                                "MeasName": "ED",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 3
                            },
                            {
                                "MeasItemAddr": "538581861888",
                                "MeasItemId": "ITEM_ABD_IMA_PW_RI",
                                "MeasName": "RI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 4
                            },
                            {
                                "MeasItemAddr": "538581862272",
                                "MeasItemId": "ITEM_ABD_IMA_PW_PI",
                                "MeasName": "PI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 5
                            },
                            {
                                "MeasItemAddr": "538581862656",
                                "MeasItemId": "ITEM_ABD_IMA_PW_PS_ED_RI_SD",
                                "MeasName": "PS,ED,RI,S/D",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 6
                            },
                            {
                                "MeasItemAddr": "538581863040",
                                "MeasItemId": "ITEM_ABD_IMA_PW_TRACE_DRAW",
                                "MeasName": "Manual Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 7
                            },
                            {
                                "MeasItemAddr": "538581863424",
                                "MeasItemId": "ITEM_ABD_IMA_PW_TRACE_SPLINE",
                                "MeasName": "Spline Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "PW Line",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_SPLINE"
                                    }
                                ],
                                "Position": 8
                            },
                            {
                                "MeasItemAddr": "538581863808",
                                "MeasItemId": "ITEM_ABD_IMA_PW_HR",
                                "MeasName": "HR",
                                "MeasTool": [
                                    {
                                        "MeasName": "HR",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_HR"
                                    }
                                ],
                                "Position": 9
                            },
                            {
                                "MeasItemAddr": "538581864192",
                                "MeasItemId": "ITEM_ABD_IMA_PW_TIME",
                                "MeasName": "Time",
                                "MeasTool": [
                                    {
                                        "MeasName": "Time",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_TIME"
                                    }
                                ],
                                "Position": 10
                            }
                        ],
                        "MeasName": "IMA",
                        "Position": 11,
                        "auto": -1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581864960",
                                "MeasItemId": "ITEM_ABD_HA_PW_AUTOTRACE_FROZEN",
                                "MeasName": "Auto Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Auto Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmean",
                                                "MeasName": "TAMean",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 14,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 15,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_AUTO_TRACE_FROZEN"
                                    }
                                ],
                                "Position": 1
                            },
                            {
                                "MeasItemAddr": "538581865344",
                                "MeasItemId": "ITEM_ABD_HA_PW_PS",
                                "MeasName": "PS",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 2
                            },
                            {
                                "MeasItemAddr": "538581865728",
                                "MeasItemId": "ITEM_ABD_HA_PW_ED",
                                "MeasName": "ED",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 3
                            },
                            {
                                "MeasItemAddr": "538581866112",
                                "MeasItemId": "ITEM_ABD_HA_PW_RI",
                                "MeasName": "RI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 4
                            },
                            {
                                "MeasItemAddr": "538581866496",
                                "MeasItemId": "ITEM_ABD_HA_PW_PI",
                                "MeasName": "PI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 5
                            },
                            {
                                "MeasItemAddr": "538581866880",
                                "MeasItemId": "ITEM_ABD_HA_PW_PS_ED_RI_SD",
                                "MeasName": "PS,ED,RI,S/D",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 6
                            },
                            {
                                "MeasItemAddr": "538581867264",
                                "MeasItemId": "ITEM_ABD_HA_PW_TRACE_DRAW",
                                "MeasName": "Manual Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 7
                            },
                            {
                                "MeasItemAddr": "538581867648",
                                "MeasItemId": "ITEM_ABD_HA_PW_TRACE_SPLINE",
                                "MeasName": "Spline Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "PW Line",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_SPLINE"
                                    }
                                ],
                                "Position": 8
                            },
                            {
                                "MeasItemAddr": "538581868032",
                                "MeasItemId": "ITEM_ABD_HA_PW_HR",
                                "MeasName": "HR",
                                "MeasTool": [
                                    {
                                        "MeasName": "HR",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_HR"
                                    }
                                ],
                                "Position": 9
                            },
                            {
                                "MeasItemAddr": "538581868416",
                                "MeasItemId": "ITEM_ABD_HA_PW_TIME",
                                "MeasName": "Time",
                                "MeasTool": [
                                    {
                                        "MeasName": "Time",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_TIME"
                                    }
                                ],
                                "Position": 10
                            }
                        ],
                        "MeasName": "HA",
                        "Position": 12,
                        "auto": -1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581869184",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_AUTOTRACE_FROZEN",
                                "MeasName": "Auto Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Auto Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmean",
                                                "MeasName": "TAMean",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 14,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 15,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_AUTO_TRACE_FROZEN"
                                    }
                                ],
                                "Position": 1
                            },
                            {
                                "MeasItemAddr": "538581869568",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_PS",
                                "MeasName": "PS",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 2
                            },
                            {
                                "MeasItemAddr": "538581869952",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_ED",
                                "MeasName": "ED",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 3
                            },
                            {
                                "MeasItemAddr": "538581870336",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_RI",
                                "MeasName": "RI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 4
                            },
                            {
                                "MeasItemAddr": "538581870720",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_PI",
                                "MeasName": "PI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 5
                            },
                            {
                                "MeasItemAddr": "538581871104",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_PS_ED_RI_SD",
                                "MeasName": "PS,ED,RI,S/D",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 6
                            },
                            {
                                "MeasItemAddr": "538581871488",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_TRACE_DRAW",
                                "MeasName": "Manual Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 7
                            },
                            {
                                "MeasItemAddr": "538581871872",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_TRACE_SPLINE",
                                "MeasName": "Spline Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "PW Line",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_SPLINE"
                                    }
                                ],
                                "Position": 8
                            },
                            {
                                "MeasItemAddr": "538581872256",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_HR",
                                "MeasName": "HR",
                                "MeasTool": [
                                    {
                                        "MeasName": "HR",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_HR"
                                    }
                                ],
                                "Position": 9
                            },
                            {
                                "MeasItemAddr": "538581872640",
                                "MeasItemId": "ITEM_ABD_SPLA_PW_TIME",
                                "MeasName": "Time",
                                "MeasTool": [
                                    {
                                        "MeasName": "Time",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_TIME"
                                    }
                                ],
                                "Position": 10
                            }
                        ],
                        "MeasName": "Splenic A",
                        "Position": 13,
                        "auto": -1
                    },
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581873408",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_AUTOTRACE_FROZEN",
                                "MeasName": "Auto Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Auto Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmean",
                                                "MeasName": "TAMean",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 14,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 15,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_AUTO_TRACE_FROZEN"
                                    }
                                ],
                                "Position": 1,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581873792",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_PS",
                                "MeasName": "PS",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 2,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581874176",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_ED",
                                "MeasName": "ED",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 3,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581874560",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_RI",
                                "MeasName": "RI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 4,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581874944",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_PI",
                                "MeasName": "PI",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 5,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581875328",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_PS_ED_RI_SD",
                                "MeasName": "PS,ED,RI,S/D",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_CALIPER"
                                    }
                                ],
                                "Position": 6,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581875712",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_TRACE_DRAW",
                                "MeasName": "Manual Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "Trace",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "SysMode": 2,
                                        "ToolId": "TOOL_PW_DRAW"
                                    }
                                ],
                                "Position": 7,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581876096",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_TRACE_SPLINE",
                                "MeasName": "Spline Trace",
                                "MeasTool": [
                                    {
                                        "MeasName": "PW Line",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "PS",
                                                "MeasName": "PS",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "ED",
                                                "MeasName": "ED",
                                                "Position": 2,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "MD",
                                                "MeasName": "MD",
                                                "Position": 3,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "TAmax",
                                                "MeasName": "TAMax",
                                                "Position": 4,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmax",
                                                "MeasName": "PGMax",
                                                "Position": 5,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PGmean",
                                                "MeasName": "PGMean",
                                                "Position": 6,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "PI",
                                                "MeasName": "PI",
                                                "Position": 7,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "RI",
                                                "MeasName": "RI",
                                                "Position": 8,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "SD",
                                                "MeasName": "S/D",
                                                "Position": 9,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "VTI",
                                                "MeasName": "VTI",
                                                "Position": 10,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 11,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "AT",
                                                "MeasName": "AT",
                                                "Position": 12,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            },
                                            {
                                                "MeasItemId": "DT",
                                                "MeasName": "DT",
                                                "Position": 13,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_SPLINE"
                                    }
                                ],
                                "Position": 8,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581876480",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_HR",
                                "MeasName": "HR",
                                "MeasTool": [
                                    {
                                        "MeasName": "HR",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_HR"
                                    }
                                ],
                                "Position": 9,
                                "isSideable": true
                            },
                            {
                                "MeasItemAddr": "538581876864",
                                "MeasItemId": "ITEM_ABD_RENALA_PW_TIME",
                                "MeasName": "Time",
                                "MeasTool": [
                                    {
                                        "MeasName": "Time",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_TIME"
                                    }
                                ],
                                "Position": 10,
                                "isSideable": true
                            }
                        ],
                        "MeasName": "Renal A",
                        "Position": 14,
                        "auto": -1
                    }
                ],
                "isFetusAble": false,
                "isLocAble": false,
                "isPosAble": true,
                "isSideAble": true
            },
            "Generic": {
                "MeasItem": null,
                "MeasStudy": [
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581836928",
                                "MeasItemId": "ITEM_GEN_PW_Vel",
                                "MeasName": "Vel",
                                "MeasTool": [
                                    {
                                        "MeasName": "Velocity",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "Vel",
                                                "MeasName": "Vel",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_PW_VELOCITY"
                                    }
                                ],
                                "Position": 1
                            },
                            {
                                "MeasItemAddr": "538581837312",
                                "MeasItemId": "ITEM_GEN_PW_TIME",
                                "MeasName": "Time",
                                "MeasTool": [
                                    {
                                        "MeasName": "Time",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_TIME"
                                    }
                                ],
                                "Position": 2
                            },
                            {
                                "MeasItemAddr": "538581837696",
                                "MeasItemId": "ITEM_GEN_PW_HR",
                                "MeasName": "HR",
                                "MeasTool": [
                                    {
                                        "MeasName": "HR",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_HR"
                                    }
                                ],
                                "Position": 3
                            }
                        ],
                        "MeasName": "Generic",
                        "Position": 1,
                        "auto": -1
                    }
                ]
            }
        },
        "M_Mode": {
            "Calc": {
                "MeasItem": null,
                "MeasStudy": null,
                "isFetusAble": false,
                "isLocAble": false,
                "isPosAble": false,
                "isSideAble": false
            },
            "Generic": {
                "MeasItem": null,
                "MeasStudy": [
                    {
                        "MeasItem": [
                            {
                                "MeasItemAddr": "538581773568",
                                "MeasItemId": "ITEM_GEN_MM_DIST_2PT",
                                "MeasName": "Dist.2Point",
                                "MeasTool": [
                                    {
                                        "MeasName": "Caliper",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "D",
                                                "MeasName": "Distance",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_MM_DIST"
                                    }
                                ],
                                "Position": 1
                            },
                            {
                                "MeasItemAddr": "538581773952",
                                "MeasItemId": "ITEM_GEN_MM_TIME",
                                "MeasName": "Time",
                                "MeasTool": [
                                    {
                                        "MeasName": "Time",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "T",
                                                "MeasName": "Time",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_TIME"
                                    }
                                ],
                                "Position": 4
                            },
                            {
                                "MeasItemAddr": "538581835776",
                                "MeasItemId": "ITEM_GEN_MM_HR",
                                "MeasName": "HR",
                                "MeasTool": [
                                    {
                                        "MeasName": "HR",
                                        "MeasResult": [
                                            {
                                                "MeasItemId": "HR",
                                                "MeasName": "HR",
                                                "Position": 1,
                                                "bIsFixedShow": false,
                                                "bIsResultNotForPreset": 0,
                                                "bIsResultReportShow": true,
                                                "bIsResultShow": true,
                                                "bIsResultWorksheetShow": true
                                            }
                                        ],
                                        "Position": 1,
                                        "Selected": 1,
                                        "ToolId": "TOOL_HR"
                                    }
                                ],
                                "Position": 5
                            }
                        ],
                        "MeasName": "Generic",
                        "Position": 1,
                        "auto": -1
                    }
                ]
            }
        },
        "PresetName": "ABD"
    }
} ''';
    Map<String,dynamic> srcJson =jsonDecode(str);
    // print('${srcJson}');

    MeasMenuData measMenuData =MeasMenuData.fromJson(srcJson);
    print('${measMenuData.presetMenu!.bMode!.calc!.measStudy![0].measName}');
    return measMenuData;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 50,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: creaetTextButton(genMeasItemList!))),
          VerticalDivider(color: Colors.grey, width: 5, thickness: 2, indent: 5, endIndent: 5,),
          Expanded(
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: creaetTextButton(calcMeasItemList!))),
        ]));
  }
}

List<Widget> creaetTextButton(List<MeasItem> measItemList) {
  List<Widget> list = [];
  for (int i = 0; i < measItemList.length; i++) {
    list.add(newTextButton(measItemList[i].measName!));
  }
  return list;
}

Container newTextButton(String text) {
  return Container(
      width: 100,
      height: 50,
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: TextButton(
        onPressed: ()  async {
          final Directory directory = await getApplicationDocumentsDirectory();
          print("点击了 button" + directory.path);
          print("点击了 " + text);
        },
        onLongPress: () {
          print("长按了 button");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
        ),
        child: Text(text),
      ));
}
