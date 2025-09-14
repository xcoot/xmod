.class public final Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final MAINLINE_API_LEVEL:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "34"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->MAINLINE_API_LEVEL:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "engmode_service"

    .line 5
    .line 6
    const-string v4, "engmode_service_time"

    .line 7
    .line 8
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 9
    .line 10
    sget v5, Lcom/android/server/sepunion/EngmodeService;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v5, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 16
    .line 17
    iget-object v6, v0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v5, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v5, v0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 23
    .line 24
    invoke-virtual {v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isTokenInstalled()I

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    if-ne v0, v2, :cond_f

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    move v0, v5

    .line 32
    :goto_0
    const/4 v6, 0x2

    .line 33
    if-ge v0, v6, :cond_e

    .line 34
    .line 35
    iget-object v7, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 36
    .line 37
    iget-boolean v7, v7, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    .line 38
    .line 39
    if-nez v7, :cond_e

    .line 40
    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v8, "("

    .line 44
    .line 45
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v8, v0, 0x1

    .line 49
    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, "/2)"

    .line 54
    .line 55
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :try_start_1
    const-string v0, "ENGTRQ0005"

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v7, 0xa

    .line 72
    .line 73
    new-array v9, v7, [B

    .line 74
    .line 75
    const-string v10, "ENGTRS0004"

    .line 76
    .line 77
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const-string v11, "ENGTRS0005"

    .line 82
    .line 83
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    new-array v12, v7, [B

    .line 88
    .line 89
    iget-object v13, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 90
    .line 91
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const-string/jumbo v14, "makeTimeReq() called"

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    new-instance v14, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 101
    .line 102
    iget-object v15, v13, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-direct {v14, v15}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    iput-object v14, v13, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 108
    .line 109
    invoke-virtual {v14}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->makeTimeReq()[B

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    if-nez v13, :cond_0

    .line 114
    .line 115
    const-string/jumbo v0, "makeTimeReq() failed"

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :catch_0
    move-exception v0

    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_0
    sget v14, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->MAINLINE_API_LEVEL:I

    .line 127
    .line 128
    const/16 v15, 0x23

    .line 129
    .line 130
    if-lt v14, v15, :cond_1

    .line 131
    .line 132
    invoke-static {v13, v5, v9, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v15, "TRQ Header : "

    .line 147
    .line 148
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    new-instance v15, Ljava/lang/String;

    .line 152
    .line 153
    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([B)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move v0, v2

    .line 167
    goto :goto_1

    .line 168
    :cond_1
    move v0, v5

    .line 169
    :goto_1
    new-instance v9, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    .line 170
    .line 171
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-static {v9, v13, v0}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->-$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[BI)[B

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    if-nez v9, :cond_2

    .line 179
    .line 180
    const-string v0, "No valid response from EMS server!)"

    .line 181
    .line 182
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto/16 :goto_5

    .line 186
    .line 187
    :cond_2
    iget-object v13, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 188
    .line 189
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    const-string/jumbo v15, "updateTimeReq() called"

    .line 193
    .line 194
    .line 195
    invoke-static {v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    new-instance v15, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 199
    .line 200
    iget-object v6, v13, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-direct {v15, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    iput-object v15, v13, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 206
    .line 207
    invoke-virtual {v15, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->updateTime([B)[B

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    if-nez v6, :cond_3

    .line 212
    .line 213
    const-string/jumbo v0, "updateTime() failed"

    .line 214
    .line 215
    .line 216
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_3
    invoke-static {v9, v5, v12, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    .line 223
    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v9, "TRS Header : "

    .line 230
    .line 231
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    new-instance v9, Ljava/lang/String;

    .line 235
    .line 236
    invoke-direct {v9, v12}, Ljava/lang/String;-><init>([B)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    invoke-static {v10, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 250
    .line 251
    .line 252
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    const-string v9, "RTD response is invalid"

    .line 254
    .line 255
    if-eqz v7, :cond_7

    .line 256
    .line 257
    :try_start_2
    aget-byte v7, v6, v5

    .line 258
    .line 259
    if-eqz v7, :cond_6

    .line 260
    .line 261
    if-eq v7, v2, :cond_4

    .line 262
    .line 263
    const/4 v10, 0x2

    .line 264
    if-eq v7, v10, :cond_c

    .line 265
    .line 266
    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_4
    const/16 v7, 0x5a

    .line 272
    .line 273
    new-array v9, v7, [B

    .line 274
    .line 275
    const/16 v10, 0x23

    .line 276
    .line 277
    if-lt v14, v10, :cond_5

    .line 278
    .line 279
    invoke-static {v6, v2, v9, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_5
    const/16 v10, 0x9

    .line 284
    .line 285
    invoke-static {v6, v10, v9, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    .line 287
    .line 288
    :goto_2
    new-instance v7, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    .line 289
    .line 290
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-static {v7, v9, v0}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->-$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[BI)[B

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_6
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 298
    .line 299
    iput-boolean v2, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_7
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_b

    .line 307
    .line 308
    aget-byte v0, v6, v5

    .line 309
    .line 310
    if-eqz v0, :cond_a

    .line 311
    .line 312
    const/4 v7, 0x4

    .line 313
    if-eq v0, v2, :cond_8

    .line 314
    .line 315
    const/4 v10, 0x2

    .line 316
    if-eq v0, v10, :cond_8

    .line 317
    .line 318
    if-eq v0, v7, :cond_8

    .line 319
    .line 320
    const/4 v10, 0x6

    .line 321
    if-eq v0, v10, :cond_8

    .line 322
    .line 323
    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_8
    array-length v0, v6

    .line 328
    sub-int/2addr v0, v7

    .line 329
    if-gez v0, :cond_9

    .line 330
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string v7, "RTD response len is invalid ("

    .line 337
    .line 338
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    array-length v6, v6

    .line 342
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v6, ")"

    .line 346
    .line 347
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_9
    array-length v0, v6

    .line 359
    sub-int/2addr v0, v7

    .line 360
    new-array v9, v0, [B

    .line 361
    .line 362
    invoke-static {v6, v7, v9, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    .line 364
    .line 365
    new-instance v0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    .line 366
    .line 367
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 368
    .line 369
    .line 370
    const/4 v7, 0x2

    .line 371
    invoke-static {v0, v9, v7}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->-$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[BI)[B

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_a
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 376
    .line 377
    iput-boolean v2, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_b
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 381
    .line 382
    iput-boolean v2, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    .line 383
    .line 384
    :cond_c
    :goto_3
    invoke-static {v6, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 385
    .line 386
    .line 387
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 388
    .line 389
    iget-boolean v6, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    .line 390
    .line 391
    if-eqz v6, :cond_d

    .line 392
    .line 393
    iput-boolean v5, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    .line 394
    .line 395
    new-instance v6, Ljava/util/Timer;

    .line 396
    .line 397
    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 398
    .line 399
    .line 400
    iput-object v6, v0, Lcom/android/server/sepunion/EngmodeService;->mUpdateTimer:Ljava/util/Timer;

    .line 401
    .line 402
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/android/server/sepunion/EngmodeService;->mUpdateTimer:Ljava/util/Timer;

    .line 405
    .line 406
    new-instance v6, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;

    .line 407
    .line 408
    invoke-direct {v6, v1}, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;-><init>(Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;)V

    .line 409
    .line 410
    .line 411
    const-wide/32 v9, 0x112a880

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v6, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 415
    .line 416
    .line 417
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    new-instance v6, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 423
    .line 424
    iget-object v7, v0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 425
    .line 426
    invoke-direct {v6, v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 427
    .line 428
    .line 429
    iput-object v6, v0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 430
    .line 431
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 432
    .line 433
    iget-object v0, v0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 434
    .line 435
    const v6, 0xff0f

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    .line 440
    .line 441
    goto :goto_5

    .line 442
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    .line 444
    .line 445
    :cond_d
    :goto_5
    move v0, v8

    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :cond_e
    const-string v0, "end"

    .line 449
    .line 450
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    return-void

    .line 454
    :catch_1
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 456
    .line 457
    .line 458
    :cond_f
    const-string/jumbo v0, "no token, exit"

    .line 459
    .line 460
    .line 461
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    return-void
.end method
