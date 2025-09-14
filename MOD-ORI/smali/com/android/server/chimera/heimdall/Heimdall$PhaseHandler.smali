.class public final Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/Heimdall;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    const/16 v2, 0x800

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 14
    .line 15
    if-eq v0, v3, :cond_a

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    if-eq v0, v5, :cond_0

    .line 19
    .line 20
    goto/16 :goto_e

    .line 21
    .line 22
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 27
    .line 28
    iget-object v6, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v7, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/List;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_4

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 64
    .line 65
    iget-object v8, v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_1

    .line 72
    .line 73
    iget-boolean v0, v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->allowAlwaysRunning:Z

    .line 74
    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-boolean v0, v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    move v4, v5

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move v4, v3

    .line 85
    :catch_0
    :cond_4
    :goto_0
    if-eqz v4, :cond_7

    .line 86
    .line 87
    if-eq v4, v3, :cond_5

    .line 88
    .line 89
    goto/16 :goto_e

    .line 90
    .line 91
    :cond_5
    iget v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 92
    .line 93
    and-int/2addr v0, v5

    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    invoke-static {}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 101
    .line 102
    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 103
    .line 104
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->uid:I

    .line 105
    .line 106
    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    .line 107
    .line 108
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    iput-object p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 115
    .line 116
    iget p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 117
    .line 118
    or-int/2addr p1, v2

    .line 119
    iput p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 122
    .line 123
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 130
    .line 131
    .line 132
    iget-wide v0, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    .line 133
    .line 134
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    .line 136
    .line 137
    goto/16 :goto_e

    .line 138
    .line 139
    :cond_6
    return-void

    .line 140
    :cond_7
    iget v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 141
    .line 142
    and-int/2addr v0, v1

    .line 143
    if-eqz v0, :cond_9

    .line 144
    .line 145
    invoke-static {}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 150
    .line 151
    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 152
    .line 153
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->uid:I

    .line 154
    .line 155
    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    .line 156
    .line 157
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 162
    .line 163
    iput-object p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processStartPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_8

    .line 172
    .line 173
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sendBroadcast2Bartender(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 183
    .line 184
    .line 185
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->recycle()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_e

    .line 189
    .line 190
    :cond_9
    return-void

    .line 191
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    .line 199
    .line 200
    const/16 v5, 0x20

    .line 201
    .line 202
    if-lez v0, :cond_b

    .line 203
    .line 204
    sub-int/2addr v0, v3

    .line 205
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_b
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 209
    .line 210
    neg-int v6, v0

    .line 211
    and-int/2addr v6, v0

    .line 212
    if-ne v6, v1, :cond_c

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_c
    shr-int/lit8 v6, v6, 0x1

    .line 216
    .line 217
    :goto_1
    or-int/2addr v0, v6

    .line 218
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 219
    .line 220
    neg-int v6, v0

    .line 221
    and-int/2addr v0, v6

    .line 222
    if-ne v0, v5, :cond_d

    .line 223
    .line 224
    const/4 v0, 0x3

    .line 225
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_d
    iput v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    .line 229
    .line 230
    :goto_2
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    .line 231
    .line 232
    const/16 v6, 0x10

    .line 233
    .line 234
    const-wide/16 v7, 0x0

    .line 235
    .line 236
    if-lez v0, :cond_f

    .line 237
    .line 238
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 239
    .line 240
    neg-int v9, v0

    .line 241
    and-int/2addr v0, v9

    .line 242
    if-ne v0, v5, :cond_e

    .line 243
    .line 244
    const-wide/16 v7, 0x4e20

    .line 245
    .line 246
    iput-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_e
    iput-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_f
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 253
    .line 254
    neg-int v9, v0

    .line 255
    and-int/2addr v0, v9

    .line 256
    if-ne v0, v6, :cond_10

    .line 257
    .line 258
    const-wide/16 v7, 0x1388

    .line 259
    .line 260
    iput-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_10
    iput-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    .line 264
    .line 265
    :goto_3
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 266
    .line 267
    neg-int v7, v0

    .line 268
    and-int/2addr v0, v7

    .line 269
    iget-object v7, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 270
    .line 271
    if-eq v0, v1, :cond_1b

    .line 272
    .line 273
    const/16 v8, 0x8

    .line 274
    .line 275
    if-eq v0, v8, :cond_1a

    .line 276
    .line 277
    if-eq v0, v6, :cond_13

    .line 278
    .line 279
    if-eq v0, v5, :cond_12

    .line 280
    .line 281
    const/16 v2, 0x40

    .line 282
    .line 283
    if-eq v0, v2, :cond_11

    .line 284
    .line 285
    goto/16 :goto_c

    .line 286
    .line 287
    :cond_11
    invoke-virtual {v7, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processStartPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    goto/16 :goto_c

    .line 292
    .line 293
    :cond_12
    invoke-virtual {v7, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processScanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    goto/16 :goto_c

    .line 298
    .line 299
    :cond_13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 303
    .line 304
    and-int/2addr v0, v2

    .line 305
    if-ne v0, v2, :cond_14

    .line 306
    .line 307
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_14
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 311
    .line 312
    :goto_4
    iget v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    .line 313
    .line 314
    packed-switch v2, :pswitch_data_0

    .line 315
    .line 316
    .line 317
    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 318
    .line 319
    if-eqz v2, :cond_19

    .line 320
    .line 321
    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 322
    .line 323
    if-eqz v2, :cond_19

    .line 324
    .line 325
    const/4 v2, 0x0

    .line 326
    move v4, v2

    .line 327
    :goto_5
    if-ltz v4, :cond_19

    .line 328
    .line 329
    sget-object v5, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->sBgTrimPackages:[Ljava/lang/String;

    .line 330
    .line 331
    aget-object v5, v5, v4

    .line 332
    .line 333
    iget-object v6, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_18

    .line 340
    .line 341
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 342
    .line 343
    iget-object v5, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 344
    .line 345
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 346
    .line 347
    const-string/jumbo v4, "heimdall"

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    const-string v6, "Schedule BG Trim to "

    .line 354
    .line 355
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 356
    .line 357
    .line 358
    monitor-enter v5

    .line 359
    :try_start_1
    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 360
    .line 361
    iget-object v7, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 362
    .line 363
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    check-cast v7, Landroid/util/SparseArray;

    .line 372
    .line 373
    if-eqz v7, :cond_15

    .line 374
    .line 375
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    if-lez v8, :cond_15

    .line 380
    .line 381
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 386
    .line 387
    goto :goto_6

    .line 388
    :catchall_0
    move-exception p0

    .line 389
    goto :goto_7

    .line 390
    :cond_15
    const/4 v2, 0x0

    .line 391
    :goto_6
    if-nez v2, :cond_16

    .line 392
    .line 393
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 395
    .line 396
    .line 397
    goto :goto_8

    .line 398
    :cond_16
    :try_start_2
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    .line 400
    if-eqz v2, :cond_17

    .line 401
    .line 402
    const/16 v7, 0x28

    .line 403
    .line 404
    :try_start_3
    invoke-interface {v2, v7}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 405
    .line 406
    .line 407
    const-string v2, "ActivityManager"

    .line 408
    .line 409
    new-instance v7, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v0, " for "

    .line 418
    .line 419
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 430
    .line 431
    .line 432
    :catch_1
    :cond_17
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 433
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 434
    .line 435
    .line 436
    goto :goto_8

    .line 437
    :goto_7
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 438
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 439
    .line 440
    .line 441
    throw p0

    .line 442
    :cond_18
    add-int/lit8 v4, v4, -0x1

    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_19
    :goto_8
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v2, "Garbage Collection is performed to "

    .line 448
    .line 449
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 467
    .line 468
    const/16 v2, 0xa

    .line 469
    .line 470
    invoke-static {v0, v2}, Landroid/os/Process;->sendSignal(II)V

    .line 471
    .line 472
    .line 473
    :goto_9
    move v4, v3

    .line 474
    goto/16 :goto_c

    .line 475
    .line 476
    :cond_1a
    invoke-virtual {v7, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processScanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    goto/16 :goto_c

    .line 481
    .line 482
    :cond_1b
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 483
    .line 484
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    if-eqz v5, :cond_21

    .line 497
    .line 498
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 503
    .line 504
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 505
    .line 506
    iget-object v8, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eqz v6, :cond_1c

    .line 513
    .line 514
    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 515
    .line 516
    iget v6, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 517
    .line 518
    if-ne v5, v6, :cond_1c

    .line 519
    .line 520
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 521
    .line 522
    and-int/2addr v0, v2

    .line 523
    if-ne v0, v2, :cond_1d

    .line 524
    .line 525
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_1d
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 529
    .line 530
    :goto_a
    iget v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    .line 531
    .line 532
    packed-switch v2, :pswitch_data_1

    .line 533
    .line 534
    .line 535
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 536
    .line 537
    .line 538
    move-result-wide v4

    .line 539
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 540
    .line 541
    mul-double/2addr v4, v6

    .line 542
    sget v2, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    .line 543
    .line 544
    int-to-double v6, v2

    .line 545
    const-wide v8, 0x3fb999999999999aL    # 0.1

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    mul-double/2addr v6, v8

    .line 551
    cmpl-double v2, v4, v6

    .line 552
    .line 553
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 554
    .line 555
    if-lez v2, :cond_1e

    .line 556
    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v4, "Block report by RandomSampleRate: "

    .line 560
    .line 561
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-static {v2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 579
    .line 580
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 581
    .line 582
    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 583
    .line 584
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    goto :goto_9

    .line 588
    :cond_1e
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 589
    .line 590
    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 591
    .line 592
    .line 593
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 594
    .line 595
    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->reportDumpFile(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 596
    .line 597
    .line 598
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    .line 599
    .line 600
    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->kill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 601
    .line 602
    .line 603
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 604
    .line 605
    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sendBroadcast2Bartender(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 606
    .line 607
    .line 608
    goto/16 :goto_9

    .line 609
    .line 610
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 611
    .line 612
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 613
    .line 614
    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 615
    .line 616
    .line 617
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 618
    .line 619
    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->reportDumpFile(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 620
    .line 621
    .line 622
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    .line 623
    .line 624
    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->kill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 625
    .line 626
    .line 627
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 628
    .line 629
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    iget-object v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 633
    .line 634
    iget-object v5, v2, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 635
    .line 636
    const/4 v6, 0x0

    .line 637
    const-string/jumbo v7, "unknown"

    .line 638
    .line 639
    .line 640
    if-eqz v5, :cond_1f

    .line 641
    .line 642
    :try_start_6
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    if-eqz v4, :cond_1f

    .line 647
    .line 648
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .line 649
    .line 650
    goto :goto_b

    .line 651
    :catch_2
    move-exception v4

    .line 652
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-static {v4}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    :cond_1f
    :goto_b
    iput-object v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppVersionName:Ljava/lang/String;

    .line 660
    .line 661
    new-instance v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;

    .line 662
    .line 663
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 664
    .line 665
    .line 666
    iget-object v5, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 667
    .line 668
    iput-object v5, v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->packageName:Ljava/lang/String;

    .line 669
    .line 670
    iput-object v7, v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->versionName:Ljava/lang/String;

    .line 671
    .line 672
    iget v5, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    .line 673
    .line 674
    iput v5, v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->memoryUsage:I

    .line 675
    .line 676
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    iput v5, v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->specKillCnt:I

    .line 681
    .line 682
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 683
    .line 684
    .line 685
    move-result v5

    .line 686
    iput v5, v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->globalKillCnt:I

    .line 687
    .line 688
    iget-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    .line 689
    .line 690
    const-wide/16 v9, 0x0

    .line 691
    .line 692
    cmp-long v5, v7, v9

    .line 693
    .line 694
    if-lez v5, :cond_20

    .line 695
    .line 696
    const/4 v6, 0x1

    .line 697
    :cond_20
    iput v6, v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->realKillCnt:I

    .line 698
    .line 699
    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mBigdataManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;

    .line 700
    .line 701
    invoke-virtual {v2, v4}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->addBigdataInfoList(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)V

    .line 702
    .line 703
    .line 704
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 705
    .line 706
    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sendBroadcast2Bartender(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 707
    .line 708
    .line 709
    goto/16 :goto_9

    .line 710
    .line 711
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    const-string v2, "Pid and Process name doesn\'t match. "

    .line 714
    .line 715
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 733
    .line 734
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 735
    .line 736
    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 737
    .line 738
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    :goto_c
    if-eqz v4, :cond_23

    .line 742
    .line 743
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 744
    .line 745
    neg-int v2, v0

    .line 746
    and-int/2addr v0, v2

    .line 747
    if-ne v0, v1, :cond_22

    .line 748
    .line 749
    goto :goto_d

    .line 750
    :cond_22
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 751
    .line 752
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 757
    .line 758
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 759
    .line 760
    .line 761
    iget-wide v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    .line 762
    .line 763
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 764
    .line 765
    .line 766
    goto :goto_e

    .line 767
    :cond_23
    :goto_d
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->recycle()V

    .line 768
    .line 769
    .line 770
    :goto_e
    return-void

    .line 771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
