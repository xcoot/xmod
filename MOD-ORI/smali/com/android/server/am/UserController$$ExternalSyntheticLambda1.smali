.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/am/UserState;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 8
    .line 9
    iput-boolean p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 9
    .line 10
    iget v2, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 20
    .line 21
    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v6, "finishUserStopped-"

    .line 27
    .line 28
    .line 29
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "-[stopUser]"

    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v4, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_0
    iget-object v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 55
    .line 56
    iget v7, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 57
    .line 58
    iget-object v8, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 59
    .line 60
    iget-boolean v9, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 61
    .line 62
    iget-object v0, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    move-object v5, v1

    .line 68
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 76
    .line 77
    iget v10, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 78
    .line 79
    iget-object v14, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 80
    .line 81
    iget-boolean v15, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 87
    .line 88
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v3, "finishUserStopping-"

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, "-[stopUser]"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/16 v2, 0x7579

    .line 115
    .line 116
    invoke-static {v2, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .line 117
    .line 118
    .line 119
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v2

    .line 122
    :try_start_0
    iget v3, v14, Lcom/android/server/am/UserState;->state:I

    .line 123
    .line 124
    const/4 v4, 0x4

    .line 125
    const/4 v5, 0x5

    .line 126
    if-eq v3, v4, :cond_1

    .line 127
    .line 128
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 135
    .line 136
    invoke-virtual {v1, v10}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const/4 v6, 0x3

    .line 141
    const/4 v7, -0x1

    .line 142
    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_0

    .line 147
    .line 148
    iget-object v1, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 149
    .line 150
    const/16 v4, 0xc8

    .line 151
    .line 152
    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 166
    .line 167
    invoke-virtual {v1, v10}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const/4 v4, 0x0

    .line 172
    invoke-virtual {v3, v7, v1, v5, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 173
    .line 174
    .line 175
    :goto_0
    monitor-exit v2

    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_1
    invoke-virtual {v14, v5}, Lcom/android/server/am/UserState;->setState(I)V

    .line 179
    .line 180
    .line 181
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 183
    .line 184
    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string/jumbo v4, "setUserState-STATE_SHUTDOWN-"

    .line 190
    .line 191
    .line 192
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v4, "-[stopUser]"

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    .line 217
    .line 218
    invoke-virtual {v3, v10, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 222
    .line 223
    .line 224
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 225
    .line 226
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 231
    .line 232
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 233
    .line 234
    const/16 v4, 0x4007

    .line 235
    .line 236
    invoke-virtual {v2, v4, v3, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 240
    .line 241
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 242
    .line 243
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    const/16 v3, 0x7586

    .line 249
    .line 250
    invoke-static {v3, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .line 251
    .line 252
    .line 253
    const-string v3, "Stop"

    .line 254
    .line 255
    invoke-virtual {v2, v10, v3}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 259
    .line 260
    const/16 v16, 0x2

    .line 261
    .line 262
    move-object v11, v2

    .line 263
    move-object v12, v1

    .line 264
    move v13, v10

    .line 265
    invoke-direct/range {v11 .. v16}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    .line 266
    .line 267
    .line 268
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 269
    .line 270
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3, v10}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_2

    .line 279
    .line 280
    invoke-virtual {v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->run()V

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .line 285
    .line 286
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    .line 287
    .line 288
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance v4, Lcom/android/server/am/UserController$5;

    .line 292
    .line 293
    const/4 v5, 0x0

    .line 294
    invoke-direct {v4, v10, v2, v5}, Lcom/android/server/am/UserController$5;-><init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;B)V

    .line 295
    .line 296
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string/jumbo v5, "broadcast-ACTION_SHUTDOWN-"

    .line 300
    .line 301
    .line 302
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v5, "-[stopUser]"

    .line 309
    .line 310
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-static {v10, v2}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 321
    .line 322
    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 323
    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 325
    .line 326
    .line 327
    move-result v8

    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    const/4 v5, 0x0

    .line 333
    const/4 v6, 0x0

    .line 334
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 335
    .line 336
    .line 337
    :goto_1
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    throw v0

    .line 343
    :pswitch_2
    iget-object v4, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    .line 344
    .line 345
    iget v5, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    .line 346
    .line 347
    iget-object v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    .line 348
    .line 349
    iget-boolean v7, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    .line 350
    .line 351
    iget-object v0, v4, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 352
    .line 353
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 354
    .line 355
    const/4 v8, 0x1

    .line 356
    move-object v3, v1

    .line 357
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
