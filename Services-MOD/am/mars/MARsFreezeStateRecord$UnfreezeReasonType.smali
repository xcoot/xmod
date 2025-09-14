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

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const-string v3, "Total"

    .line 10
    const-string v4, "UNFREEZE_TOTAL"

    .line 12
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 17
    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v3

    .line 24
    const-string v4, "Alarm"

    .line 26
    const-string v5, "UNFREEZE_REASON_ALARM"

    .line 28
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sput-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 33
    new-instance v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v4

    .line 40
    const-string v5, "Packet"

    .line 42
    const-string v6, "UNFREEZE_REASON_PACKET"

    .line 44
    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sput-object v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 49
    new-instance v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v5

    .line 56
    const-string v6, "Wakelock"

    .line 58
    const-string v7, "UNFREEZE_REASON_WAKELOCK"

    .line 60
    invoke-direct {v3, v4, v5, v7, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 65
    const/4 v5, 0x4

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v6

    .line 70
    const-string v7, "Binder(1)"

    .line 72
    const-string v8, "UNFREEZE_REASON_BINDER_1"

    .line 74
    invoke-direct {v4, v5, v6, v8, v7}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v5, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 79
    const/4 v6, 0x5

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v7

    .line 84
    const-string v8, "Binder(0)"

    .line 86
    const-string v9, "UNFREEZE_REASON_BINDER_0"

    .line 88
    invoke-direct {v5, v6, v7, v9, v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v6, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 93
    const/4 v7, 0x6

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v8

    .line 98
    const-string v9, "DeviceIdleOFF"

    .line 100
    const-string v10, "UNFREEZE_REASON_DEVICE_IDLE_OFF"

    .line 102
    invoke-direct {v6, v7, v8, v10, v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v7, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 107
    const/4 v8, 0x7

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v9

    .line 112
    const-string v10, "StartProcessP"

    .line 114
    const-string v11, "UNFREEZE_REASON_START_PROCESS"

    .line 116
    invoke-direct {v7, v8, v9, v11, v10}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v8, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 121
    const/16 v9, 0x8

    .line 123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v10

    .line 127
    const-string v11, "LaunchingProvider"

    .line 129
    const-string v12, "UNFREEZE_REASON_LAUNCHING_PROVIDER"

    .line 131
    invoke-direct {v8, v9, v10, v12, v11}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v9, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 136
    const/16 v10, 0x9

    .line 138
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v11

    .line 142
    const-string v12, "ReceivingIntent"

    .line 144
    const-string v13, "UNFREEZE_REASON_RECEIVING_INTENT"

    .line 146
    invoke-direct {v9, v10, v11, v13, v12}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v10, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 151
    const/16 v11, 0xa

    .line 153
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v12

    .line 157
    const-string v13, "ExecutingService"

    .line 159
    const-string v14, "UNFREEZE_REASON_EXECUITNG_SERVICE"

    .line 161
    invoke-direct {v10, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v11, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 166
    const/16 v12, 0xb

    .line 168
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v13

    .line 172
    const-string v14, "UidActive"

    .line 174
    const-string v15, "UNFREEZE_REASON_UIDACTIVE"

    .line 176
    invoke-direct {v11, v12, v13, v15, v14}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v12, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 181
    const/16 v13, 0xc

    .line 183
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v14

    .line 187
    const-string/jumbo v15, "startService"

    .line 190
    move-object/from16 v16, v11

    .line 192
    const-string v11, "UNFREEZE_REASON_STARTSERVICE"

    .line 194
    invoke-direct {v12, v13, v14, v11, v15}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v13, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 199
    const/16 v11, 0xd

    .line 201
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v14

    .line 205
    const-string v15, "bindService"

    .line 207
    move-object/from16 v17, v12

    .line 209
    const-string v12, "UNFREEZE_REASON_BINDSERVICE"

    .line 211
    invoke-direct {v13, v11, v14, v12, v15}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 216
    const/16 v11, 0xe

    .line 218
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    move-result-object v12

    .line 222
    const-string v15, "activity"

    .line 224
    move-object/from16 v18, v13

    .line 226
    const-string v13, "UNFREEZE_REASON_ACTIVITY"

    .line 228
    invoke-direct {v14, v11, v12, v13, v15}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 233
    const/16 v11, 0xf

    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    move-result-object v12

    .line 239
    const-string/jumbo v13, "broadcast"

    .line 242
    move-object/from16 v19, v14

    .line 244
    const-string v14, "UNFREEZE_REASON_BROADCAST"

    .line 246
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 251
    const/16 v11, 0x10

    .line 253
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v12

    .line 257
    const-string/jumbo v13, "provider"

    .line 260
    move-object/from16 v20, v15

    .line 262
    const-string v15, "UNFREEZE_REASON_PROVIDER"

    .line 264
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 269
    const/16 v11, 0x11

    .line 271
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    move-result-object v12

    .line 275
    const-string/jumbo v13, "unbindService"

    .line 278
    move-object/from16 v21, v14

    .line 280
    const-string v14, "UNFREEZE_REASON_UNBINDSERVICE"

    .line 282
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 287
    const/16 v11, 0x12

    .line 289
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    move-result-object v12

    .line 293
    const-string/jumbo v13, "startProcess"

    .line 296
    move-object/from16 v22, v15

    .line 298
    const-string v15, "UNFREEZE_REASON_STARTPROCESS"

    .line 300
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 305
    const/16 v11, 0x13

    .line 307
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    move-result-object v12

    .line 311
    const-string v13, "ServiceANR"

    .line 313
    move-object/from16 v23, v14

    .line 315
    const-string v14, "UNFREEZE_REASON_SERVICEANR"

    .line 317
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 322
    const/16 v11, 0x14

    .line 324
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    move-result-object v12

    .line 328
    const-string v13, "Signal"

    .line 330
    move-object/from16 v24, v15

    .line 332
    const-string v15, "UNFREEZE_REASON_SIGNAL"

    .line 334
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 339
    const/16 v11, 0x15

    .line 341
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    move-result-object v12

    .line 345
    const-string v13, "Cfb"

    .line 347
    move-object/from16 v25, v14

    .line 349
    const-string v14, "UNFREEZE_REASON_CFB"

    .line 351
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 356
    const/16 v11, 0x16

    .line 358
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    move-result-object v12

    .line 362
    const-string/jumbo v13, "procstate"

    .line 365
    move-object/from16 v26, v15

    .line 367
    const-string v15, "UNFREEZE_REASON_PROC_STATE"

    .line 369
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 374
    const/16 v11, 0x17

    .line 376
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    move-result-object v12

    .line 380
    const-string v13, "OLAF:"

    .line 382
    move-object/from16 v27, v14

    .line 384
    const-string v14, "UNFREEZE_REASON_OLAF"

    .line 386
    invoke-direct {v15, v11, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 391
    const/16 v11, 0x18

    .line 393
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    move-result-object v12

    .line 397
    const-string v13, "None"

    .line 399
    move-object/from16 v28, v15

    .line 401
    const-string v15, "UNFREEZE_REASON_NONE"

    .line 403
    invoke-direct {v14, v11, v12, v15, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sput-object v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 408
    move-object/from16 v11, v16

    .line 410
    move-object/from16 v12, v17

    .line 412
    move-object/from16 v13, v18

    .line 414
    move-object/from16 v16, v21

    .line 416
    move-object/from16 v18, v23

    .line 418
    move-object/from16 v21, v25

    .line 420
    move-object/from16 v23, v27

    .line 422
    move-object/from16 v25, v14

    .line 424
    move-object/from16 v14, v19

    .line 426
    move-object/from16 v17, v22

    .line 428
    move-object/from16 v19, v24

    .line 430
    move-object/from16 v22, v26

    .line 432
    move-object/from16 v24, v28

    .line 434
    move-object/from16 v15, v20

    .line 436
    move-object/from16 v20, v21

    .line 438
    move-object/from16 v21, v22

    .line 440
    move-object/from16 v22, v23

    .line 442
    move-object/from16 v23, v24

    .line 444
    move-object/from16 v24, v25

    .line 446
    filled-new-array/range {v0 .. v24}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 449
    move-result-object v0

    .line 450
    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 452
    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    .line 10
    iput-object p4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->unfreezeType:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 3
    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 15
    move-result-object v1

    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    aget-object v4, v1, v3

    .line 22
    iget-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->unfreezeType:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 30
    return-object v4

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

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

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTypeNum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    .line 3
    return p0
.end method
