.class public final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActualBacklight:F

.field public mActualSdrBacklight:F

.field public mActualState:I

.field public mBacklightChangeInProgress:Z

.field public final mLock:Ljava/lang/Object;

.field public mPendingBacklight:F

.field public mPendingSdrBacklight:F

.field public mPendingState:I

.field public mStateChangeInProgress:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 3
    const-string p1, "PhotonicModulator"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 18
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 20
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    .line 22
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    .line 24
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 26
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    .line 28
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    .line 30
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    :goto_0
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 8
    iget v3, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eq v2, v3, :cond_0

    .line 14
    move v3, v4

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move v3, v5

    .line 17
    :goto_1
    iget v6, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    .line 19
    iget v7, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    .line 21
    iget v8, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    .line 23
    cmpl-float v8, v6, v8

    .line 25
    if-nez v8, :cond_2

    .line 27
    iget v8, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    .line 29
    cmpl-float v8, v7, v8

    .line 31
    if-eqz v8, :cond_1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    move v8, v5

    .line 35
    goto :goto_3

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_11

    .line 39
    :cond_2
    :goto_2
    move v8, v4

    .line 40
    :goto_3
    if-nez v3, :cond_3

    .line 42
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 44
    iget-object v10, v9, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 46
    iget-object v9, v9, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

    .line 48
    invoke-virtual {v10, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 56
    :cond_3
    if-nez v8, :cond_4

    .line 58
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 60
    :cond_4
    if-eqz v2, :cond_5

    .line 62
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_5

    .line 68
    move v9, v4

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    move v9, v5

    .line 71
    :goto_4
    if-nez v3, :cond_7

    .line 73
    if-eqz v8, :cond_6

    .line 75
    goto :goto_5

    .line 76
    :cond_6
    move v3, v5

    .line 77
    goto :goto_6

    .line 78
    :cond_7
    :goto_5
    move v3, v4

    .line 79
    :goto_6
    if-eqz v9, :cond_8

    .line 81
    if-nez v3, :cond_9

    .line 83
    :cond_8
    move v2, v5

    .line 84
    goto/16 :goto_f

    .line 86
    :cond_9
    iput v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 88
    iput v6, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    .line 90
    iput v7, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 95
    if-eqz v1, :cond_a

    .line 97
    const-string v1, "DisplayPowerState"

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    const-string v8, "Updating screen state: id="

    .line 103
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 108
    iget v8, v8, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    .line 110
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v8, ", state="

    .line 115
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v8, ", backlight="

    .line 127
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    const-string v8, ", sdrBacklight="

    .line 135
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_a
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 150
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 152
    iget v1, v1, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    .line 154
    check-cast v3, Lcom/android/server/display/DisplayManagerService$1;

    .line 156
    monitor-enter v3

    .line 157
    :try_start_1
    iget-object v8, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 159
    iget-object v8, v8, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    .line 161
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 162
    :try_start_2
    iget-object v9, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 164
    iget-object v9, v9, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 166
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 167
    :try_start_3
    iget-object v10, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 169
    iget-object v10, v10, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 171
    invoke-virtual {v10, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 174
    move-result v10

    .line 175
    const/4 v11, -0x1

    .line 176
    if-le v10, v11, :cond_12

    .line 178
    iget-object v11, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 180
    iget-object v11, v11, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 182
    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 185
    move-result v11

    .line 186
    if-eq v2, v11, :cond_b

    .line 188
    move v11, v4

    .line 189
    goto :goto_7

    .line 190
    :cond_b
    move v11, v5

    .line 191
    :goto_7
    if-eqz v11, :cond_10

    .line 193
    iget-object v12, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 195
    iget-object v12, v12, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 197
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    .line 200
    move-result v12

    .line 201
    move v14, v4

    .line 202
    move v15, v14

    .line 203
    move v13, v5

    .line 204
    :goto_8
    if-ge v13, v12, :cond_11

    .line 206
    if-ne v13, v10, :cond_c

    .line 208
    move v5, v2

    .line 209
    goto :goto_9

    .line 210
    :cond_c
    iget-object v5, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 212
    iget-object v5, v5, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 214
    invoke-virtual {v5, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 217
    move-result v5

    .line 218
    :goto_9
    if-eq v5, v4, :cond_d

    .line 220
    const/4 v14, 0x0

    .line 221
    :cond_d
    invoke-static {v5}, Landroid/view/Display;->isActiveState(I)Z

    .line 224
    move-result v5

    .line 225
    if-eqz v5, :cond_e

    .line 227
    const/4 v15, 0x0

    .line 228
    :cond_e
    if-nez v14, :cond_f

    .line 230
    if-nez v15, :cond_f

    .line 232
    goto :goto_a

    .line 233
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 235
    const/4 v5, 0x0

    .line 236
    goto :goto_8

    .line 237
    :catchall_1
    move-exception v0

    .line 238
    goto :goto_d

    .line 239
    :cond_10
    move v14, v4

    .line 240
    move v15, v14

    .line 241
    :cond_11
    :goto_a
    move v5, v11

    .line 242
    goto :goto_b

    .line 243
    :cond_12
    move v14, v4

    .line 244
    move v15, v14

    .line 245
    const/4 v5, 0x0

    .line 246
    :goto_b
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    if-ne v2, v4, :cond_13

    .line 249
    :try_start_4
    iget-object v9, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 251
    invoke-static {v9, v1, v2, v6, v7}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V

    .line 254
    goto :goto_c

    .line 255
    :catchall_2
    move-exception v0

    .line 256
    goto :goto_e

    .line 257
    :cond_13
    :goto_c
    if-eqz v5, :cond_14

    .line 259
    iget-object v9, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 261
    iget-object v9, v9, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 263
    invoke-interface {v9, v15, v14}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(ZZ)V

    .line 266
    :cond_14
    if-nez v1, :cond_15

    .line 268
    if-eqz v5, :cond_15

    .line 270
    iget-object v5, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 272
    iget-object v5, v5, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 274
    invoke-interface {v5, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDefaultDisplayStateChange(I)V

    .line 277
    :cond_15
    if-eq v2, v4, :cond_16

    .line 279
    iget-object v5, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 281
    invoke-static {v5, v1, v2, v6, v7}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V

    .line 284
    :cond_16
    if-eqz v1, :cond_17

    .line 286
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 288
    if-eqz v5, :cond_18

    .line 290
    if-ne v1, v4, :cond_18

    .line 292
    :cond_17
    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 294
    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 296
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 302
    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;

    .line 309
    invoke-direct {v4, v1, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 312
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 314
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 320
    move-result-wide v5

    .line 321
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 323
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 326
    :cond_18
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 327
    monitor-exit v3

    .line 328
    goto/16 :goto_0

    .line 330
    :goto_d
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 331
    :try_start_6
    throw v0

    .line 332
    :goto_e
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 333
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 334
    :catchall_3
    move-exception v0

    .line 335
    monitor-exit v3

    .line 336
    throw v0

    .line 337
    :goto_f
    :try_start_8
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 339
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 341
    :try_start_9
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 343
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 346
    goto :goto_10

    .line 347
    :catch_0
    :try_start_a
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 349
    iget-boolean v2, v2, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    .line 351
    if-eqz v2, :cond_19

    .line 353
    monitor-exit v1

    .line 354
    return-void

    .line 355
    :cond_19
    :goto_10
    monitor-exit v1

    .line 356
    goto/16 :goto_0

    .line 358
    :goto_11
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 359
    throw v0
.end method
