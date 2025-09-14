.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$1:I

    .line 10
    .line 11
    move-object/from16 v2, p1

    .line 12
    .line 13
    check-cast v2, Landroid/os/RemoteCallback;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "TASK_ID"

    .line 24
    .line 25
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v2, "ActivityTaskManager"

    .line 34
    .line 35
    const-string/jumbo v3, "notifyDedicatedState : "

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$1:I

    .line 51
    .line 52
    move-object/from16 v2, p1

    .line 53
    .line 54
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 57
    .line 58
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 59
    .line 60
    const-string v2, "Applock Activity record "

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-boolean v5, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 67
    .line 68
    const-string v9, "ActivityTaskManager"

    .line 69
    .line 70
    if-eqz v5, :cond_10

    .line 71
    .line 72
    iget-boolean v5, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 73
    .line 74
    if-eqz v5, :cond_0

    .line 75
    .line 76
    goto/16 :goto_8

    .line 77
    .line 78
    :cond_0
    const-string v5, "keyguardGoingAway"

    .line 79
    .line 80
    const-wide/16 v10, 0x20

    .line 81
    .line 82
    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v6, "keyguardGoingAway d"

    .line 88
    .line 89
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, ", fl=0x"

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    and-int/lit16 v5, v0, 0x100

    .line 115
    .line 116
    const/4 v12, 0x1

    .line 117
    const/4 v13, 0x0

    .line 118
    if-nez v5, :cond_1

    .line 119
    .line 120
    move v5, v13

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    move v5, v12

    .line 123
    :goto_1
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 124
    .line 125
    iget-object v14, v1, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 126
    .line 127
    if-eqz v6, :cond_2

    .line 128
    .line 129
    iget-object v6, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    :cond_2
    if-nez v3, :cond_3

    .line 135
    .line 136
    iput-boolean v5, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    .line 137
    .line 138
    :cond_3
    sget-boolean v6, Lcom/samsung/android/rune/InputRune;->PWM_FINGERPRINT_SIDE_TOUCH:Z

    .line 139
    .line 140
    if-eqz v6, :cond_7

    .line 141
    .line 142
    if-nez v5, :cond_4

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_4
    iget-object v7, v1, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 146
    .line 147
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 148
    .line 149
    if-eqz v6, :cond_5

    .line 150
    .line 151
    if-eqz v5, :cond_5

    .line 152
    .line 153
    move v5, v12

    .line 154
    goto :goto_2

    .line 155
    :cond_5
    move v5, v13

    .line 156
    :goto_2
    iget-object v6, v7, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v8, "UnlockFP triggered. isWakeAndUnlock="

    .line 164
    .line 165
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    const-string v8, "PhoneWindowManagerExt"

    .line 176
    .line 177
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    if-eqz v5, :cond_6

    .line 181
    .line 182
    iget-object v5, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 183
    .line 184
    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    .line 185
    .line 186
    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    iput-boolean v12, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 190
    .line 191
    iget-object v5, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 192
    .line 193
    const-wide/16 v10, 0x3e8

    .line 194
    .line 195
    invoke-virtual {v5, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    .line 197
    .line 198
    :cond_6
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    .line 199
    .line 200
    if-eqz v5, :cond_7

    .line 201
    .line 202
    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    .line 203
    .line 204
    .line 205
    :cond_7
    :goto_3
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 206
    .line 207
    .line 208
    iput-boolean v12, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 209
    .line 210
    :try_start_1
    iget-boolean v5, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 211
    .line 212
    iget-boolean v6, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 213
    .line 214
    iget-boolean v7, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 215
    .line 216
    const-string v8, "keyguardGoingAway"

    .line 217
    .line 218
    const/4 v10, 0x1

    .line 219
    move v4, v5

    .line 220
    move v5, v6

    .line 221
    move v6, v10

    .line 222
    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIIILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    and-int/lit8 v3, v0, 0x1

    .line 226
    .line 227
    if-eqz v3, :cond_8

    .line 228
    .line 229
    const/16 v3, 0x101

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_8
    const/16 v3, 0x100

    .line 233
    .line 234
    :goto_4
    and-int/lit8 v4, v0, 0x2

    .line 235
    .line 236
    if-eqz v4, :cond_9

    .line 237
    .line 238
    or-int/lit8 v3, v3, 0x2

    .line 239
    .line 240
    :cond_9
    and-int/lit8 v4, v0, 0x4

    .line 241
    .line 242
    if-eqz v4, :cond_a

    .line 243
    .line 244
    or-int/lit8 v3, v3, 0x4

    .line 245
    .line 246
    :cond_a
    and-int/lit8 v4, v0, 0x8

    .line 247
    .line 248
    if-eqz v4, :cond_b

    .line 249
    .line 250
    or-int/lit8 v3, v3, 0x8

    .line 251
    .line 252
    :cond_b
    and-int/lit8 v0, v0, 0x10

    .line 253
    .line 254
    if-eqz v0, :cond_c

    .line 255
    .line 256
    or-int/lit16 v3, v3, 0x200

    .line 257
    .line 258
    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 259
    .line 260
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 261
    .line 262
    const/4 v4, 0x7

    .line 263
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 264
    .line 265
    .line 266
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 267
    .line 268
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 269
    .line 270
    iget-object v4, v4, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 271
    .line 272
    const/4 v5, 0x0

    .line 273
    const/4 v6, 0x4

    .line 274
    invoke-virtual {v4, v6, v3, v5, v0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 278
    .line 279
    .line 280
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 283
    .line 284
    .line 285
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 288
    .line 289
    .line 290
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    new-instance v3, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .line 299
    .line 300
    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;

    .line 301
    .line 302
    const/4 v5, 0x1

    .line 303
    invoke-direct {v4, v0, v3, v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 307
    .line 308
    .line 309
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 310
    .line 311
    if-eqz v0, :cond_f

    .line 312
    .line 313
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 314
    .line 315
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 316
    .line 317
    invoke-virtual {v0, v12, v12}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    if-eqz v0, :cond_f

    .line 322
    .line 323
    invoke-virtual {v0, v13, v12}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-eqz v0, :cond_f

    .line 328
    .line 329
    iget-object v3, v1, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 330
    .line 331
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 332
    .line 333
    if-ne v3, v0, :cond_d

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_d
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-nez v3, :cond_e

    .line 343
    .line 344
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 345
    .line 346
    if-eqz v3, :cond_f

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :catchall_0
    move-exception v0

    .line 350
    goto :goto_7

    .line 351
    :cond_e
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    iget-object v2, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 367
    .line 368
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->startAppLockActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 369
    .line 370
    .line 371
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 372
    .line 373
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    .line 375
    .line 376
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 377
    .line 378
    .line 379
    const-wide/16 v1, 0x20

    .line 380
    .line 381
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 382
    .line 383
    .line 384
    goto :goto_9

    .line 385
    :goto_7
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 386
    .line 387
    .line 388
    const-wide/16 v1, 0x20

    .line 389
    .line 390
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 391
    .line 392
    .line 393
    throw v0

    .line 394
    :cond_10
    :goto_8
    const-string v1, "keyguardGoingAway returned, d="

    .line 395
    .line 396
    const-string v2, ", flags=0x"

    .line 397
    .line 398
    invoke-static {v3, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    const-string v2, ", mKeyguardShowing="

    .line 403
    .line 404
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-boolean v0, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 408
    .line 409
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v0, ", mKeyguardGoingAway="

    .line 413
    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-boolean v0, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 418
    .line 419
    invoke-static {v9, v1, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 420
    .line 421
    .line 422
    :goto_9
    return-void

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
