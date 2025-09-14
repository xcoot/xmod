.class public final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p1, Landroid/os/Message;->what:I

    .line 5
    const/16 v3, 0x19

    .line 7
    if-eq v2, v3, :cond_8

    .line 9
    const/16 v3, 0x1c

    .line 11
    if-eq v2, v3, :cond_7

    .line 13
    const/16 v3, 0x1e

    .line 15
    if-eq v2, v3, :cond_6

    .line 17
    const/16 v3, 0x1f

    .line 19
    if-eq v2, v3, :cond_5

    .line 21
    packed-switch v2, :pswitch_data_0

    .line 24
    packed-switch v2, :pswitch_data_1

    .line 27
    goto/16 :goto_9

    .line 29
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 31
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 33
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayVolumeKeyEvent(Lcom/android/server/display/DisplayManagerService;I)V

    .line 36
    goto/16 :goto_9

    .line 38
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 40
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1, p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayVolumeEvent(ILandroid/os/Bundle;Lcom/android/server/display/DisplayManagerService;)V

    .line 49
    goto/16 :goto_9

    .line 51
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 53
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 55
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 61
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverPresentationDisplayInfoEvent(Lcom/android/server/display/DisplayManagerService;IILjava/lang/String;)V

    .line 64
    goto/16 :goto_9

    .line 66
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 68
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 71
    move-result-object v0

    .line 72
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 74
    invoke-static {p1, v0, p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDeviceEvent(ILandroid/os/Bundle;Lcom/android/server/display/DisplayManagerService;)V

    .line 77
    goto/16 :goto_9

    .line 79
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 81
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 83
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->onDisplayManagerReceivedDeviceState(I)V

    .line 88
    goto/16 :goto_9

    .line 90
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 92
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 94
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    const-string v3, "Delivering display group event: groupId="

    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v3, ", event="

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    const-string v3, "DisplayManagerService"

    .line 123
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eq p1, v1, :cond_2

    .line 128
    const/4 v1, 0x2

    .line 129
    if-eq p1, v1, :cond_1

    .line 131
    const/4 v1, 0x3

    .line 132
    if-eq p1, v1, :cond_0

    .line 134
    goto/16 :goto_9

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 138
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 141
    move-result-object p0

    .line 142
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_c

    .line 148
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 154
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupRemoved(I)V

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 160
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object p0

    .line 164
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_c

    .line 170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 176
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupChanged(I)V

    .line 179
    goto :goto_1

    .line 180
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 182
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    move-result-object p0

    .line 186
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_c

    .line 192
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 198
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupAdded(I)V

    .line 201
    goto :goto_2

    .line 202
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 204
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 206
    monitor-enter v0

    .line 207
    :try_start_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 209
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 211
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 213
    invoke-virtual {v3, v2, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 216
    move-result-object v1

    .line 217
    if-nez v1, :cond_3

    .line 219
    monitor-exit v0

    .line 220
    goto/16 :goto_9

    .line 222
    :catchall_0
    move-exception p0

    .line 223
    goto :goto_3

    .line 224
    :cond_3
    iget-object v2, v1, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 226
    new-instance v3, Landroid/util/ArraySet;

    .line 228
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 231
    iput-object v3, v1, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 236
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 238
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 240
    invoke-static {p0, v0, v2, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;I)V

    .line 243
    goto/16 :goto_9

    .line 245
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    throw p0

    .line 247
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 249
    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mloadBrightnessConfigurations(Lcom/android/server/display/DisplayManagerService;)V

    .line 252
    goto/16 :goto_9

    .line 254
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 256
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 258
    monitor-enter p1

    .line 259
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 261
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 263
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 268
    move-result v0

    .line 269
    xor-int/2addr v0, v1

    .line 270
    if-eqz v0, :cond_4

    .line 272
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 274
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 279
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 281
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 286
    move-result-object v1

    .line 287
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_4

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 299
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 301
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v2}, Landroid/hardware/display/DisplayViewport;->makeCopy()Landroid/hardware/display/DisplayViewport;

    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    goto :goto_4

    .line 311
    :catchall_1
    move-exception p0

    .line 312
    goto :goto_5

    .line 313
    :cond_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 314
    if-eqz v0, :cond_c

    .line 316
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 318
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 320
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 327
    iget-object p1, p1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 329
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/List;)V

    .line 332
    goto/16 :goto_9

    .line 334
    :goto_5
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    throw p0

    .line 336
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 338
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 340
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    .line 343
    goto/16 :goto_9

    .line 345
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 347
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 349
    const/4 v1, 0x0

    .line 350
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 352
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;I)V

    .line 355
    goto/16 :goto_9

    .line 357
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 359
    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterAdditionalDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V

    .line 362
    goto/16 :goto_9

    .line 364
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 366
    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterDefaultDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V

    .line 369
    goto/16 :goto_9

    .line 371
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 373
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 375
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 377
    monitor-enter v2

    .line 378
    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 380
    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;

    .line 382
    invoke-direct {v4, p0, p1, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/DisplayManagerService;II)V

    .line 385
    invoke-virtual {v3, v4, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 388
    monitor-exit v2

    .line 389
    goto/16 :goto_9

    .line 391
    :catchall_2
    move-exception p0

    .line 392
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 393
    throw p0

    .line 394
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 396
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 398
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->updateMirroredSurface(I)V

    .line 403
    goto/16 :goto_9

    .line 405
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 407
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 409
    goto/16 :goto_9

    .line 411
    :cond_8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 413
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 415
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    check-cast p1, Ljava/util/List;

    .line 419
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 421
    if-eqz v3, :cond_9

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    const-string v3, "DisplayManagerService"

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    .line 430
    const-string v5, "Delivering wifidisplay parameter event="

    .line 432
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    move-result-object v4

    .line 442
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_9
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 447
    monitor-enter v3

    .line 448
    :try_start_5
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 450
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 453
    move-result v4

    .line 454
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 459
    move v5, v0

    .line 460
    :goto_6
    if-ge v5, v4, :cond_a

    .line 462
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 464
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 466
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 469
    move-result-object v7

    .line 470
    check-cast v7, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 472
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/2addr v5, v1

    .line 476
    goto :goto_6

    .line 477
    :catchall_3
    move-exception p0

    .line 478
    goto :goto_a

    .line 479
    :cond_a
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 480
    :goto_7
    if-ge v0, v4, :cond_b

    .line 482
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 484
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 487
    move-result-object v3

    .line 488
    check-cast v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 490
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    :try_start_6
    iget-object v5, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 495
    invoke-interface {v5, v2, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onWifiDisplayParameterEvent(ILjava/util/List;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 498
    goto :goto_8

    .line 499
    :catch_0
    move-exception v5

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    .line 502
    const-string v7, "Failed to notify process "

    .line 504
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    iget v7, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 509
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    const-string v7, " that displays changed, assuming it died."

    .line 514
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    move-result-object v6

    .line 521
    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 527
    :goto_8
    add-int/2addr v0, v1

    .line 528
    goto :goto_7

    .line 529
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 531
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 534
    :cond_c
    :goto_9
    return-void

    .line 535
    :goto_a
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 536
    throw p0

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 559
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
