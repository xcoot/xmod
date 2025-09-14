.class public final enum Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;


# instance fields
.field private final typeNum:I

.field private final unfreezeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "Total"

    .line 9
    .line 10
    const-string v4, "UNFREEZE_TOTAL"

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "Alarm"

    .line 25
    .line 26
    const-string v5, "UNFREEZE_REASON_ALARM"

    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "Packet"

    .line 41
    .line 42
    const-string v6, "UNFREEZE_REASON_PACKET"

    .line 43
    .line 44
    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 48
    .line 49
    new-instance v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "Wakelock"

    .line 57
    .line 58
    const-string v7, "UNFREEZE_REASON_WAKELOCK"

    .line 59
    .line 60
    invoke-direct {v3, v4, v5, v7, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 64
    .line 65
    const/4 v5, 0x4

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v7, "Binder(1)"

    .line 71
    .line 72
    const-string v8, "UNFREEZE_REASON_BINDER_1"

    .line 73
    .line 74
    invoke-direct {v4, v5, v6, v8, v7}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v5, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 78
    .line 79
    const/4 v6, 0x5

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    const-string v8, "Binder(0)"

    .line 85
    .line 86
    const-string v9, "UNFREEZE_REASON_BINDER_0"

    .line 87
    .line 88
    invoke-direct {v5, v6, v7, v9, v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v6, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 92
    .line 93
    const/4 v7, 0x6

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const-string v9, "DeviceIdleOFF"

    .line 99
    .line 100
    const-string v10, "UNFREEZE_REASON_DEVICE_IDLE_OFF"

    .line 101
    .line 102
    invoke-direct {v6, v7, v8, v10, v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v7, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 106
    .line 107
    const/4 v8, 0x7

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    const-string v10, "StartProcessP"

    .line 113
    .line 114
    const-string v11, "UNFREEZE_REASON_START_PROCESS"

    .line 115
    .line 116
    invoke-direct {v7, v8, v9, v11, v10}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v8, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 120
    .line 121
    const/16 v9, 0x8

    .line 122
    .line 123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    const-string v11, "LaunchingProvider"

    .line 128
    .line 129
    const-string v12, "UNFREEZE_REASON_LAUNCHING_PROVIDER"

    .line 130
    .line 131
    invoke-direct {v8, v9, v10, v12, v11}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v9, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 135
    .line 136
    const/16 v10, 0x9

    .line 137
    .line 138
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    const-string v12, "ReceivingIntent"

    .line 143
    .line 144
    const-string v13, "UNFREEZE_REASON_RECEIVING_INTENT"

    .line 145
    .line 146
    invoke-direct {v9, v10, v11, v13, v12}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v10, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 150
    .line 151
    const/16 v11, 0xa

    .line 152
    .line 153
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    const-string v13, "ExecutingService"

    .line 158
    .line 159
    const-string v14, "UNFREEZE_REASON_EXECUITNG_SERVICE"

    .line 160
    .line 161
    invoke-direct {v10, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v11, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 165
    .line 166
    const/16 v12, 0xb

    .line 167
    .line 168
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    const-string v14, "UidActive"

    .line 173
    .line 174
    const-string v15, "UNFREEZE_REASON_UIDACTIVE"

    .line 175
    .line 176
    invoke-direct {v11, v12, v13, v15, v14}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v12, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 180
    .line 181
    const/16 v13, 0xc

    .line 182
    .line 183
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    const-string/jumbo v15, "startService"

    .line 188
    .line 189
    .line 190
    move-object/from16 v16, v11

    .line 191
    .line 192
    const-string v11, "UNFREEZE_REASON_STARTSERVICE"

    .line 193
    .line 194
    invoke-direct {v12, v13, v14, v11, v15}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v13, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 198
    .line 199
    const/16 v11, 0xd

    .line 200
    .line 201
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    const-string v15, "bindService"

    .line 206
    .line 207
    move-object/from16 v17, v12

    .line 208
    .line 209
    const-string v12, "UNFREEZE_REASON_BINDSERVICE"

    .line 210
    .line 211
    invoke-direct {v13, v11, v14, v12, v15}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 215
    .line 216
    const/16 v11, 0xe

    .line 217
    .line 218
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    const-string v15, "activity"

    .line 223
    .line 224
    move-object/from16 v18, v13

    .line 225
    .line 226
    const-string v13, "UNFREEZE_REASON_ACTIVITY"

    .line 227
    .line 228
    invoke-direct {v14, v11, v12, v13, v15}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 232
    .line 233
    const/16 v11, 0xf

    .line 234
    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    const-string/jumbo v13, "broadcast"

    .line 240
    .line 241
    .line 242
    move-object/from16 v19, v14

    .line 243
    .line 244
    const-string v14, "UNFREEZE_REASON_BROADCAST"

    .line 245
    .line 246
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 250
    .line 251
    const/16 v11, 0x10

    .line 252
    .line 253
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    const-string/jumbo v13, "provider"

    .line 258
    .line 259
    .line 260
    move-object/from16 v20, v15

    .line 261
    .line 262
    const-string v15, "UNFREEZE_REASON_PROVIDER"

    .line 263
    .line 264
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 268
    .line 269
    const/16 v11, 0x11

    .line 270
    .line 271
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v12

    .line 275
    const-string/jumbo v13, "unbindService"

    .line 276
    .line 277
    .line 278
    move-object/from16 v21, v14

    .line 279
    .line 280
    const-string v14, "UNFREEZE_REASON_UNBINDSERVICE"

    .line 281
    .line 282
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 286
    .line 287
    const/16 v11, 0x12

    .line 288
    .line 289
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    const-string/jumbo v13, "startProcess"

    .line 294
    .line 295
    .line 296
    move-object/from16 v22, v15

    .line 297
    .line 298
    const-string v15, "UNFREEZE_REASON_STARTPROCESS"

    .line 299
    .line 300
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 304
    .line 305
    const/16 v11, 0x13

    .line 306
    .line 307
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object v12

    .line 311
    const-string v13, "ServiceANR"

    .line 312
    .line 313
    move-object/from16 v23, v14

    .line 314
    .line 315
    const-string v14, "UNFREEZE_REASON_SERVICEANR"

    .line 316
    .line 317
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 321
    .line 322
    const/16 v11, 0x14

    .line 323
    .line 324
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    const-string v13, "Signal"

    .line 329
    .line 330
    move-object/from16 v24, v15

    .line 331
    .line 332
    const-string v15, "UNFREEZE_REASON_SIGNAL"

    .line 333
    .line 334
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 338
    .line 339
    const/16 v11, 0x15

    .line 340
    .line 341
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v12

    .line 345
    const-string v13, "Cfb"

    .line 346
    .line 347
    move-object/from16 v25, v14

    .line 348
    .line 349
    const-string v14, "UNFREEZE_REASON_CFB"

    .line 350
    .line 351
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 355
    .line 356
    const/16 v11, 0x16

    .line 357
    .line 358
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    const-string/jumbo v13, "procstate"

    .line 363
    .line 364
    .line 365
    move-object/from16 v26, v15

    .line 366
    .line 367
    const-string v15, "UNFREEZE_REASON_PROC_STATE"

    .line 368
    .line 369
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 373
    .line 374
    const/16 v11, 0x17

    .line 375
    .line 376
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    const-string v13, "OLAF:"

    .line 381
    .line 382
    move-object/from16 v27, v14

    .line 383
    .line 384
    const-string v14, "UNFREEZE_REASON_OLAF"

    .line 385
    .line 386
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 390
    .line 391
    const/16 v11, 0x18

    .line 392
    .line 393
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v12

    .line 397
    const-string v13, "None"

    .line 398
    .line 399
    move-object/from16 v28, v15

    .line 400
    .line 401
    const-string v15, "UNFREEZE_REASON_NONE"

    .line 402
    .line 403
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    sput-object v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 407
    .line 408
    move-object/from16 v11, v16

    .line 409
    .line 410
    move-object/from16 v12, v17

    .line 411
    .line 412
    move-object/from16 v13, v18

    .line 413
    .line 414
    move-object/from16 v16, v21

    .line 415
    .line 416
    move-object/from16 v18, v23

    .line 417
    .line 418
    move-object/from16 v21, v25

    .line 419
    .line 420
    move-object/from16 v23, v27

    .line 421
    .line 422
    move-object/from16 v25, v14

    .line 423
    .line 424
    move-object/from16 v14, v19

    .line 425
    .line 426
    move-object/from16 v17, v22

    .line 427
    .line 428
    move-object/from16 v19, v24

    .line 429
    .line 430
    move-object/from16 v22, v26

    .line 431
    .line 432
    move-object/from16 v24, v28

    .line 433
    .line 434
    move-object/from16 v15, v20

    .line 435
    .line 436
    move-object/from16 v20, v21

    .line 437
    .line 438
    move-object/from16 v21, v22

    .line 439
    .line 440
    move-object/from16 v22, v23

    .line 441
    .line 442
    move-object/from16 v23, v24

    .line 443
    .line 444
    move-object/from16 v24, v25

    .line 445
    .line 446
    filled-new-array/range {v0 .. v24}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 451
    .line 452
    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->unfreezeType:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    iget-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->unfreezeType:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    return-object v4

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTypeNum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    .line 2
    .line 3
    return p0
.end method
