.class final enum Lcom/android/server/vibrator/Vibration$Status;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_DISABLED_NOTIFICATION:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FINISHED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum RUNNING:Lcom/android/server/vibrator/Vibration$Status;


# instance fields
.field private final mProtoEnumValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/vibrator/Vibration$Status;

    .line 10
    .line 11
    const-string v2, "RUNNING"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/vibrator/Vibration$Status;

    .line 20
    .line 21
    const-string v3, "FINISHED"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    .line 28
    .line 29
    new-instance v3, Lcom/android/server/vibrator/Vibration$Status;

    .line 30
    .line 31
    const-string v4, "FINISHED_UNEXPECTED"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    .line 38
    .line 39
    new-instance v4, Lcom/android/server/vibrator/Vibration$Status;

    .line 40
    .line 41
    const-string v5, "FORWARDED_TO_INPUT_DEVICES"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v6, v6, v5}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

    .line 48
    .line 49
    new-instance v5, Lcom/android/server/vibrator/Vibration$Status;

    .line 50
    .line 51
    const-string v6, "CANCELLED_BINDER_DIED"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v7, v7, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    .line 58
    .line 59
    new-instance v6, Lcom/android/server/vibrator/Vibration$Status;

    .line 60
    .line 61
    const-string v7, "CANCELLED_BY_SCREEN_OFF"

    .line 62
    .line 63
    const/4 v8, 0x6

    .line 64
    invoke-direct {v6, v8, v8, v7}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    .line 68
    .line 69
    new-instance v7, Lcom/android/server/vibrator/Vibration$Status;

    .line 70
    .line 71
    const-string v8, "CANCELLED_BY_SETTINGS_UPDATE"

    .line 72
    .line 73
    const/4 v9, 0x7

    .line 74
    invoke-direct {v7, v9, v9, v8}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

    .line 78
    .line 79
    new-instance v8, Lcom/android/server/vibrator/Vibration$Status;

    .line 80
    .line 81
    const-string v9, "CANCELLED_BY_USER"

    .line 82
    .line 83
    const/16 v10, 0x8

    .line 84
    .line 85
    invoke-direct {v8, v10, v10, v9}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sput-object v8, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    .line 89
    .line 90
    new-instance v9, Lcom/android/server/vibrator/Vibration$Status;

    .line 91
    .line 92
    const-string v10, "CANCELLED_BY_UNKNOWN_REASON"

    .line 93
    .line 94
    const/16 v11, 0x9

    .line 95
    .line 96
    invoke-direct {v9, v11, v11, v10}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

    .line 100
    .line 101
    new-instance v10, Lcom/android/server/vibrator/Vibration$Status;

    .line 102
    .line 103
    const-string v11, "CANCELLED_SUPERSEDED"

    .line 104
    .line 105
    const/16 v12, 0xa

    .line 106
    .line 107
    invoke-direct {v10, v12, v12, v11}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sput-object v10, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 111
    .line 112
    new-instance v11, Lcom/android/server/vibrator/Vibration$Status;

    .line 113
    .line 114
    const-string v12, "IGNORED_ERROR_APP_OPS"

    .line 115
    .line 116
    const/16 v13, 0xb

    .line 117
    .line 118
    invoke-direct {v11, v13, v13, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v11, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 122
    .line 123
    new-instance v12, Lcom/android/server/vibrator/Vibration$Status;

    .line 124
    .line 125
    const-string v13, "IGNORED_ERROR_CANCELLING"

    .line 126
    .line 127
    const/16 v14, 0xc

    .line 128
    .line 129
    invoke-direct {v12, v14, v14, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sput-object v12, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

    .line 133
    .line 134
    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    .line 135
    .line 136
    const-string v14, "IGNORED_ERROR_SCHEDULING"

    .line 137
    .line 138
    const/16 v15, 0xd

    .line 139
    .line 140
    invoke-direct {v13, v15, v15, v14}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;

    .line 144
    .line 145
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 146
    .line 147
    const-string v15, "IGNORED_ERROR_TOKEN"

    .line 148
    .line 149
    move-object/from16 v16, v13

    .line 150
    .line 151
    const/16 v13, 0xe

    .line 152
    .line 153
    invoke-direct {v14, v13, v13, v15}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

    .line 157
    .line 158
    new-instance v15, Lcom/android/server/vibrator/Vibration$Status;

    .line 159
    .line 160
    const-string v13, "IGNORED_APP_OPS"

    .line 161
    .line 162
    move-object/from16 v17, v14

    .line 163
    .line 164
    const/16 v14, 0xf

    .line 165
    .line 166
    invoke-direct {v15, v14, v14, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sput-object v15, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 170
    .line 171
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 172
    .line 173
    const-string v13, "IGNORED_BACKGROUND"

    .line 174
    .line 175
    move-object/from16 v18, v15

    .line 176
    .line 177
    const/16 v15, 0x10

    .line 178
    .line 179
    invoke-direct {v14, v15, v15, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    .line 183
    .line 184
    new-instance v15, Lcom/android/server/vibrator/Vibration$Status;

    .line 185
    .line 186
    const-string v13, "IGNORED_MISSING_PERMISSION"

    .line 187
    .line 188
    move-object/from16 v19, v14

    .line 189
    .line 190
    const/16 v14, 0x11

    .line 191
    .line 192
    move-object/from16 v20, v12

    .line 193
    .line 194
    const/16 v12, 0x1c

    .line 195
    .line 196
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v15, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/Vibration$Status;

    .line 200
    .line 201
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 202
    .line 203
    const-string v13, "IGNORED_UNSUPPORTED"

    .line 204
    .line 205
    const/16 v12, 0x12

    .line 206
    .line 207
    invoke-direct {v14, v12, v12, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    .line 211
    .line 212
    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    .line 213
    .line 214
    const-string v12, "IGNORED_FOR_EXTERNAL"

    .line 215
    .line 216
    move-object/from16 v22, v14

    .line 217
    .line 218
    const/16 v14, 0x13

    .line 219
    .line 220
    invoke-direct {v13, v14, v14, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    .line 224
    .line 225
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 226
    .line 227
    const-string v12, "IGNORED_FOR_HIGHER_IMPORTANCE"

    .line 228
    .line 229
    move-object/from16 v23, v13

    .line 230
    .line 231
    const/16 v13, 0x14

    .line 232
    .line 233
    invoke-direct {v14, v13, v13, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/Vibration$Status;

    .line 237
    .line 238
    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    .line 239
    .line 240
    const-string v12, "IGNORED_FOR_ONGOING"

    .line 241
    .line 242
    move-object/from16 v24, v14

    .line 243
    .line 244
    const/16 v14, 0x15

    .line 245
    .line 246
    invoke-direct {v13, v14, v14, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 247
    .line 248
    .line 249
    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    .line 250
    .line 251
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 252
    .line 253
    const/16 v12, 0x16

    .line 254
    .line 255
    move-object/from16 v25, v13

    .line 256
    .line 257
    const-string v13, "IGNORED_FOR_POWER"

    .line 258
    .line 259
    invoke-direct {v14, v12, v12, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    .line 263
    .line 264
    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    .line 265
    .line 266
    const/16 v12, 0x17

    .line 267
    .line 268
    move-object/from16 v26, v14

    .line 269
    .line 270
    const-string v14, "IGNORED_FOR_RINGER_MODE"

    .line 271
    .line 272
    invoke-direct {v13, v12, v12, v14}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

    .line 276
    .line 277
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 278
    .line 279
    const/16 v12, 0x18

    .line 280
    .line 281
    move-object/from16 v27, v13

    .line 282
    .line 283
    const-string v13, "IGNORED_FOR_SETTINGS"

    .line 284
    .line 285
    invoke-direct {v14, v12, v12, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    .line 289
    .line 290
    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    .line 291
    .line 292
    const/16 v12, 0x19

    .line 293
    .line 294
    move-object/from16 v28, v14

    .line 295
    .line 296
    const-string v14, "IGNORED_SUPERSEDED"

    .line 297
    .line 298
    invoke-direct {v13, v12, v12, v14}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 302
    .line 303
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 304
    .line 305
    const/16 v12, 0x1a

    .line 306
    .line 307
    move-object/from16 v29, v13

    .line 308
    .line 309
    const-string v13, "IGNORED_FROM_VIRTUAL_DEVICE"

    .line 310
    .line 311
    invoke-direct {v14, v12, v12, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/Vibration$Status;

    .line 315
    .line 316
    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    .line 317
    .line 318
    const/16 v12, 0x1b

    .line 319
    .line 320
    move-object/from16 v30, v14

    .line 321
    .line 322
    const-string v14, "IGNORED_ON_WIRELESS_CHARGER"

    .line 323
    .line 324
    invoke-direct {v13, v12, v12, v14}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/Vibration$Status;

    .line 328
    .line 329
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 330
    .line 331
    const-string v12, "CANCELLED_ACH_REPEATED"

    .line 332
    .line 333
    move-object/from16 v31, v13

    .line 334
    .line 335
    const/16 v13, 0x1d

    .line 336
    .line 337
    move-object/from16 v32, v15

    .line 338
    .line 339
    const/16 v15, 0x1c

    .line 340
    .line 341
    invoke-direct {v14, v15, v13, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    new-instance v15, Lcom/android/server/vibrator/Vibration$Status;

    .line 345
    .line 346
    const-string v12, "CANCELLED_ACH_NON_REPEATED"

    .line 347
    .line 348
    move-object/from16 v21, v14

    .line 349
    .line 350
    const/16 v14, 0x1e

    .line 351
    .line 352
    invoke-direct {v15, v13, v14, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    .line 356
    .line 357
    const-string v12, "CANCELLED_SERVICE_RECOVERED"

    .line 358
    .line 359
    move-object/from16 v33, v15

    .line 360
    .line 361
    const/16 v15, 0x1f

    .line 362
    .line 363
    invoke-direct {v13, v14, v15, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/Vibration$Status;

    .line 367
    .line 368
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    .line 369
    .line 370
    const/16 v12, 0x20

    .line 371
    .line 372
    move-object/from16 v34, v13

    .line 373
    .line 374
    const-string v13, "CANCELLED_BY_DISABLED_NOTIFICATION"

    .line 375
    .line 376
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/vibrator/Vibration$Status;-><init>(IILjava/lang/String;)V

    .line 377
    .line 378
    .line 379
    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_DISABLED_NOTIFICATION:Lcom/android/server/vibrator/Vibration$Status;

    .line 380
    .line 381
    move-object/from16 v12, v20

    .line 382
    .line 383
    move-object/from16 v20, v23

    .line 384
    .line 385
    move-object/from16 v23, v25

    .line 386
    .line 387
    move-object/from16 v25, v27

    .line 388
    .line 389
    move-object/from16 v27, v29

    .line 390
    .line 391
    move-object/from16 v29, v31

    .line 392
    .line 393
    move-object/from16 v31, v34

    .line 394
    .line 395
    move-object/from16 v13, v16

    .line 396
    .line 397
    move-object/from16 v34, v14

    .line 398
    .line 399
    move-object/from16 v16, v19

    .line 400
    .line 401
    move-object/from16 v19, v22

    .line 402
    .line 403
    move-object/from16 v22, v26

    .line 404
    .line 405
    move-object/from16 v26, v30

    .line 406
    .line 407
    move-object/from16 v35, v28

    .line 408
    .line 409
    move-object/from16 v28, v21

    .line 410
    .line 411
    move-object/from16 v21, v24

    .line 412
    .line 413
    move-object/from16 v24, v35

    .line 414
    .line 415
    move-object/from16 v14, v17

    .line 416
    .line 417
    move-object/from16 v17, v32

    .line 418
    .line 419
    move-object/from16 v30, v33

    .line 420
    .line 421
    move-object/from16 v15, v18

    .line 422
    .line 423
    move-object/from16 v18, v19

    .line 424
    .line 425
    move-object/from16 v19, v20

    .line 426
    .line 427
    move-object/from16 v20, v21

    .line 428
    .line 429
    move-object/from16 v21, v23

    .line 430
    .line 431
    move-object/from16 v23, v25

    .line 432
    .line 433
    move-object/from16 v25, v27

    .line 434
    .line 435
    move-object/from16 v27, v29

    .line 436
    .line 437
    move-object/from16 v29, v30

    .line 438
    .line 439
    move-object/from16 v30, v31

    .line 440
    .line 441
    move-object/from16 v31, v34

    .line 442
    .line 443
    filled-new-array/range {v0 .. v31}, [Lcom/android/server/vibrator/Vibration$Status;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->$VALUES:[Lcom/android/server/vibrator/Vibration$Status;

    .line 448
    .line 449
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/vibrator/Vibration$Status;->mProtoEnumValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/vibrator/Vibration$Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/vibrator/Vibration$Status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/vibrator/Vibration$Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->$VALUES:[Lcom/android/server/vibrator/Vibration$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/vibrator/Vibration$Status;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/vibrator/Vibration$Status;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getProtoEnumValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/vibrator/Vibration$Status;->mProtoEnumValue:I

    .line 2
    .line 3
    return p0
.end method
