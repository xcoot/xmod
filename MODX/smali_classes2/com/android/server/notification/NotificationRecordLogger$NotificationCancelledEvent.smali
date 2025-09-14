.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_BUBBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 2
    .line 3
    const-string v1, "INVALID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 12
    .line 13
    const/16 v2, 0xa4

    .line 14
    .line 15
    const-string v3, "NOTIFICATION_CANCEL_CLICK"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 22
    .line 23
    const/16 v3, 0xa5

    .line 24
    .line 25
    const-string v4, "NOTIFICATION_CANCEL_USER_OTHER"

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-direct {v2, v5, v3, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 32
    .line 33
    new-instance v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 34
    .line 35
    const/16 v4, 0xa6

    .line 36
    .line 37
    const-string v5, "NOTIFICATION_CANCEL_USER_CANCEL_ALL"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-direct {v3, v6, v4, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 44
    .line 45
    const/16 v5, 0xa7

    .line 46
    .line 47
    const-string v6, "NOTIFICATION_CANCEL_ERROR"

    .line 48
    .line 49
    const/4 v7, 0x4

    .line 50
    invoke-direct {v4, v7, v5, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 54
    .line 55
    const/16 v6, 0xa8

    .line 56
    .line 57
    const-string v7, "NOTIFICATION_CANCEL_PACKAGE_CHANGED"

    .line 58
    .line 59
    const/4 v8, 0x5

    .line 60
    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 64
    .line 65
    const/16 v7, 0xa9

    .line 66
    .line 67
    const-string v8, "NOTIFICATION_CANCEL_USER_STOPPED"

    .line 68
    .line 69
    const/4 v9, 0x6

    .line 70
    invoke-direct {v6, v9, v7, v8}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 74
    .line 75
    const/16 v8, 0xaa

    .line 76
    .line 77
    const-string v9, "NOTIFICATION_CANCEL_PACKAGE_BANNED"

    .line 78
    .line 79
    const/4 v10, 0x7

    .line 80
    invoke-direct {v7, v10, v8, v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 84
    .line 85
    const/16 v9, 0xab

    .line 86
    .line 87
    const-string v10, "NOTIFICATION_CANCEL_APP_CANCEL"

    .line 88
    .line 89
    const/16 v11, 0x8

    .line 90
    .line 91
    invoke-direct {v8, v11, v9, v10}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 95
    .line 96
    const/16 v10, 0xac

    .line 97
    .line 98
    const-string v11, "NOTIFICATION_CANCEL_APP_CANCEL_ALL"

    .line 99
    .line 100
    const/16 v12, 0x9

    .line 101
    .line 102
    invoke-direct {v9, v12, v10, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 106
    .line 107
    const/16 v11, 0xad

    .line 108
    .line 109
    const-string v12, "NOTIFICATION_CANCEL_LISTENER_CANCEL"

    .line 110
    .line 111
    const/16 v13, 0xa

    .line 112
    .line 113
    invoke-direct {v10, v13, v11, v12}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 117
    .line 118
    const/16 v12, 0xae

    .line 119
    .line 120
    const-string v13, "NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL"

    .line 121
    .line 122
    const/16 v14, 0xb

    .line 123
    .line 124
    invoke-direct {v11, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 128
    .line 129
    const/16 v13, 0xaf

    .line 130
    .line 131
    const-string v14, "NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED"

    .line 132
    .line 133
    const/16 v15, 0xc

    .line 134
    .line 135
    invoke-direct {v12, v15, v13, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 139
    .line 140
    const/16 v14, 0xb0

    .line 141
    .line 142
    const-string v15, "NOTIFICATION_CANCEL_GROUP_OPTIMIZATION"

    .line 143
    .line 144
    move-object/from16 v16, v12

    .line 145
    .line 146
    const/16 v12, 0xd

    .line 147
    .line 148
    invoke-direct {v13, v12, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 152
    .line 153
    const/16 v12, 0xb1

    .line 154
    .line 155
    const-string v15, "NOTIFICATION_CANCEL_PACKAGE_SUSPENDED"

    .line 156
    .line 157
    move-object/from16 v17, v13

    .line 158
    .line 159
    const/16 v13, 0xe

    .line 160
    .line 161
    invoke-direct {v14, v13, v12, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 165
    .line 166
    const/16 v12, 0xb2

    .line 167
    .line 168
    const-string v13, "NOTIFICATION_CANCEL_PROFILE_TURNED_OFF"

    .line 169
    .line 170
    move-object/from16 v18, v14

    .line 171
    .line 172
    const/16 v14, 0xf

    .line 173
    .line 174
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 178
    .line 179
    const/16 v12, 0xb3

    .line 180
    .line 181
    const-string v13, "NOTIFICATION_CANCEL_UNAUTOBUNDLED"

    .line 182
    .line 183
    move-object/from16 v19, v15

    .line 184
    .line 185
    const/16 v15, 0x10

    .line 186
    .line 187
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 191
    .line 192
    const/16 v12, 0xb4

    .line 193
    .line 194
    const-string v13, "NOTIFICATION_CANCEL_CHANNEL_BANNED"

    .line 195
    .line 196
    move-object/from16 v20, v14

    .line 197
    .line 198
    const/16 v14, 0x11

    .line 199
    .line 200
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 204
    .line 205
    const/16 v12, 0xb5

    .line 206
    .line 207
    const-string v13, "NOTIFICATION_CANCEL_SNOOZED"

    .line 208
    .line 209
    move-object/from16 v21, v15

    .line 210
    .line 211
    const/16 v15, 0x12

    .line 212
    .line 213
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 217
    .line 218
    const/16 v12, 0xb6

    .line 219
    .line 220
    const-string v13, "NOTIFICATION_CANCEL_TIMEOUT"

    .line 221
    .line 222
    move-object/from16 v22, v14

    .line 223
    .line 224
    const/16 v14, 0x13

    .line 225
    .line 226
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 230
    .line 231
    const/16 v12, 0x4ed

    .line 232
    .line 233
    const-string v13, "NOTIFICATION_CANCEL_CHANNEL_REMOVED"

    .line 234
    .line 235
    move-object/from16 v23, v15

    .line 236
    .line 237
    const/16 v15, 0x14

    .line 238
    .line 239
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 243
    .line 244
    const/16 v12, 0x4ee

    .line 245
    .line 246
    const-string v13, "NOTIFICATION_CANCEL_CLEAR_DATA"

    .line 247
    .line 248
    move-object/from16 v24, v14

    .line 249
    .line 250
    const/16 v14, 0x15

    .line 251
    .line 252
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 256
    .line 257
    const/16 v12, 0xbe

    .line 258
    .line 259
    const-string v13, "NOTIFICATION_CANCEL_USER_PEEK"

    .line 260
    .line 261
    move-object/from16 v25, v15

    .line 262
    .line 263
    const/16 v15, 0x16

    .line 264
    .line 265
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    sput-object v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 269
    .line 270
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 271
    .line 272
    const/16 v12, 0xbf

    .line 273
    .line 274
    const-string v13, "NOTIFICATION_CANCEL_USER_AOD"

    .line 275
    .line 276
    move-object/from16 v26, v14

    .line 277
    .line 278
    const/16 v14, 0x17

    .line 279
    .line 280
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    sput-object v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 284
    .line 285
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 286
    .line 287
    const/16 v12, 0x4cc

    .line 288
    .line 289
    const-string v13, "NOTIFICATION_CANCEL_USER_BUBBLE"

    .line 290
    .line 291
    move-object/from16 v27, v15

    .line 292
    .line 293
    const/16 v15, 0x18

    .line 294
    .line 295
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    sput-object v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_BUBBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 299
    .line 300
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 301
    .line 302
    const/16 v12, 0xc1

    .line 303
    .line 304
    const-string v13, "NOTIFICATION_CANCEL_USER_LOCKSCREEN"

    .line 305
    .line 306
    move-object/from16 v28, v14

    .line 307
    .line 308
    const/16 v14, 0x19

    .line 309
    .line 310
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    sput-object v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 314
    .line 315
    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 316
    .line 317
    const/16 v12, 0xc0

    .line 318
    .line 319
    const-string v13, "NOTIFICATION_CANCEL_USER_SHADE"

    .line 320
    .line 321
    move-object/from16 v29, v15

    .line 322
    .line 323
    const/16 v15, 0x1a

    .line 324
    .line 325
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    sput-object v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 329
    .line 330
    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 331
    .line 332
    const/16 v12, 0x38a

    .line 333
    .line 334
    const-string v13, "NOTIFICATION_CANCEL_ASSISTANT"

    .line 335
    .line 336
    move-object/from16 v30, v14

    .line 337
    .line 338
    const/16 v14, 0x1b

    .line 339
    .line 340
    invoke-direct {v15, v14, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    sput-object v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 344
    .line 345
    move-object/from16 v12, v16

    .line 346
    .line 347
    move-object/from16 v13, v17

    .line 348
    .line 349
    move-object/from16 v16, v20

    .line 350
    .line 351
    move-object/from16 v20, v22

    .line 352
    .line 353
    move-object/from16 v22, v24

    .line 354
    .line 355
    move-object/from16 v24, v26

    .line 356
    .line 357
    move-object/from16 v26, v28

    .line 358
    .line 359
    move-object/from16 v28, v30

    .line 360
    .line 361
    move-object/from16 v14, v18

    .line 362
    .line 363
    move-object/from16 v17, v21

    .line 364
    .line 365
    move-object/from16 v21, v23

    .line 366
    .line 367
    move-object/from16 v23, v25

    .line 368
    .line 369
    move-object/from16 v25, v27

    .line 370
    .line 371
    move-object/from16 v27, v29

    .line 372
    .line 373
    move-object/from16 v29, v15

    .line 374
    .line 375
    move-object/from16 v15, v19

    .line 376
    .line 377
    move-object/from16 v18, v20

    .line 378
    .line 379
    move-object/from16 v19, v21

    .line 380
    .line 381
    move-object/from16 v20, v22

    .line 382
    .line 383
    move-object/from16 v21, v23

    .line 384
    .line 385
    move-object/from16 v22, v24

    .line 386
    .line 387
    move-object/from16 v23, v25

    .line 388
    .line 389
    move-object/from16 v24, v26

    .line 390
    .line 391
    move-object/from16 v25, v27

    .line 392
    .line 393
    move-object/from16 v26, v28

    .line 394
    .line 395
    move-object/from16 v27, v29

    .line 396
    .line 397
    filled-new-array/range {v0 .. v27}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 402
    .line 403
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
