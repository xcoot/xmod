.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeature;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FORCE_OPT_OUT_EDGE_TO_EDGE_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FULL_SCREEN_HID:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum appcategory:Lcom/samsung/android/server/packagefeature/PackageFeature;


# instance fields
.field public final mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

.field public final mEnabled:Z

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 1
    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 2
    .line 3
    sget-object v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 4
    .line 5
    new-instance v6, Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;

    .line 6
    .line 7
    const-string v0, "-setForceDisplayCompatMode"

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v5, "displayCompat"

    .line 18
    .line 19
    const-string v1, "DISPLAY_COMPAT"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    move-object v0, v7

    .line 23
    move-object v4, v8

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 25
    .line 26
    .line 27
    sput-object v7, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 28
    .line 29
    new-instance v9, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 30
    .line 31
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MIN_ASPECT_RATIO_LIST:Z

    .line 32
    .line 33
    new-instance v6, Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;

    .line 34
    .line 35
    const-string v0, "-setFixedAspectRatio"

    .line 36
    .line 37
    const-string v1, "-ratio"

    .line 38
    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    const-string v5, "fixedAspectRatio"

    .line 48
    .line 49
    const-string v1, "MIN_ASPECT_RATIO"

    .line 50
    .line 51
    move-object v0, v9

    .line 52
    move-object v4, v8

    .line 53
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 54
    .line 55
    .line 56
    sput-object v9, Lcom/samsung/android/server/packagefeature/PackageFeature;->MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 57
    .line 58
    new-instance v10, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    const-string v5, "fullScreen"

    .line 62
    .line 63
    const-string v1, "FULL_SCREEN"

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v0, v10

    .line 68
    move-object v4, v8

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 70
    .line 71
    .line 72
    sput-object v10, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 73
    .line 74
    new-instance v11, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 75
    .line 76
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_FULL_SCREEN_APPS_SUPPORT_MODE_HID:Z

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    const-string v5, "fullScreenHID"

    .line 80
    .line 81
    const-string v1, "FULL_SCREEN_HID"

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    move-object v0, v11

    .line 85
    move-object v4, v8

    .line 86
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 87
    .line 88
    .line 89
    sput-object v11, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN_HID:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 90
    .line 91
    new-instance v12, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 92
    .line 93
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 94
    .line 95
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 96
    .line 97
    const-string v0, "-setIgnoreAppRotation"

    .line 98
    .line 99
    filled-new-array {v0}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 v2, 0x4

    .line 107
    const-string v5, "ignoreAppRotation"

    .line 108
    .line 109
    const-string v1, "IGNORE_APP_ROTATION"

    .line 110
    .line 111
    move-object v0, v12

    .line 112
    move v3, v13

    .line 113
    move-object v4, v8

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 115
    .line 116
    .line 117
    sput-object v12, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 118
    .line 119
    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 120
    .line 121
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 122
    .line 123
    const-string v0, "-setIgnoreAppRotationDisabled"

    .line 124
    .line 125
    filled-new-array {v0}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/4 v2, 0x5

    .line 133
    const-string v5, "ignoreAppRotationDisabled"

    .line 134
    .line 135
    const-string v1, "IGNORE_APP_ROTATION_DISABLED"

    .line 136
    .line 137
    move-object v0, v14

    .line 138
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 139
    .line 140
    .line 141
    sput-object v14, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 142
    .line 143
    new-instance v15, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 144
    .line 145
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 146
    .line 147
    const-string v0, "-setTabletAppRotationCompat"

    .line 148
    .line 149
    filled-new-array {v0}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/4 v2, 0x6

    .line 157
    const-string/jumbo v5, "tabletAppRotationCompat"

    .line 158
    .line 159
    .line 160
    const-string v1, "TABLET_APP_ROTATION_COMPAT"

    .line 161
    .line 162
    move-object v0, v15

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 164
    .line 165
    .line 166
    sput-object v15, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 167
    .line 168
    new-instance v16, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 169
    .line 170
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLEX_MODE_APP_LIST:Z

    .line 171
    .line 172
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 173
    .line 174
    const-string v0, "-setFlexModeApp"

    .line 175
    .line 176
    filled-new-array {v0}, [Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/4 v2, 0x7

    .line 184
    const-string v5, "flexModeApp"

    .line 185
    .line 186
    const-string v1, "FLEX_MODE_APP"

    .line 187
    .line 188
    move-object/from16 v0, v16

    .line 189
    .line 190
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 191
    .line 192
    .line 193
    sput-object v16, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 194
    .line 195
    new-instance v17, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 196
    .line 197
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLEX_PANEL_DEFAULT_LIST:Z

    .line 198
    .line 199
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 200
    .line 201
    const-string v0, "-setFlexPanelDefault"

    .line 202
    .line 203
    filled-new-array {v0}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/16 v2, 0x8

    .line 211
    .line 212
    const-string v5, "flexPanelDefault"

    .line 213
    .line 214
    const-string v1, "FLEX_PANEL_DEFAULT"

    .line 215
    .line 216
    move-object/from16 v0, v17

    .line 217
    .line 218
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 219
    .line 220
    .line 221
    sput-object v17, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 222
    .line 223
    new-instance v18, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 224
    .line 225
    const/4 v3, 0x0

    .line 226
    const-string/jumbo v5, "splitActivity"

    .line 227
    .line 228
    .line 229
    const-string v1, "SPLIT_ACTIVITY"

    .line 230
    .line 231
    const/16 v2, 0x9

    .line 232
    .line 233
    const/4 v6, 0x0

    .line 234
    move-object/from16 v0, v18

    .line 235
    .line 236
    move-object v4, v8

    .line 237
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 238
    .line 239
    .line 240
    new-instance v19, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    const-string v5, "dexLaunchBlock"

    .line 244
    .line 245
    const-string v1, "DEX_LAUNCH_B"

    .line 246
    .line 247
    const/16 v2, 0xa

    .line 248
    .line 249
    const/4 v6, 0x0

    .line 250
    move-object/from16 v0, v19

    .line 251
    .line 252
    move-object v4, v8

    .line 253
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 254
    .line 255
    .line 256
    new-instance v20, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 257
    .line 258
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 259
    .line 260
    const-string v0, "-setDexRestart"

    .line 261
    .line 262
    filled-new-array {v0}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const/4 v3, 0x0

    .line 270
    const-string v5, "dexLaunchRestart"

    .line 271
    .line 272
    const-string v1, "DEX_LAUNCH_RESTART"

    .line 273
    .line 274
    const/16 v2, 0xb

    .line 275
    .line 276
    move-object/from16 v0, v20

    .line 277
    .line 278
    move-object v4, v8

    .line 279
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 280
    .line 281
    .line 282
    new-instance v21, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 283
    .line 284
    new-instance v6, Lcom/samsung/android/server/packagefeature/CoverLauncherWidgetDebugCommand;

    .line 285
    .line 286
    const-string v0, "-setCoverLauncherWidgetPackage"

    .line 287
    .line 288
    filled-new-array {v0}, [Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const/4 v3, 0x0

    .line 296
    const-string v5, "coverLauncherWidget"

    .line 297
    .line 298
    const-string v1, "COVER_LAUNCHER_WIDGET"

    .line 299
    .line 300
    const/16 v2, 0xc

    .line 301
    .line 302
    move-object/from16 v0, v21

    .line 303
    .line 304
    move-object v4, v8

    .line 305
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 306
    .line 307
    .line 308
    new-instance v22, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 309
    .line 310
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_LAUNCHER_WIDGET_POLICY_CHN:Z

    .line 311
    .line 312
    const/16 v2, 0xd

    .line 313
    .line 314
    const-string v5, "coverLauncherWidgetChn"

    .line 315
    .line 316
    const-string v1, "COVER_LAUNCHER_WIDGET_CHN"

    .line 317
    .line 318
    const/4 v6, 0x0

    .line 319
    move-object/from16 v0, v22

    .line 320
    .line 321
    move-object v4, v8

    .line 322
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 323
    .line 324
    .line 325
    new-instance v23, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 326
    .line 327
    const/4 v3, 0x0

    .line 328
    const-string v5, "CoverLauncherWidgetInner"

    .line 329
    .line 330
    const-string v1, "COVER_LAUNCHER_WIDGET_INNER"

    .line 331
    .line 332
    const/16 v2, 0xe

    .line 333
    .line 334
    const/4 v6, 0x0

    .line 335
    move-object/from16 v0, v23

    .line 336
    .line 337
    move-object v4, v8

    .line 338
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 339
    .line 340
    .line 341
    new-instance v24, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 342
    .line 343
    const/16 v2, 0xf

    .line 344
    .line 345
    const-string/jumbo v5, "remoteControlFeatures"

    .line 346
    .line 347
    .line 348
    const-string v1, "REMOTE_CONTROL_FEATURES"

    .line 349
    .line 350
    const/4 v6, 0x0

    .line 351
    move-object/from16 v0, v24

    .line 352
    .line 353
    move v3, v13

    .line 354
    move-object v4, v8

    .line 355
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 356
    .line 357
    .line 358
    new-instance v25, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 359
    .line 360
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_OPT_OUT_EDGE_TO_EDGE:Z

    .line 361
    .line 362
    const/16 v2, 0x10

    .line 363
    .line 364
    const-string v5, "forceOptOutEdgeToEdge"

    .line 365
    .line 366
    const-string v1, "FORCE_OPT_OUT_EDGE_TO_EDGE_LIST"

    .line 367
    .line 368
    const/4 v6, 0x0

    .line 369
    move-object/from16 v0, v25

    .line 370
    .line 371
    move-object v4, v8

    .line 372
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 373
    .line 374
    .line 375
    sput-object v25, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_OUT_EDGE_TO_EDGE_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 376
    .line 377
    new-instance v33, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 378
    .line 379
    sget-boolean v29, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    .line 380
    .line 381
    sget-object v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 382
    .line 383
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 384
    .line 385
    const-string v1, "-setLowRefreshRate"

    .line 386
    .line 387
    filled-new-array {v1}, [Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const/16 v28, 0x11

    .line 395
    .line 396
    const-string v31, "lowRefreshRate"

    .line 397
    .line 398
    const-string v27, "LOW_REFRESH_RATE"

    .line 399
    .line 400
    move-object/from16 v26, v33

    .line 401
    .line 402
    move-object/from16 v30, v8

    .line 403
    .line 404
    move-object/from16 v32, v0

    .line 405
    .line 406
    invoke-direct/range {v26 .. v32}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 407
    .line 408
    .line 409
    sput-object v33, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 410
    .line 411
    new-instance v26, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 412
    .line 413
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    .line 414
    .line 415
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 416
    .line 417
    const-string v0, "-setHighRefreshRate"

    .line 418
    .line 419
    filled-new-array {v0}, [Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    const/16 v2, 0x12

    .line 427
    .line 428
    const-string v5, "highRefreshRate"

    .line 429
    .line 430
    const-string v1, "HIGH_REFRESH_RATE"

    .line 431
    .line 432
    move-object/from16 v0, v26

    .line 433
    .line 434
    move-object v4, v8

    .line 435
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 436
    .line 437
    .line 438
    sput-object v26, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 439
    .line 440
    new-instance v27, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 441
    .line 442
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    .line 443
    .line 444
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 445
    .line 446
    const-string v0, "-setNaviAppLowRefreshRate"

    .line 447
    .line 448
    filled-new-array {v0}, [Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    const/16 v2, 0x13

    .line 456
    .line 457
    const-string/jumbo v5, "naviAppLowRefreshRate"

    .line 458
    .line 459
    .line 460
    const-string v1, "NAVIGATION_LOW_REFRESH_RATE"

    .line 461
    .line 462
    move-object/from16 v0, v27

    .line 463
    .line 464
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 465
    .line 466
    .line 467
    sput-object v27, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 468
    .line 469
    new-instance v28, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 470
    .line 471
    sget-object v38, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 472
    .line 473
    const/16 v37, 0x1

    .line 474
    .line 475
    const-string v39, "BroadcastReceiverAllowList"

    .line 476
    .line 477
    const-string v35, "BROADCAST_RECEIVER_ALLOW_LIST"

    .line 478
    .line 479
    const/16 v36, 0x14

    .line 480
    .line 481
    const/16 v40, 0x0

    .line 482
    .line 483
    move-object/from16 v34, v28

    .line 484
    .line 485
    invoke-direct/range {v34 .. v40}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 486
    .line 487
    .line 488
    sput-object v28, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 489
    .line 490
    new-instance v29, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 491
    .line 492
    sget-object v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->APP_CATEGORY_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 493
    .line 494
    const/4 v3, 0x1

    .line 495
    const-string v5, "appcategory"

    .line 496
    .line 497
    const-string v1, "appcategory"

    .line 498
    .line 499
    const/16 v2, 0x15

    .line 500
    .line 501
    const/4 v6, 0x0

    .line 502
    move-object/from16 v0, v29

    .line 503
    .line 504
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 505
    .line 506
    .line 507
    sput-object v29, Lcom/samsung/android/server/packagefeature/PackageFeature;->appcategory:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 508
    .line 509
    new-instance v30, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 510
    .line 511
    sget-object v38, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 512
    .line 513
    const/16 v37, 0x0

    .line 514
    .line 515
    const-string/jumbo v39, "testPackageFeature"

    .line 516
    .line 517
    .line 518
    const-string v35, "TEST_PACKAGE_FEATURE"

    .line 519
    .line 520
    const/16 v36, 0x16

    .line 521
    .line 522
    const/16 v40, 0x0

    .line 523
    .line 524
    move-object/from16 v34, v30

    .line 525
    .line 526
    invoke-direct/range {v34 .. v40}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 527
    .line 528
    .line 529
    move-object v0, v7

    .line 530
    move-object v1, v9

    .line 531
    move-object v2, v10

    .line 532
    move-object v3, v11

    .line 533
    move-object v4, v12

    .line 534
    move-object v5, v14

    .line 535
    move-object v6, v15

    .line 536
    move-object/from16 v7, v16

    .line 537
    .line 538
    move-object/from16 v8, v17

    .line 539
    .line 540
    move-object/from16 v9, v18

    .line 541
    .line 542
    move-object/from16 v10, v19

    .line 543
    .line 544
    move-object/from16 v11, v20

    .line 545
    .line 546
    move-object/from16 v12, v21

    .line 547
    .line 548
    move-object/from16 v13, v22

    .line 549
    .line 550
    move-object/from16 v14, v23

    .line 551
    .line 552
    move-object/from16 v15, v24

    .line 553
    .line 554
    move-object/from16 v16, v25

    .line 555
    .line 556
    move-object/from16 v17, v33

    .line 557
    .line 558
    move-object/from16 v18, v26

    .line 559
    .line 560
    move-object/from16 v19, v27

    .line 561
    .line 562
    move-object/from16 v20, v28

    .line 563
    .line 564
    move-object/from16 v21, v29

    .line 565
    .line 566
    move-object/from16 v22, v30

    .line 567
    .line 568
    filled-new-array/range {v0 .. v22}, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 573
    .line 574
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    .line 5
    .line 6
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p6, 0x0

    .line 14
    :goto_0
    iput-object p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 15
    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeature;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    check-cast v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 30
    .line 31
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method
