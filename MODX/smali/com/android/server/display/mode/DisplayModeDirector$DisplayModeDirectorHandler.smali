.class public final Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

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
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_5

    .line 10
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 12
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 14
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 16
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 18
    if-eq p1, v0, :cond_5

    .line 20
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 22
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->copyKeys()[I

    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_5

    .line 30
    array-length v0, p1

    .line 31
    :goto_0
    if-ge v2, v0, :cond_5

    .line 33
    aget v1, p1, v2

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 43
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 45
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 47
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 49
    if-eq p1, v0, :cond_5

    .line 51
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 53
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 55
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->copyKeys()[I

    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_5

    .line 61
    array-length v0, p1

    .line 62
    :goto_1
    if-ge v2, v0, :cond_5

    .line 64
    aget v1, p1, v2

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    check-cast p1, Landroid/util/Pair;

    .line 76
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 78
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 80
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    check-cast v0, [F

    .line 84
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 86
    check-cast p1, [F

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    if-eqz v0, :cond_0

    .line 93
    if-eqz p1, :cond_0

    .line 95
    array-length v1, v0

    .line 96
    array-length v2, p1

    .line 97
    if-ne v1, v2, :cond_0

    .line 99
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 101
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 103
    goto :goto_2

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 106
    iget-object v0, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 108
    monitor-enter v0

    .line 109
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 111
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-direct {v1, p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    .line 120
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    .line 122
    invoke-direct {v2, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;I)V

    .line 125
    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-direct {v6, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 131
    const v3, 0x107010f

    .line 134
    const/4 v5, 0x0

    .line 135
    move-object v0, p0

    .line 136
    move-object v4, p1

    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 143
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    .line 145
    const/4 v0, 0x5

    .line 146
    invoke-direct {v1, p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    .line 149
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    .line 151
    invoke-direct {v2, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;I)V

    .line 154
    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    .line 156
    const/4 v0, 0x1

    .line 157
    invoke-direct {v6, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 160
    const v3, 0x107010e

    .line 163
    const/4 v5, 0x0

    .line 164
    move-object v0, p0

    .line 165
    move-object v4, p1

    .line 166
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 172
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 175
    goto/16 :goto_5

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    throw p0

    .line 180
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 182
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 184
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 186
    if-ne p1, v1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 190
    iget-object v0, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 192
    monitor-enter v0

    .line 193
    :try_start_2
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 195
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 197
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 200
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 204
    goto/16 :goto_5

    .line 206
    :catchall_1
    move-exception p0

    .line 207
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    throw p0

    .line 209
    :cond_1
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 211
    if-eq p1, v0, :cond_5

    .line 213
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 215
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 218
    goto/16 :goto_5

    .line 220
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 222
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 224
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 226
    if-ne p1, v1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 230
    iget-object v0, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 232
    monitor-enter v0

    .line 233
    :try_start_4
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 235
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 237
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 240
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 241
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 244
    goto :goto_5

    .line 245
    :catchall_2
    move-exception p0

    .line 246
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 247
    throw p0

    .line 248
    :cond_2
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 250
    if-eq p1, v0, :cond_5

    .line 252
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 254
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 257
    goto :goto_5

    .line 258
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    check-cast p1, Ljava/lang/Float;

    .line 262
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 264
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 266
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 268
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 270
    monitor-enter v0

    .line 271
    if-nez p1, :cond_3

    .line 273
    :try_start_6
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 275
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 277
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 280
    goto :goto_3

    .line 281
    :catchall_3
    move-exception p0

    .line 282
    goto :goto_4

    .line 283
    :cond_3
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 285
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 288
    move-result v2

    .line 289
    cmpl-float v1, v1, v2

    .line 291
    if-eqz v1, :cond_4

    .line 293
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 296
    move-result p1

    .line 297
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 299
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 302
    monitor-exit v0

    .line 303
    goto :goto_5

    .line 304
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 305
    throw p0

    .line 306
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    check-cast p1, Landroid/util/Pair;

    .line 310
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 312
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 314
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 316
    check-cast v0, [F

    .line 318
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 320
    check-cast p1, [F

    .line 322
    invoke-static {p0, v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$monDeviceConfigLowBrightnessThresholdsChanged(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;[F[F)V

    .line 325
    goto :goto_5

    .line 326
    :pswitch_7
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    check-cast p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    .line 330
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->onDesiredDisplayModeSpecsChanged()V

    .line 333
    :cond_5
    :goto_5
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
