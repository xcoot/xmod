.class public final Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final isDefaultDisplay:Z

.field public mAllowAllRotations:I

.field public final mAllowRotationResolver:Z

.field public mAllowSeamlessRotationDespiteNavBarMoving:Z

.field public mCameraRotationMode:I

.field public final mCarDockRotation:I

.field public final mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAppOrientation:I

.field final mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

.field public mDefaultFixedToUserRotation:Z

.field public mDeferredRotationPauseCount:I

.field public mDemoHdmiRotation:I

.field public mDemoHdmiRotationLock:Z

.field public mDemoRotation:I

.field public mDemoRotationLock:Z

.field public final mDeskDockRotation:I

.field public final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

.field public final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field public mFixedToUserRotation:I

.field public final mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

.field mLandscapeRotation:I

.field public mLastOrientation:I

.field public mLastRotationForOrientationInfo:Ljava/lang/String;

.field public mLastSensorRotation:I

.field public final mLidOpenRotation:I

.field public final mLock:Ljava/lang/Object;

.field public final mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I

.field public mRotatingSeamlessly:Z

.field public mRotation:I

.field public mRotationChoiceShownToUserForConfirmation:I

.field public final mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field public final mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field public mSeamlessRotationCount:I

.field mSeascapeRotation:I

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field public mShowRotationSuggestions:I

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSupportAutoRotation:Z

.field public final mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

.field public final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field public mUserRotation:I

.field public mUserRotationMode:I


