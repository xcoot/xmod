.class public final Lcom/android/server/wm/DisplayRotation$OrientationListener;
.super Lcom/android/server/wm/WindowOrientationListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public transient mEnabled:Z

.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isRotationResolverEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowRotationResolver:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    return v1
.end method

.method public final onProposedRotationChanged(I)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    int-to-long v2, p1

    .line 9
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v9

    .line 19
    const/4 v7, 0x1

    .line 20
    const/4 v8, 0x0

    .line 21
    const-wide v5, -0x7861325684edc9ddL    # -5.694061101619302E-272

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v2}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 44
    .line 45
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    .line 48
    .line 49
    iget-boolean v3, v3, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v3

    .line 56
    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    invoke-virtual {v4, p1, v0}, Lcom/android/server/wm/RotationWatcherController;->dispatchProposedRotation(ILcom/android/server/wm/DisplayContent;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v3

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 71
    .line 72
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    iget-object v4, v3, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 77
    .line 78
    iget-object v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 79
    .line 80
    const-string v5, "enable_display_rotation_immersive_app_compat_policy"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_3

    .line 87
    .line 88
    move v3, v2

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object v4, v3, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 91
    .line 92
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 95
    .line 96
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 97
    .line 98
    .line 99
    monitor-enter v4

    .line 100
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforcedLocked(I)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 106
    .line 107
    .line 108
    :goto_1
    if-eqz v3, :cond_4

    .line 109
    .line 110
    move v3, v1

    .line 111
    goto :goto_2

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_4
    move v3, v2

    .line 119
    :goto_2
    const/4 v4, -0x1

    .line 120
    const/4 v5, 0x2

    .line 121
    if-nez v3, :cond_5

    .line 122
    .line 123
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 124
    .line 125
    if-eq v3, v1, :cond_5

    .line 126
    .line 127
    :goto_3
    move v0, v2

    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_5
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    iget-boolean v6, v3, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    .line 135
    .line 136
    if-eqz v6, :cond_6

    .line 137
    .line 138
    iget-object v3, v3, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 139
    .line 140
    sget-object v6, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 141
    .line 142
    if-ne v3, v6, :cond_6

    .line 143
    .line 144
    move v3, v1

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move v3, v2

    .line 147
    :goto_4
    if-eqz v3, :cond_7

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_8

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 158
    .line 159
    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 160
    .line 161
    if-ne v3, v1, :cond_9

    .line 162
    .line 163
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 164
    .line 165
    if-ltz v3, :cond_9

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_9
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 169
    .line 170
    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 171
    .line 172
    if-ne v3, v5, :cond_a

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_a
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 176
    .line 177
    iget-boolean v7, v6, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 178
    .line 179
    if-eq v3, v1, :cond_b

    .line 180
    .line 181
    const/4 v8, 0x3

    .line 182
    if-eq v3, v8, :cond_b

    .line 183
    .line 184
    const/4 v8, 0x4

    .line 185
    if-ne v3, v8, :cond_c

    .line 186
    .line 187
    :cond_b
    if-nez v7, :cond_c

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_c
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 191
    .line 192
    if-eqz v6, :cond_d

    .line 193
    .line 194
    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 195
    .line 196
    if-eqz v7, :cond_d

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_d
    if-eqz v6, :cond_e

    .line 200
    .line 201
    if-nez v3, :cond_e

    .line 202
    .line 203
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 204
    .line 205
    if-ltz v3, :cond_e

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_e
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    .line 209
    .line 210
    if-eqz v3, :cond_f

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_f
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 214
    .line 215
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 216
    .line 217
    if-eqz v3, :cond_10

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_10
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 221
    .line 222
    if-nez v3, :cond_11

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_11
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 226
    .line 227
    if-eq v0, v4, :cond_12

    .line 228
    .line 229
    if-eq v0, v5, :cond_12

    .line 230
    .line 231
    packed-switch v0, :pswitch_data_0

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_12
    :pswitch_0
    move v0, v1

    .line 236
    :goto_5
    if-eqz v0, :cond_18

    .line 237
    .line 238
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 239
    .line 240
    iput p1, v0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    .line 241
    .line 242
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 243
    .line 244
    if-eq v3, v4, :cond_14

    .line 245
    .line 246
    if-eq v3, v5, :cond_14

    .line 247
    .line 248
    packed-switch v3, :pswitch_data_1

    .line 249
    .line 250
    .line 251
    goto :goto_7

    .line 252
    :pswitch_1
    if-ltz p1, :cond_13

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_13
    move v1, v2

    .line 256
    :goto_6
    move v2, v1

    .line 257
    goto :goto_7

    .line 258
    :pswitch_2
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 259
    .line 260
    if-ne p1, v0, :cond_13

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    goto :goto_7

    .line 268
    :cond_14
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 269
    .line 270
    if-ne v3, v4, :cond_15

    .line 271
    .line 272
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    .line 273
    .line 274
    iput v3, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 275
    .line 276
    :cond_15
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 277
    .line 278
    if-ne v0, v1, :cond_16

    .line 279
    .line 280
    if-ltz p1, :cond_13

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_16
    if-ltz p1, :cond_13

    .line 284
    .line 285
    if-eq p1, v5, :cond_13

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 289
    .line 290
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 291
    .line 292
    if-nez v0, :cond_17

    .line 293
    .line 294
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 295
    .line 296
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 301
    .line 302
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 303
    .line 304
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 305
    .line 306
    if-eqz p0, :cond_19

    .line 307
    .line 308
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 309
    .line 310
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 311
    .line 312
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 313
    .line 314
    if-eqz v0, :cond_19

    .line 315
    .line 316
    :try_start_3
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 317
    .line 318
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 319
    .line 320
    invoke-interface {p0, p1, v2}, Lcom/android/internal/statusbar/IStatusBar;->onProposedRotationChanged(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 321
    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 325
    .line 326
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    .line 327
    .line 328
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 329
    .line 330
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 331
    .line 332
    .line 333
    :catch_0
    :cond_19
    :goto_8
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->enable$1()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string p0, "WindowOrientationListener"

    .line 17
    .line 18
    const-string v1, "Cannot detect sensors. Invalid disable"

    .line 19
    .line 20
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v1, v2, :cond_3

    .line 31
    .line 32
    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const-string v1, "WindowOrientationListener"

    .line 37
    .line 38
    const-string v2, "WindowOrientationListener disabled"

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 52
    .line 53
    :cond_3
    monitor-exit v0

    .line 54
    :goto_0
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method