# direct methods
.method public static -$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x2

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move v2, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo v2, "show_rotation_suggestions"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_0
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 29
    .line 30
    if-eq v6, v2, :cond_1

    .line 31
    .line 32
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 33
    .line 34
    move v2, v4

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_5

    .line 38
    :cond_1
    move v2, v5

    .line 39
    :goto_1
    const-string/jumbo v6, "user_rotation"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 47
    .line 48
    if-eq v7, v6, :cond_2

    .line 49
    .line 50
    iput v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 51
    .line 52
    move v6, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v6, v5

    .line 55
    :goto_2
    const-string v7, "accelerometer_rotation"

    .line 56
    .line 57
    invoke-static {v0, v7, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    move v7, v5

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v7, v4

    .line 66
    :goto_3
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 67
    .line 68
    if-eq v8, v7, :cond_4

    .line 69
    .line 70
    iput v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 71
    .line 72
    move v2, v4

    .line 73
    move v6, v2

    .line 74
    :cond_4
    if-eqz v2, :cond_5

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 77
    .line 78
    .line 79
    :cond_5
    const-string v2, "camera_autorotate"

    .line 80
    .line 81
    invoke-static {v0, v2, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 86
    .line 87
    if-eq v2, v0, :cond_6

    .line 88
    .line 89
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    move v4, v6

    .line 93
    :goto_4
    monitor-exit v1

    .line 94
    return v4

    .line 95
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayAddress;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/DisplayRotationCoordinator;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    .line 35
    .line 36
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 40
    .line 41
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 42
    .line 43
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 44
    .line 45
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 50
    .line 51
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 52
    .line 53
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 54
    .line 55
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    iput-object p7, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object p8, p0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 60
    .line 61
    iget-boolean p4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 62
    .line 63
    iput-boolean p4, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->initImmersiveAppCompatPolicy(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    .line 70
    .line 71
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const p5, 0x1110244

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 83
    .line 84
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p5

    .line 88
    const p7, 0x1110022

    .line 89
    .line 90
    .line 91
    invoke-virtual {p5, p7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 92
    .line 93
    .line 94
    move-result p5

    .line 95
    iput-boolean p5, p0, Lcom/android/server/wm/DisplayRotation;->mAllowRotationResolver:Z

    .line 96
    .line 97
    const p5, 0x10e00cb

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    .line 101
    .line 102
    .line 103
    move-result p5

    .line 104
    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 105
    .line 106
    const p5, 0x10e005a

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    .line 110
    .line 111
    .line 112
    move-result p5

    .line 113
    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 114
    .line 115
    const p5, 0x10e0088

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    .line 119
    .line 120
    .line 121
    move-result p5

    .line 122
    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 123
    .line 124
    const p5, 0x10e0163

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    .line 128
    .line 129
    .line 130
    move-result p5

    .line 131
    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 132
    .line 133
    instance-of p5, p3, Landroid/view/DisplayAddress$Physical;

    .line 134
    .line 135
    const-string p7, ""

    .line 136
    .line 137
    if-eqz p5, :cond_0

    .line 138
    .line 139
    check-cast p3, Landroid/view/DisplayAddress$Physical;

    .line 140
    .line 141
    new-instance p5, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string/jumbo v2, "ro.bootanim.set_orientation_"

    .line 144
    .line 145
    .line 146
    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-static {p3, p7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    goto :goto_0

    .line 165
    :cond_0
    move-object p3, p7

    .line 166
    :goto_0
    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p5

    .line 170
    if-eqz p5, :cond_1

    .line 171
    .line 172
    iget-boolean p5, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 173
    .line 174
    if-eqz p5, :cond_1

    .line 175
    .line 176
    new-instance p3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string/jumbo p5, "ro.bootanim.set_orientation_logical_"

    .line 179
    .line 180
    .line 181
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget p5, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 185
    .line 186
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-static {p3, p7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    :cond_1
    const-string p5, "ORIENTATION_90"

    .line 198
    .line 199
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p5

    .line 203
    if-eqz p5, :cond_2

    .line 204
    .line 205
    const/4 p3, 0x1

    .line 206
    goto :goto_1

    .line 207
    :cond_2
    const-string p5, "ORIENTATION_180"

    .line 208
    .line 209
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p5

    .line 213
    if-eqz p5, :cond_3

    .line 214
    .line 215
    const/4 p3, 0x2

    .line 216
    goto :goto_1

    .line 217
    :cond_3
    const-string p5, "ORIENTATION_270"

    .line 218
    .line 219
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p3

    .line 223
    if-eqz p3, :cond_4

    .line 224
    .line 225
    const/4 p3, 0x3

    .line 226
    goto :goto_1

    .line 227
    :cond_4
    move p3, v1

    .line 228
    :goto_1
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 229
    .line 230
    iput-object p9, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 231
    .line 232
    if-eqz p4, :cond_5

    .line 233
    .line 234
    iput p3, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    .line 235
    .line 236
    :cond_5
    new-instance p5, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;

    .line 237
    .line 238
    const/4 p7, 0x0

    .line 239
    invoke-direct {p5, p7, p0}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 243
    .line 244
    invoke-static {p2}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p2, :cond_7

    .line 249
    .line 250
    iget-boolean p2, p8, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    .line 251
    .line 252
    if-eqz p2, :cond_7

    .line 253
    .line 254
    iget-object p2, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 255
    .line 256
    if-nez p2, :cond_6

    .line 257
    .line 258
    iput-object p5, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 259
    .line 260
    iget p2, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 261
    .line 262
    iget p7, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    .line 263
    .line 264
    if-eq p2, p7, :cond_7

    .line 265
    .line 266
    invoke-virtual {p5}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->run()V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 271
    .line 272
    const-string p1, "Multiple clients unsupported"

    .line 273
    .line 274
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    :cond_7
    :goto_2
    const/4 p2, 0x0

    .line 279
    if-eqz p4, :cond_9

    .line 280
    .line 281
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 282
    .line 283
    .line 284
    move-result-object p4

    .line 285
    new-instance p5, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 286
    .line 287
    invoke-direct {p5, p0, p6, p4, p3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 288
    .line 289
    .line 290
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 291
    .line 292
    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 293
    .line 294
    iget-object p7, p5, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 295
    .line 296
    monitor-enter p7

    .line 297
    :try_start_0
    iput p3, p5, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 298
    .line 299
    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    new-instance p3, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 301
    .line 302
    invoke-direct {p3, p0, p4}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    .line 303
    .line 304
    .line 305
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 306
    .line 307
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 308
    .line 309
    .line 310
    move-result-object p4

    .line 311
    const-string/jumbo p5, "show_rotation_suggestions"

    .line 312
    .line 313
    .line 314
    invoke-static {p5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 315
    .line 316
    .line 317
    move-result-object p5

    .line 318
    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    .line 320
    .line 321
    const-string p5, "accelerometer_rotation"

    .line 322
    .line 323
    invoke-static {p5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 324
    .line 325
    .line 326
    move-result-object p5

    .line 327
    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 328
    .line 329
    .line 330
    const-string/jumbo p5, "user_rotation"

    .line 331
    .line 332
    .line 333
    invoke-static {p5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 334
    .line 335
    .line 336
    move-result-object p5

    .line 337
    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 338
    .line 339
    .line 340
    const-string p5, "camera_autorotate"

    .line 341
    .line 342
    invoke-static {p5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 343
    .line 344
    .line 345
    move-result-object p5

    .line 346
    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 347
    .line 348
    .line 349
    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z

    .line 350
    .line 351
    .line 352
    if-eqz p1, :cond_8

    .line 353
    .line 354
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    const p3, 0x1070103

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    array-length p1, p1

    .line 366
    if-lez p1, :cond_8

    .line 367
    .line 368
    new-instance p1, Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 369
    .line 370
    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    .line 371
    .line 372
    .line 373
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_8
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :catchall_0
    move-exception p0

    .line 380
    :try_start_1
    monitor-exit p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    throw p0

    .line 382
    :cond_9
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 383
    .line 384
    :goto_3
    return-void
.end method


# virtual methods
.method public final cancelSeamlessRotation()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda2;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "DisplayRotation"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "  mCurrentAppOrientation="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 35
    .line 36
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "  mLastOrientation="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 64
    .line 65
    const-string v2, "  mRotation="

    .line 66
    .line 67
    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, " mDeferredRotationPauseCount="

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 91
    .line 92
    const-string v2, "  mLandscapeRotation="

    .line 93
    .line 94
    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 99
    .line 100
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v1, " mSeascapeRotation="

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 122
    .line 123
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, "  mPortraitRotation="

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 151
    .line 152
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v1, " mUpsideDownRotation="

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 174
    .line 175
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, "  mSupportAutoRotation="

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 203
    .line 204
    invoke-static {v0, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 208
    .line 209
    if-eqz v0, :cond_1

    .line 210
    .line 211
    const-string v1, "  "

    .line 212
    .line 213
    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string/jumbo v2, "mSensorType=null"

    .line 218
    .line 219
    .line 220
    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 221
    .line 222
    monitor-enter v3

    .line 223
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v5, "WindowOrientationListener"

    .line 232
    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v1, "  "

    .line 252
    .line 253
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v5, "mEnabled="

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget-boolean v5, v0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 274
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v5, "mCurrentRotation="

    .line 294
    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 299
    .line 300
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string/jumbo v4, "mSensor="

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    iget-object v4, v0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 347
    .line 348
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string/jumbo v4, "mRate="

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    iget v4, v0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    .line 373
    .line 374
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 385
    .line 386
    if-eqz v0, :cond_0

    .line 387
    .line 388
    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto :goto_0

    .line 392
    :catchall_0
    move-exception p0

    .line 393
    goto :goto_1

    .line 394
    :cond_0
    :goto_0
    monitor-exit v3

    .line 395
    goto :goto_2

    .line 396
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    throw p0

    .line 398
    :cond_1
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 399
    .line 400
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v1, "  mCarDockRotation="

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 415
    .line 416
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v1, " mDeskDockRotation="

    .line 433
    .line 434
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 438
    .line 439
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v1, "  mUserRotationMode="

    .line 462
    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 467
    .line 468
    const/4 v2, 0x1

    .line 469
    if-eqz v1, :cond_3

    .line 470
    .line 471
    if-eq v1, v2, :cond_2

    .line 472
    .line 473
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    goto :goto_3

    .line 478
    :cond_2
    const-string v1, "USER_ROTATION_LOCKED"

    .line 479
    .line 480
    goto :goto_3

    .line 481
    :cond_3
    const-string v1, "USER_ROTATION_FREE"

    .line 482
    .line 483
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v1, " mUserRotation="

    .line 496
    .line 497
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 501
    .line 502
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v1, " mCameraRotationMode="

    .line 519
    .line 520
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 524
    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v1, " mAllowAllRotations="

    .line 538
    .line 539
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 543
    .line 544
    const/4 v3, -0x1

    .line 545
    if-eq v1, v3, :cond_6

    .line 546
    .line 547
    if-eqz v1, :cond_5

    .line 548
    .line 549
    if-eq v1, v2, :cond_4

    .line 550
    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    goto :goto_4

    .line 556
    :cond_4
    const-string/jumbo v1, "true"

    .line 557
    .line 558
    .line 559
    goto :goto_4

    .line 560
    :cond_5
    const-string v1, "false"

    .line 561
    .line 562
    goto :goto_4

    .line 563
    :cond_6
    const-string/jumbo v1, "unknown"

    .line 564
    .line 565
    .line 566
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v1, "  mDemoHdmiRotation="

    .line 585
    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .line 590
    .line 591
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    const-string v1, " mDemoHdmiRotationLock="

    .line 608
    .line 609
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 613
    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    const-string v1, " mUndockedHdmiRotation="

    .line 627
    .line 628
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 632
    .line 633
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    const-string v1, "  mLidOpenRotation="

    .line 656
    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 661
    .line 662
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    const-string v1, "  mFixedToUserRotation="

    .line 685
    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 704
    .line 705
    if-eqz v0, :cond_7

    .line 706
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    const-string v1, "FoldController"

    .line 716
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    const-string v1, "  mPauseAutorotationDuringUnfolding="

    .line 736
    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 741
    .line 742
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    .line 743
    .line 744
    const-string v3, "  mShouldDisableRotationSensor="

    .line 745
    .line 746
    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 751
    .line 752
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 753
    .line 754
    const-string v3, "  mShouldIgnoreSensorRotation="

    .line 755
    .line 756
    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 761
    .line 762
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    .line 763
    .line 764
    const-string v3, "  mLastDisplaySwitchTime="

    .line 765
    .line 766
    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 771
    .line 772
    iget-wide v3, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    .line 773
    .line 774
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    .line 785
    .line 786
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string v1, "  mLastHingeAngleEventTime="

    .line 793
    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 798
    .line 799
    iget-wide v3, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 800
    .line 801
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    const-string v1, "  mDeviceState="

    .line 820
    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 825
    .line 826
    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 827
    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 839
    .line 840
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 841
    .line 842
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    if-nez v0, :cond_f

    .line 847
    .line 848
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 849
    .line 850
    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    .line 852
    .line 853
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    const-string v1, "  RotationHistory"

    .line 860
    .line 861
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    .line 872
    .line 873
    const-string v1, "    "

    .line 874
    .line 875
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object p1

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 886
    .line 887
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 888
    .line 889
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    if-eqz v1, :cond_f

    .line 898
    .line 899
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    check-cast v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    .line 904
    .line 905
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    .line 907
    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    .line 909
    .line 910
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    iget-wide v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mTimestamp:J

    .line 917
    .line 918
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v4

    .line 922
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    const-string v4, " "

    .line 926
    .line 927
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    iget v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mFromRotation:I

    .line 931
    .line 932
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v5

    .line 936
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    const-string v5, " to "

    .line 940
    .line 941
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    iget v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mToRotation:I

    .line 945
    .line 946
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v5

    .line 950
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    .line 961
    .line 962
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v5, "  source="

    .line 969
    .line 970
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    iget-object v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    .line 974
    .line 975
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    .line 982
    .line 983
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v4

    .line 987
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v3

    .line 994
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    new-instance v3, Ljava/lang/StringBuilder;

    .line 998
    .line 999
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    const-string v4, "  mode="

    .line 1006
    .line 1007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotationMode:I

    .line 1011
    .line 1012
    if-eqz v4, :cond_a

    .line 1013
    .line 1014
    if-eq v4, v2, :cond_9

    .line 1015
    .line 1016
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v4

    .line 1020
    goto :goto_6

    .line 1021
    :cond_9
    const-string v4, "USER_ROTATION_LOCKED"

    .line 1022
    .line 1023
    goto :goto_6

    .line 1024
    :cond_a
    const-string v4, "USER_ROTATION_FREE"

    .line 1025
    .line 1026
    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    const-string v4, " user="

    .line 1030
    .line 1031
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotation:I

    .line 1035
    .line 1036
    invoke-static {v4}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    const-string v4, " sensor="

    .line 1044
    .line 1045
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSensorRotation:I

    .line 1049
    .line 1050
    invoke-static {v4}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v4

    .line 1054
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    iget-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mIgnoreOrientationRequest:Z

    .line 1065
    .line 1066
    if-eqz v3, :cond_b

    .line 1067
    .line 1068
    const-string v3, "  ignoreRequest=true"

    .line 1069
    .line 1070
    invoke-static {p2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    :cond_b
    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

    .line 1074
    .line 1075
    if-eqz v3, :cond_c

    .line 1076
    .line 1077
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    const-string v5, "  requestingTda="

    .line 1086
    .line 1087
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v3

    .line 1097
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    :cond_c
    iget v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mHalfFoldSavedRotation:I

    .line 1101
    .line 1102
    const/4 v4, -0x2

    .line 1103
    if-eq v3, v4, :cond_d

    .line 1104
    .line 1105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    const-string v5, " halfFoldSavedRotation="

    .line 1114
    .line 1115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    const-string v3, " mInHalfFoldTransition="

    .line 1122
    .line 1123
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    iget-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mInHalfFoldTransition:Z

    .line 1127
    .line 1128
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    const-string v3, " mFoldState="

    .line 1132
    .line 1133
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 1137
    .line 1138
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v3

    .line 1145
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    :cond_d
    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDisplayRotationCompatPolicySummary:Ljava/lang/String;

    .line 1149
    .line 1150
    if-eqz v3, :cond_e

    .line 1151
    .line 1152
    invoke-static {p2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    :cond_e
    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mRotationReversionSlots:[Z

    .line 1156
    .line 1157
    if-eqz v1, :cond_8

    .line 1158
    .line 1159
    const-string v3, " reversionSlots= NOSENSOR "

    .line 1160
    .line 1161
    invoke-static {p1, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v3

    .line 1165
    const/4 v4, 0x0

    .line 1166
    aget-boolean v4, v1, v4

    .line 1167
    .line 1168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    const-string v4, ", CAMERA "

    .line 1172
    .line 1173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    aget-boolean v4, v1, v2

    .line 1177
    .line 1178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    .line 1181
    const-string v4, " HALF_FOLD "

    .line 1182
    .line 1183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    const/4 v4, 0x2

    .line 1187
    aget-boolean v1, v1, v4

    .line 1188
    .line 1189
    invoke-static {v3, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1190
    .line 1191
    .line 1192
    goto/16 :goto_5

    .line 1193
    .line 1194
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 1195
    .line 1196
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 1197
    .line 1198
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1199
    .line 1200
    .line 1201
    move-result v0

    .line 1202
    if-nez v0, :cond_12

    .line 1203
    .line 1204
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1205
    .line 1206
    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    .line 1215
    const-string v1, "  RotationLockHistory"

    .line 1216
    .line 1217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v0

    .line 1224
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    const-string v1, "    "

    .line 1230
    .line 1231
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object p1

    .line 1241
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 1242
    .line 1243
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 1244
    .line 1245
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 1246
    .line 1247
    .line 1248
    move-result-object p0

    .line 1249
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    if-eqz v0, :cond_12

    .line 1254
    .line 1255
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    check-cast v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;

    .line 1260
    .line 1261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1262
    .line 1263
    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    iget-wide v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mTimestamp:J

    .line 1273
    .line 1274
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v3

    .line 1278
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    const-string v3, ": mode="

    .line 1282
    .line 1283
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    .line 1286
    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mUserRotationMode:I

    .line 1287
    .line 1288
    if-eqz v3, :cond_11

    .line 1289
    .line 1290
    if-eq v3, v2, :cond_10

    .line 1291
    .line 1292
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v3

    .line 1296
    goto :goto_8

    .line 1297
    :cond_10
    const-string v3, "USER_ROTATION_LOCKED"

    .line 1298
    .line 1299
    goto :goto_8

    .line 1300
    :cond_11
    const-string v3, "USER_ROTATION_FREE"

    .line 1301
    .line 1302
    :goto_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    .line 1304
    .line 1305
    const-string v3, ", rotation="

    .line 1306
    .line 1307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mUserRotation:I

    .line 1311
    .line 1312
    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v3

    .line 1316
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    const-string v3, ", caller="

    .line 1320
    .line 1321
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mCaller:Ljava/lang/String;

    .line 1325
    .line 1326
    invoke-static {v1, v0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1327
    .line 1328
    .line 1329
    goto :goto_7

    .line 1330
    :cond_12
    return-void
.end method

.method public getDemoUserRotationOverride()I
    .locals 1

    .line 1
    const-string/jumbo p0, "persist.demo.userrotation"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getDemoUserRotationPackage()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "persist.demo.userrotation.package_name"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 4
    .line 5
    return-object p0
.end method

.method public initImmersiveAppCompatPolicy(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 4
    .line 5
    const-string v1, "enable_display_rotation_immersive_app_compat_policy"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    .line 16
    .line 17
    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;-><init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V

    .line 18
    .line 19
    .line 20
    move-object p0, v0

    .line 21
    :goto_0
    return-object p0
.end method

.method public final isAnyPortrait(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final isFixedToUserRotation()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    return v2

    .line 18
    :cond_2
    return v1
.end method

.method public final isLandscapeOrSeascape(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final isRotationFrozen()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 8
    .line 9
    if-ne p0, v2, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "accelerometer_rotation"

    .line 20
    .line 21
    const/4 v3, -0x2

    .line 22
    invoke-static {p0, v0, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_2
    return v1
.end method

.method public final markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .locals 6

    .line 1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 2
    .line 3
    if-eq p2, v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 26
    .line 27
    :goto_0
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 32
    .line 33
    const/4 p2, 0x2

    .line 34
    aget-boolean p1, p1, p2

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 39
    .line 40
    const-wide v1, -0x10e0e626467ec440L    # -1.8419201566271566E227

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method public final readRotation(I)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    const/16 p1, 0x5a

    .line 14
    .line 15
    if-eq p0, p1, :cond_2

    .line 16
    .line 17
    const/16 p1, 0xb4

    .line 18
    .line 19
    if-eq p0, p1, :cond_1

    .line 20
    .line 21
    const/16 p1, 0x10e

    .line 22
    .line 23
    if-eq p0, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x3

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x2

    .line 29
    return p0

    .line 30
    :cond_2
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_3
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :catch_0
    :goto_0
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public final resume()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public rotationForOrientation(II)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(IIZ)I

    move-result p0

    return p0
.end method

.method public final rotationForOrientation(IIZ)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    .line 13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 14
    :cond_1
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    int-to-long v9, v1

    invoke-static/range {p2 .. p2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    int-to-long v11, v2

    iget v13, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v13}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget v14, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v14, v14

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v2, v4, :cond_2

    const-string v2, "USER_ROTATION_LOCKED"

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v10, v7

    move-object v12, v13

    move-object v13, v14

    move-object v14, v2

    filled-new-array/range {v8 .. v14}, [Ljava/lang/Object;

    move-result-object v21

    const/16 v19, 0x444

    const-string/jumbo v20, "rotationForOrientation(orient=%s (%d), last=%s (%d)); user=%s (%d) %s"

    const-wide v17, 0x168a6669b4823025L

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rotationForOrientation, orientationSource="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WindowManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    .line 17
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0

    .line 19
    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v5, -0x1

    if-eqz v2, :cond_6

    .line 20
    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v5

    .line 21
    :goto_2
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v6, :cond_7

    .line 22
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-eqz v6, :cond_7

    move v2, v5

    .line 23
    :cond_7
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-boolean v7, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v7, :cond_8

    const/4 v6, 0x0

    goto :goto_3

    .line 25
    :cond_8
    iget-object v7, v6, Lcom/android/server/wm/DeviceStateController;->mReverseRotationAroundZAxisStates:[I

    iget v6, v6, Lcom/android/server/wm/DeviceStateController;->mCurrentState:I

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    :goto_3
    if-eqz v6, :cond_9

    .line 26
    invoke-static {v2}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    move-result v2

    .line 27
    :cond_9
    iput v2, v0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    if-gez v2, :cond_a

    move/from16 v2, p2

    .line 28
    :cond_a
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 29
    iget v6, v6, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 30
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 31
    iget v7, v7, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 32
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    iget-boolean v9, v9, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 34
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 35
    iget-boolean v11, v10, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 36
    iget-boolean v12, v10, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 37
    iget-boolean v13, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v15, 0xb

    if-nez v13, :cond_b

    .line 38
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto/16 :goto_8

    :cond_b
    if-ne v6, v4, :cond_c

    .line 39
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v6, :cond_c

    move v5, v6

    goto/16 :goto_8

    :cond_c
    const/4 v6, 0x2

    if-ne v7, v6, :cond_f

    if-nez v11, :cond_d

    .line 40
    iget v13, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v13, :cond_f

    :cond_d
    if-eqz v11, :cond_e

    goto/16 :goto_7

    .line 41
    :cond_e
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    goto/16 :goto_7

    :cond_f
    const/4 v11, 0x5

    const/16 v13, 0xe

    const/4 v8, 0x4

    const/4 v14, 0x3

    if-eq v7, v4, :cond_10

    if-eq v7, v14, :cond_10

    if-ne v7, v8, :cond_13

    :cond_10
    if-nez v12, :cond_11

    .line 42
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v4, :cond_13

    :cond_11
    if-eq v1, v13, :cond_13

    if-eq v1, v11, :cond_13

    if-eqz v12, :cond_12

    goto/16 :goto_7

    .line 43
    :cond_12
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    goto/16 :goto_7

    :cond_13
    if-eqz v9, :cond_14

    .line 44
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v4, :cond_14

    .line 45
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto/16 :goto_8

    :cond_14
    if-eqz v9, :cond_15

    if-nez v7, :cond_15

    .line 46
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v4, :cond_15

    move v5, v4

    goto/16 :goto_8

    .line 47
    :cond_15
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v4, :cond_16

    .line 48
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto/16 :goto_8

    .line 49
    :cond_16
    iget-boolean v4, v10, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    if-eqz v4, :cond_17

    .line 50
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    goto/16 :goto_8

    :cond_17
    if-ne v1, v13, :cond_18

    goto/16 :goto_6

    .line 51
    :cond_18
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v4, :cond_19

    .line 52
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v2, v14, :cond_23

    .line 53
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto/16 :goto_8

    .line 54
    :cond_19
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v7, 0xa

    const/16 v9, 0xd

    if-eqz v4, :cond_1b

    .line 55
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v10, :cond_1a

    .line 56
    iget-boolean v12, v10, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v12, :cond_1a

    .line 57
    iget-object v10, v10, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v12, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v10, v12, :cond_1a

    const/4 v10, 0x1

    goto :goto_4

    :cond_1a
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_1c

    :cond_1b
    if-eq v1, v6, :cond_1e

    if-eq v1, v5, :cond_1e

    if-eq v1, v15, :cond_1e

    const/16 v10, 0xc

    if-eq v1, v10, :cond_1e

    if-eq v1, v9, :cond_1e

    :cond_1c
    if-eq v1, v8, :cond_1e

    if-eq v1, v7, :cond_1e

    const/4 v8, 0x6

    if-eq v1, v8, :cond_1e

    const/4 v8, 0x7

    if-ne v1, v8, :cond_1d

    goto :goto_5

    :cond_1d
    const/4 v8, 0x1

    if-ne v4, v8, :cond_23

    if-eq v1, v11, :cond_23

    if-eqz v1, :cond_23

    if-eq v1, v8, :cond_23

    const/16 v2, 0x8

    if-eq v1, v2, :cond_23

    const/16 v2, 0x9

    if-eq v1, v2, :cond_23

    .line 58
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_8

    :cond_1e
    :goto_5
    if-ne v2, v6, :cond_22

    .line 59
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v4, v5, :cond_1f

    .line 60
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    .line 61
    iput v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 62
    :cond_1f
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_22

    if-eqz v3, :cond_20

    .line 63
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v4, v3, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequestOverride:Z

    if-eqz v4, :cond_20

    if-ne v1, v5, :cond_20

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 64
    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 65
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 66
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_20
    if-eq v1, v7, :cond_22

    if-ne v1, v9, :cond_21

    goto :goto_7

    :cond_21
    :goto_6
    move/from16 v5, p2

    goto :goto_8

    :cond_22
    :goto_7
    move v5, v2

    :cond_23
    :goto_8
    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    if-eq v1, v15, :cond_27

    const/16 v2, 0xc

    if-eq v1, v2, :cond_28

    packed-switch v1, :pswitch_data_0

    if-ltz v5, :cond_24

    return v5

    :cond_24
    const/4 v0, 0x0

    return v0

    .line 67
    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_25

    return v5

    .line 68
    :cond_25
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0

    .line 69
    :pswitch_1
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_26

    return v5

    .line 70
    :cond_26
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0

    :cond_27
    :pswitch_2
    move/from16 v1, p2

    goto :goto_9

    .line 71
    :cond_28
    :pswitch_3
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_29

    return v5

    :cond_29
    move/from16 v1, p2

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    return v1

    .line 73
    :cond_2a
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    .line 74
    :goto_9
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v5

    .line 75
    :cond_2b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    return v1

    .line 76
    :cond_2c
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    .line 77
    :cond_2d
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    return v5

    .line 78
    :cond_2e
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    .line 79
    :cond_2f
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_30

    return v5

    .line 80
    :cond_30
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    aget-boolean v4, v4, v5

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    const-wide/16 v6, 0x0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 48
    .line 49
    int-to-long v6, v6

    .line 50
    :goto_2
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 51
    .line 52
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    const/16 v11, 0x34

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    const-wide v9, -0x6a7a396b3868ccd0L    # -5.426068095430003E-205

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    const v4, 0x10a00a2

    .line 76
    .line 77
    .line 78
    const v6, 0x10a00a1

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 84
    .line 85
    iput v4, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 86
    .line 87
    iput v6, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_4
    if-eqz v3, :cond_9

    .line 91
    .line 92
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const/4 v0, -0x1

    .line 100
    :goto_3
    if-gez v0, :cond_6

    .line 101
    .line 102
    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 103
    .line 104
    iget-boolean v7, v7, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 105
    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 109
    .line 110
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 111
    .line 112
    :cond_6
    if-eq v0, v1, :cond_8

    .line 113
    .line 114
    if-eq v0, v5, :cond_7

    .line 115
    .line 116
    const/4 v1, 0x3

    .line 117
    if-eq v0, v1, :cond_8

    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 120
    .line 121
    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 122
    .line 123
    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 127
    .line 128
    iput v4, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 129
    .line 130
    iput v6, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 134
    .line 135
    const v1, 0x10a00a3

    .line 136
    .line 137
    .line 138
    iput v1, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 139
    .line 140
    iput v6, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 144
    .line 145
    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 146
    .line 147
    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 148
    .line 149
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 150
    .line 151
    return-object p0
.end method

.method public final setFixedToUserRotation(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserRotation(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;

    .line 21
    .line 22
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;-><init>(IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p3, -0x1

    .line 29
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->useDefaultSettingsProvider()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-ne p1, v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v1

    .line 49
    :goto_0
    const-string p1, "accelerometer_rotation"

    .line 50
    .line 51
    const/4 p3, -0x2

    .line 52
    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 53
    .line 54
    .line 55
    const-string/jumbo p1, "user_rotation"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 63
    .line 64
    if-eq p3, p1, :cond_3

    .line 65
    .line 66
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 67
    .line 68
    move p3, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move p3, v0

    .line 71
    :goto_1
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 72
    .line 73
    if-eq v2, p2, :cond_4

    .line 74
    .line 75
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move v1, p3

    .line 79
    :goto_2
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 85
    .line 86
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 87
    .line 88
    iget-object p3, p3, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 89
    .line 90
    invoke-virtual {p3, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, v4, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, v4, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {p3, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 107
    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 112
    .line 113
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 114
    .line 115
    .line 116
    iget-object p0, v2, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    .line 117
    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    iget p1, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    .line 121
    .line 122
    iget p2, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method public shouldRotateSeamlessly(IIZ)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    invoke-direct {v4, v5}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    :cond_2
    if-eqz v0, :cond_3

    .line 56
    .line 57
    const-string/jumbo v0, "reject_seamless_rot(starting)"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    move v0, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    move v0, v3

    .line 66
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_6

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    const-string/jumbo p0, "reject_seamless_rot"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :cond_5
    return v2

    .line 82
    :cond_6
    if-eqz v0, :cond_7

    .line 83
    .line 84
    return v3

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 88
    .line 89
    if-eqz v0, :cond_12

    .line 90
    .line 91
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 92
    .line 93
    if-eq v0, v4, :cond_8

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_8
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 98
    .line 99
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    if-eq v4, v5, :cond_9

    .line 103
    .line 104
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 105
    .line 106
    if-eqz v4, :cond_12

    .line 107
    .line 108
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    .line 109
    .line 110
    if-eqz v4, :cond_12

    .line 111
    .line 112
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_12

    .line 117
    .line 118
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_a

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 126
    .line 127
    if-nez v4, :cond_e

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 130
    .line 131
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 132
    .line 133
    if-eqz p0, :cond_b

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_b
    const/4 p0, 0x2

    .line 137
    if-eq p1, p0, :cond_c

    .line 138
    .line 139
    if-eq p2, p0, :cond_c

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_c
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 143
    .line 144
    if-eqz p0, :cond_d

    .line 145
    .line 146
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    .line 147
    .line 148
    if-eqz p0, :cond_d

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_d
    return v3

    .line 152
    :cond_e
    :goto_2
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 153
    .line 154
    if-eqz p0, :cond_f

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_f

    .line 161
    .line 162
    return v3

    .line 163
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-nez p0, :cond_12

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_10

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_10
    if-nez p3, :cond_11

    .line 181
    .line 182
    new-instance p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda3;

    .line 183
    .line 184
    const/4 p1, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda3;-><init>(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-eqz p0, :cond_11

    .line 193
    .line 194
    return v3

    .line 195
    :cond_11
    return v2

    .line 196
    :cond_12
    :goto_3
    return v3
.end method

.method public final updateOrientation(IZ)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 12
    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final updateOrientationListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final updateOrientationListenerLw()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 4
    .line 5
    if-eqz v1, :cond_13

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v4

    .line 19
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 25
    .line 26
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 27
    .line 28
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 29
    .line 30
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 31
    .line 32
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    iget-boolean v5, v5, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 35
    .line 36
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 37
    .line 38
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 39
    .line 40
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 41
    .line 42
    aget-boolean v8, v7, v3

    .line 43
    .line 44
    if-eqz v8, :cond_2

    .line 45
    .line 46
    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 47
    .line 48
    int-to-long v8, v8

    .line 49
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 50
    .line 51
    iget-boolean v10, v10, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 52
    .line 53
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v17

    .line 79
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v16

    .line 83
    const/16 v14, 0xfdf

    .line 84
    .line 85
    const/4 v15, 0x0

    .line 86
    const-wide v12, -0x21ac519cf589c1c6L

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    if-eqz v1, :cond_11

    .line 95
    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 99
    .line 100
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const v8, 0x11101a4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/16 v8, 0x1b

    .line 123
    .line 124
    if-ne v2, v8, :cond_11

    .line 125
    .line 126
    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_11

    .line 133
    .line 134
    :cond_4
    :goto_1
    if-eqz v5, :cond_11

    .line 135
    .line 136
    if-nez v6, :cond_5

    .line 137
    .line 138
    goto/16 :goto_5

    .line 139
    .line 140
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    :cond_6
    :goto_2
    move v1, v4

    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_7
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 150
    .line 151
    const-string v2, "WindowManager"

    .line 152
    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 160
    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    iget-boolean v1, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 164
    .line 165
    xor-int/2addr v1, v3

    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    const-string/jumbo v1, "shouldDisableRotationSensor, rotation sensor is disabled due to cover policy"

    .line 179
    .line 180
    .line 181
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_9

    .line 194
    .line 195
    const-string/jumbo v1, "shouldDisableRotationSensor, rotation sensor is disabled due to proximity sensor"

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 203
    .line 204
    if-eqz v1, :cond_a

    .line 205
    .line 206
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 207
    .line 208
    if-eqz v1, :cond_a

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_a
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 212
    .line 213
    const/4 v2, 0x4

    .line 214
    if-eqz v1, :cond_c

    .line 215
    .line 216
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 217
    .line 218
    if-eq v1, v2, :cond_b

    .line 219
    .line 220
    const/16 v5, 0xa

    .line 221
    .line 222
    if-eq v1, v5, :cond_b

    .line 223
    .line 224
    const/4 v5, 0x7

    .line 225
    if-eq v1, v5, :cond_b

    .line 226
    .line 227
    const/4 v5, 0x6

    .line 228
    if-ne v1, v5, :cond_c

    .line 229
    .line 230
    :cond_b
    :goto_3
    move v1, v3

    .line 231
    goto :goto_4

    .line 232
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 233
    .line 234
    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 235
    .line 236
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 237
    .line 238
    iget-boolean v6, v5, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 239
    .line 240
    if-eqz v6, :cond_d

    .line 241
    .line 242
    const/4 v6, 0x2

    .line 243
    if-eq v1, v6, :cond_b

    .line 244
    .line 245
    :cond_d
    iget-boolean v5, v5, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 246
    .line 247
    if-eqz v5, :cond_e

    .line 248
    .line 249
    if-eq v1, v3, :cond_b

    .line 250
    .line 251
    const/4 v5, 0x3

    .line 252
    if-eq v1, v5, :cond_b

    .line 253
    .line 254
    if-ne v1, v2, :cond_e

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_e
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 258
    .line 259
    if-ne v1, v3, :cond_f

    .line 260
    .line 261
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 262
    .line 263
    if-eqz v1, :cond_6

    .line 264
    .line 265
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 266
    .line 267
    if-ne v1, v3, :cond_6

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_f
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 271
    .line 272
    :goto_4
    if-eqz v1, :cond_11

    .line 273
    .line 274
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 275
    .line 276
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 277
    .line 278
    if-nez v2, :cond_10

    .line 279
    .line 280
    iput-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 281
    .line 282
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 283
    .line 284
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    .line 286
    .line 287
    aget-boolean v1, v7, v3

    .line 288
    .line 289
    if-eqz v1, :cond_10

    .line 290
    .line 291
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 292
    .line 293
    const/4 v9, 0x0

    .line 294
    const/4 v10, 0x0

    .line 295
    const-wide v6, 0x5ce254014b33080L

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    const/4 v8, 0x0

    .line 301
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_10
    move v1, v4

    .line 305
    goto :goto_6

    .line 306
    :cond_11
    :goto_5
    move v1, v3

    .line 307
    :goto_6
    if-eqz v1, :cond_12

    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 310
    .line 311
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 312
    .line 313
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 314
    .line 315
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    .line 317
    .line 318
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 319
    .line 320
    aget-boolean v0, v0, v3

    .line 321
    .line 322
    if-eqz v0, :cond_12

    .line 323
    .line 324
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 325
    .line 326
    const-wide v2, 0x406b09bf53253cd8L    # 216.3046050765322

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    const/4 v4, 0x0

    .line 332
    const/4 v5, 0x0

    .line 333
    const/4 v6, 0x0

    .line 334
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_12
    return-void

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    throw v0

    .line 341
    :cond_13
    :goto_7
    return-void
.end method

.method public final updateRotationAndSendNewConfigIfChanged()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return v0
.end method

.method public final updateRotationUnchecked(Z)Z
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    if-nez v1, :cond_a

    .line 12
    .line 13
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 14
    .line 15
    if-lez v7, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 18
    .line 19
    aget-boolean v0, v0, v4

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 24
    .line 25
    const-wide v8, -0x5e0b2e75d386c675L    # -4.168039617495083E-145

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return v6

    .line 37
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 46
    .line 47
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 62
    .line 63
    aget-boolean v0, v0, v4

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 68
    .line 69
    const-wide v8, 0x673f09e71a893134L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return v6

    .line 81
    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 88
    .line 89
    aget-boolean v0, v0, v4

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 94
    .line 95
    const-wide v8, 0xf52d6f9b0473370L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v12, 0x0

    .line 103
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    return v6

    .line 107
    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 110
    .line 111
    iget-object v7, v2, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 112
    .line 113
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 114
    .line 115
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_6

    .line 120
    .line 121
    iget-object v2, v7, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 122
    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 126
    .line 127
    invoke-virtual {v8, v2}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_7

    .line 132
    .line 133
    iget-object v2, v7, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    iget-object v8, v2, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 137
    .line 138
    if-eqz v8, :cond_7

    .line 139
    .line 140
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-nez v8, :cond_7

    .line 145
    .line 146
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_7
    const/4 v2, 0x0

    .line 150
    :goto_0
    if-eqz v2, :cond_9

    .line 151
    .line 152
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_8

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_8
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 162
    .line 163
    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    .line 164
    .line 165
    invoke-virtual {v2, v6}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate(Z)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    :goto_1
    move v2, v6

    .line 171
    :goto_2
    if-eqz v2, :cond_a

    .line 172
    .line 173
    const/4 v1, -0x2

    .line 174
    iput v1, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 175
    .line 176
    return v6

    .line 177
    :cond_a
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 178
    .line 179
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 180
    .line 181
    if-nez v2, :cond_c

    .line 182
    .line 183
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 184
    .line 185
    aget-boolean v0, v0, v4

    .line 186
    .line 187
    if-eqz v0, :cond_b

    .line 188
    .line 189
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 190
    .line 191
    const-wide v8, -0x1ed6693e8b42c2fcL    # -1.1242403078993441E160

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v12, 0x0

    .line 199
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_b
    return v6

    .line 203
    :cond_c
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 204
    .line 205
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 206
    .line 207
    invoke-virtual {v0, v7, v2}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 212
    .line 213
    const/4 v10, 0x2

    .line 214
    const/4 v11, -0x1

    .line 215
    if-eqz v9, :cond_f

    .line 216
    .line 217
    iget-boolean v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    .line 218
    .line 219
    if-eqz v12, :cond_d

    .line 220
    .line 221
    iget-object v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 222
    .line 223
    sget-object v13, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 224
    .line 225
    if-ne v12, v13, :cond_d

    .line 226
    .line 227
    iget-boolean v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    .line 228
    .line 229
    if-nez v12, :cond_d

    .line 230
    .line 231
    iget-boolean v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 232
    .line 233
    if-eqz v12, :cond_d

    .line 234
    .line 235
    iget-object v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 236
    .line 237
    iget-object v13, v12, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 238
    .line 239
    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    .line 240
    .line 241
    iget-object v13, v13, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    .line 242
    .line 243
    aget-boolean v13, v13, v10

    .line 244
    .line 245
    if-eqz v13, :cond_d

    .line 246
    .line 247
    iget v12, v12, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 248
    .line 249
    if-ne v12, v4, :cond_d

    .line 250
    .line 251
    move v12, v4

    .line 252
    goto :goto_3

    .line 253
    :cond_d
    move v12, v6

    .line 254
    :goto_3
    if-eqz v12, :cond_f

    .line 255
    .line 256
    iget v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 257
    .line 258
    iput v11, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 259
    .line 260
    iget-object v13, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 261
    .line 262
    iget-object v13, v13, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 263
    .line 264
    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    .line 265
    .line 266
    invoke-virtual {v13, v10}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    .line 267
    .line 268
    .line 269
    iput-boolean v6, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 270
    .line 271
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 272
    .line 273
    aget-boolean v9, v9, v4

    .line 274
    .line 275
    if-eqz v9, :cond_e

    .line 276
    .line 277
    invoke-static {v12}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v13

    .line 289
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    invoke-static {v8}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 302
    .line 303
    filled-new-array {v9, v13, v8}, [Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v19

    .line 307
    const-wide v15, 0x9336858471d306cL

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    const/16 v17, 0x0

    .line 313
    .line 314
    const/16 v18, 0x0

    .line 315
    .line 316
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_e
    move v8, v12

    .line 320
    :cond_f
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 321
    .line 322
    invoke-static {v9}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    if-eqz v9, :cond_10

    .line 327
    .line 328
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 329
    .line 330
    iget-boolean v9, v9, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    .line 331
    .line 332
    if-eqz v9, :cond_10

    .line 333
    .line 334
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 335
    .line 336
    iget v8, v8, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 337
    .line 338
    invoke-static {v8}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    :cond_10
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 343
    .line 344
    if-eqz v9, :cond_13

    .line 345
    .line 346
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 347
    .line 348
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 349
    .line 350
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 351
    .line 352
    iget-object v12, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 353
    .line 354
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    iget-boolean v9, v12, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 358
    .line 359
    if-nez v9, :cond_12

    .line 360
    .line 361
    :cond_11
    move v9, v6

    .line 362
    goto :goto_4

    .line 363
    :cond_12
    iget-object v9, v12, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 364
    .line 365
    if-eqz v9, :cond_11

    .line 366
    .line 367
    invoke-virtual {v9}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    if-eqz v9, :cond_11

    .line 372
    .line 373
    iget v9, v9, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    .line 374
    .line 375
    and-int/2addr v9, v4

    .line 376
    if-eqz v9, :cond_11

    .line 377
    .line 378
    const-string v9, "ChangeTransitionController"

    .line 379
    .line 380
    const-string v12, "keepRotation: launch remoteTransition on consistent rotation."

    .line 381
    .line 382
    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move v9, v4

    .line 386
    :goto_4
    if-eqz v9, :cond_13

    .line 387
    .line 388
    move v8, v2

    .line 389
    :cond_13
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    .line 390
    .line 391
    aget-boolean v9, v9, v4

    .line 392
    .line 393
    if-eqz v9, :cond_14

    .line 394
    .line 395
    invoke-static {v8}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    int-to-long v13, v8

    .line 404
    int-to-long v10, v3

    .line 405
    invoke-static {v7}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v15

    .line 409
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v15

    .line 413
    int-to-long v5, v7

    .line 414
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v16

    .line 418
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v17

    .line 422
    move-wide/from16 v18, v5

    .line 423
    .line 424
    int-to-long v4, v2

    .line 425
    const/4 v6, 0x6

    .line 426
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 435
    .line 436
    const-string v24, "Computed rotation=%s (%d) for display id=%d based on lastOrientation=%s (%d) and oldRotation=%s (%d), caller=%s"

    .line 437
    .line 438
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 439
    .line 440
    .line 441
    move-result-object v13

    .line 442
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 443
    .line 444
    .line 445
    move-result-object v14

    .line 446
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 447
    .line 448
    .line 449
    move-result-object v16

    .line 450
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 451
    .line 452
    .line 453
    move-result-object v18

    .line 454
    move-object/from16 v19, v6

    .line 455
    .line 456
    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v25

    .line 460
    const-wide v21, 0x4f5456d82a363693L    # 1.4374527710116015E74

    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    const/16 v23, 0x1114

    .line 466
    .line 467
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    :cond_14
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 471
    .line 472
    const/4 v5, 0x1

    .line 473
    aget-boolean v6, v4, v5

    .line 474
    .line 475
    if-eqz v6, :cond_15

    .line 476
    .line 477
    int-to-long v5, v3

    .line 478
    invoke-static {v7}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v10

    .line 482
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    int-to-long v11, v7

    .line 487
    invoke-static {v8}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v13

    .line 491
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v13

    .line 495
    int-to-long v14, v8

    .line 496
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 497
    .line 498
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 507
    .line 508
    .line 509
    move-result-object v11

    .line 510
    filled-new-array {v5, v10, v6, v13, v11}, [Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v25

    .line 514
    const/16 v23, 0x111

    .line 515
    .line 516
    const/16 v24, 0x0

    .line 517
    .line 518
    const-wide v21, -0x7a40502e1025c131L    # -5.455096051606341E-281

    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    :cond_15
    if-ne v2, v8, :cond_16

    .line 527
    .line 528
    const/4 v5, 0x0

    .line 529
    return v5

    .line 530
    :cond_16
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 531
    .line 532
    if-eqz v5, :cond_17

    .line 533
    .line 534
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 535
    .line 536
    iput v8, v5, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 537
    .line 538
    iget-object v5, v5, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 539
    .line 540
    if-eqz v5, :cond_17

    .line 541
    .line 542
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 543
    .line 544
    .line 545
    :cond_17
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 546
    .line 547
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 548
    .line 549
    if-eqz v5, :cond_19

    .line 550
    .line 551
    iget-boolean v6, v5, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 552
    .line 553
    if-eqz v6, :cond_18

    .line 554
    .line 555
    const/4 v10, 0x1

    .line 556
    goto :goto_5

    .line 557
    :cond_18
    const/4 v10, 0x2

    .line 558
    :goto_5
    const-string v6, "cancelAnimationForDisplayChange"

    .line 559
    .line 560
    const/4 v9, 0x1

    .line 561
    invoke-virtual {v5, v10, v6, v9}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 562
    .line 563
    .line 564
    goto :goto_6

    .line 565
    :cond_19
    const/4 v9, 0x1

    .line 566
    :goto_6
    aget-boolean v4, v4, v9

    .line 567
    .line 568
    if-eqz v4, :cond_1a

    .line 569
    .line 570
    int-to-long v3, v3

    .line 571
    int-to-long v5, v8

    .line 572
    int-to-long v9, v2

    .line 573
    int-to-long v11, v7

    .line 574
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 575
    .line 576
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 585
    .line 586
    .line 587
    move-result-object v5

    .line 588
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v18

    .line 596
    const/16 v16, 0x55

    .line 597
    .line 598
    const/16 v17, 0x0

    .line 599
    .line 600
    const-wide v14, 0x5db8437ddc0733fbL    # 2.9587883023284634E143

    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    :cond_1a
    iput v8, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 609
    .line 610
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 611
    .line 612
    if-eqz v3, :cond_1c

    .line 613
    .line 614
    const-string v3, "WindowManager"

    .line 615
    .line 616
    const-string/jumbo v4, "setRotation: rotation="

    .line 617
    .line 618
    .line 619
    invoke-static {v8, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 623
    .line 624
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 625
    .line 626
    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    .line 627
    .line 628
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 629
    .line 630
    iget-object v4, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mBoosterLock:Ljava/lang/Object;

    .line 631
    .line 632
    monitor-enter v4

    .line 633
    :try_start_0
    iget-object v5, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 634
    .line 635
    if-nez v5, :cond_1b

    .line 636
    .line 637
    iget-object v5, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 638
    .line 639
    const-string v6, "PWM_ROTATION"

    .line 640
    .line 641
    invoke-static {v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    iput-object v5, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 646
    .line 647
    if-eqz v5, :cond_1b

    .line 648
    .line 649
    const/16 v6, 0xf

    .line 650
    .line 651
    invoke-virtual {v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 652
    .line 653
    .line 654
    goto :goto_7

    .line 655
    :catchall_0
    move-exception v0

    .line 656
    goto :goto_8

    .line 657
    :cond_1b
    :goto_7
    iget-object v3, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 658
    .line 659
    const-string v5, "HINT_PWM_ROTATION"

    .line 660
    .line 661
    invoke-static {v3, v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    monitor-exit v4

    .line 665
    goto :goto_9

    .line 666
    :goto_8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    throw v0

    .line 668
    :cond_1c
    :goto_9
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 669
    .line 670
    if-eqz v3, :cond_1e

    .line 671
    .line 672
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 673
    .line 674
    if-eqz v3, :cond_1e

    .line 675
    .line 676
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 677
    .line 678
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 679
    .line 680
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 681
    .line 682
    invoke-virtual {v0, v8}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    .line 690
    .line 691
    if-nez v5, :cond_1d

    .line 692
    .line 693
    goto :goto_a

    .line 694
    :cond_1d
    const/4 v5, 0x0

    .line 695
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TspStateController;->setOrientation(ZZ)V

    .line 696
    .line 697
    .line 698
    goto :goto_b

    .line 699
    :cond_1e
    :goto_a
    const/4 v5, 0x0

    .line 700
    :goto_b
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    .line 701
    .line 702
    if-eqz v3, :cond_1f

    .line 703
    .line 704
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 705
    .line 706
    if-eqz v3, :cond_1f

    .line 707
    .line 708
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 709
    .line 710
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 711
    .line 712
    invoke-virtual {v3, v5, v5}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 713
    .line 714
    .line 715
    :cond_1f
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 716
    .line 717
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 718
    .line 719
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 720
    .line 721
    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 722
    .line 723
    if-nez v4, :cond_21

    .line 724
    .line 725
    :cond_20
    const/4 v5, 0x1

    .line 726
    goto :goto_d

    .line 727
    :cond_21
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    if-eqz v4, :cond_22

    .line 732
    .line 733
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    goto :goto_c

    .line 738
    :cond_22
    const/4 v4, 0x0

    .line 739
    :goto_c
    if-eqz v4, :cond_20

    .line 740
    .line 741
    const/4 v5, 0x1

    .line 742
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 743
    .line 744
    .line 745
    move-result v6

    .line 746
    if-eqz v6, :cond_23

    .line 747
    .line 748
    goto :goto_d

    .line 749
    :cond_23
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    const/4 v6, -0x1

    .line 754
    if-ne v4, v6, :cond_24

    .line 755
    .line 756
    goto :goto_d

    .line 757
    :cond_24
    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;

    .line 758
    .line 759
    invoke-direct {v6, v4, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;-><init>(ILcom/android/server/wm/DisplayContent;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v3, v6, v5}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    .line 763
    .line 764
    .line 765
    :goto_d
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 766
    .line 767
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 768
    .line 769
    .line 770
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 771
    .line 772
    iput-boolean v5, v3, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 773
    .line 774
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 775
    .line 776
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 777
    .line 778
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 779
    .line 780
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 781
    .line 782
    new-instance v6, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;

    .line 783
    .line 784
    const/4 v7, 0x0

    .line 785
    invoke-direct {v6, v3, v7}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 789
    .line 790
    .line 791
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 792
    .line 793
    new-instance v5, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;

    .line 794
    .line 795
    const/4 v6, 0x0

    .line 796
    invoke-direct {v5, v3, v6}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    .line 801
    .line 802
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 803
    .line 804
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 805
    .line 806
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 807
    .line 808
    .line 809
    move-result v3

    .line 810
    if-eqz v3, :cond_29

    .line 811
    .line 812
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 813
    .line 814
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 815
    .line 816
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    if-nez v1, :cond_25

    .line 821
    .line 822
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 823
    .line 824
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 825
    .line 826
    if-eqz v1, :cond_26

    .line 827
    .line 828
    new-instance v1, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 829
    .line 830
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 831
    .line 832
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 833
    .line 834
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 835
    .line 836
    invoke-direct {v1, v3, v2, v4}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(III)V

    .line 837
    .line 838
    .line 839
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 840
    .line 841
    const/high16 v3, 0x20000000

    .line 842
    .line 843
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    .line 844
    .line 845
    .line 846
    goto :goto_e

    .line 847
    :cond_25
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 848
    .line 849
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 850
    .line 851
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 852
    .line 853
    .line 854
    move-result-object v3

    .line 855
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    .line 856
    .line 857
    .line 858
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 859
    .line 860
    if-nez v1, :cond_28

    .line 861
    .line 862
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 863
    .line 864
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 865
    .line 866
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 867
    .line 868
    new-instance v4, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    .line 869
    .line 870
    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation;I)V

    .line 871
    .line 872
    .line 873
    const/4 v5, 0x0

    .line 874
    invoke-virtual {v3, v2, v1, v5, v4}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    .line 875
    .line 876
    .line 877
    :cond_26
    :goto_e
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 878
    .line 879
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    .line 880
    .line 881
    if-eqz v2, :cond_27

    .line 882
    .line 883
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    if-eqz v1, :cond_27

    .line 892
    .line 893
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 894
    .line 895
    const-string/jumbo v1, "split_screen_starting"

    .line 896
    .line 897
    .line 898
    const/4 v3, 0x1

    .line 899
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    .line 900
    .line 901
    .line 902
    goto :goto_f

    .line 903
    :cond_27
    const/4 v3, 0x1

    .line 904
    :goto_f
    return v3

    .line 905
    :cond_28
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 906
    .line 907
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 908
    .line 909
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 910
    .line 911
    .line 912
    const/4 v0, 0x0

    .line 913
    throw v0

    .line 914
    :cond_29
    const/4 v3, 0x1

    .line 915
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 916
    .line 917
    iput v3, v4, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 918
    .line 919
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 920
    .line 921
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 922
    .line 923
    const/16 v5, 0xb

    .line 924
    .line 925
    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    const-wide/16 v5, 0x7d0

    .line 933
    .line 934
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 935
    .line 936
    .line 937
    invoke-virtual {v0, v2, v8, v1}, Lcom/android/server/wm/DisplayRotation;->shouldRotateSeamlessly(IIZ)Z

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-eqz v1, :cond_2a

    .line 942
    .line 943
    const/4 v1, 0x0

    .line 944
    iput v1, v0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 945
    .line 946
    const/4 v1, 0x1

    .line 947
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 948
    .line 949
    goto :goto_10

    .line 950
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    .line 951
    .line 952
    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    iget v3, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 958
    .line 959
    iget v1, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 960
    .line 961
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 962
    .line 963
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 964
    .line 965
    const/4 v6, -0x1

    .line 966
    invoke-virtual {v4, v3, v1, v6, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IIILcom/android/server/wm/DisplayContent;)V

    .line 967
    .line 968
    .line 969
    :goto_10
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 970
    .line 971
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 972
    .line 973
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 974
    .line 975
    new-instance v4, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    .line 976
    .line 977
    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation;I)V

    .line 978
    .line 979
    .line 980
    const/4 v0, 0x0

    .line 981
    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    .line 982
    .line 983
    .line 984
    const/4 v0, 0x1

    .line 985
    return v0
.end method

.method public uptimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public useDefaultSettingsProvider()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 2
    .line 3
    return p0
.end method
