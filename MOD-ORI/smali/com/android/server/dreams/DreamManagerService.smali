.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/dreams/DreamManagerService$1;

.field public final mAmbientDisplayComponent:Landroid/content/ComponentName;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mChargingReceiver:Lcom/android/server/dreams/DreamManagerService$2;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/server/dreams/DreamController;

.field public mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

.field public final mDismissDreamOnActivityStart:Z

.field public final mDockStateReceiver:Lcom/android/server/dreams/DreamManagerService$2;

.field public final mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mDozeEnabledObserver:Lcom/android/server/dreams/DreamManagerService$5;

.field public final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mDreamOverlayServiceName:Landroid/content/ComponentName;

.field public final mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLoggerImpl;

.field public final mDreamsActivatedOnChargeByDefault:Z

.field public final mDreamsActivatedOnDockByDefault:Z

.field public final mDreamsDisabledByAmbientModeSuppressionConfig:Z

.field public final mDreamsEnabledByDefaultConfig:Z

.field public mDreamsEnabledSetting:Z

.field public final mDreamsOnlyEnabledForDockUser:Z

.field public mForceAmbientDisplayEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsCharging:Z

.field public mIsDocked:Z

.field public final mKeepDreamingWhenUnpluggingDefault:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$5;

.field public mSystemDreamComponent:Landroid/content/ComponentName;

.field public final mSystemPropertiesChanged:Lcom/android/server/dreams/DreamManagerService$6;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWhenToDream:I


# direct methods
.method public static -$$Nest$mcanStartDreamingInternal(Lcom/android/server/dreams/DreamManagerService;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Landroid/service/dreams/Flags;->dreamHandlesBeingObscured()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-boolean p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamIsObscured:Z

    .line 27
    .line 28
    xor-int/2addr p1, v1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledSetting:Z

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForDockUser:Z

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    if-gez p1, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    .line 54
    .line 55
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ne p1, v3, :cond_9

    .line 66
    .line 67
    :goto_0
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mUserManager:Landroid/os/UserManager;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    monitor-exit v0

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/os/PowerManagerInternal;->isAmbientDisplaySuppressed()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    const-string p0, "DreamManagerService"

    .line 90
    .line 91
    const-string p1, "Can\'t start dreaming because ambient is suppressed."

    .line 92
    .line 93
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    monitor-exit v0

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    iget p1, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    .line 99
    .line 100
    and-int/lit8 v3, p1, 0x2

    .line 101
    .line 102
    const/4 v4, 0x2

    .line 103
    if-ne v3, v4, :cond_7

    .line 104
    .line 105
    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mIsCharging:Z

    .line 106
    .line 107
    monitor-exit v0

    .line 108
    goto :goto_2

    .line 109
    :cond_7
    and-int/2addr p1, v1

    .line 110
    if-ne p1, v1, :cond_8

    .line 111
    .line 112
    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mIsDocked:Z

    .line 113
    .line 114
    monitor-exit v0

    .line 115
    goto :goto_2

    .line 116
    :cond_8
    monitor-exit v0

    .line 117
    goto :goto_2

    .line 118
    :cond_9
    :goto_1
    monitor-exit v0

    .line 119
    :goto_2
    return v2

    .line 120
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method

.method public static -$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Access denied to process: "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", must have permission "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .locals 14

    .line 1
    const-string/jumbo v0, "mDreamOverlayServiceName="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "getDozeComponent()="

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "mKeepDreamingWhenUnpluggingDefault="

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "mWhenToDream="

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "mIsCharging="

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "mIsDocked="

    .line 17
    .line 18
    .line 19
    const-string/jumbo v6, "mDreamsActivatedOnChargeByDefault="

    .line 20
    .line 21
    .line 22
    const-string/jumbo v7, "mDreamsActivatedOnDockByDefault="

    .line 23
    .line 24
    .line 25
    const-string/jumbo v8, "mDreamsEnabledSetting="

    .line 26
    .line 27
    .line 28
    const-string/jumbo v9, "mDreamsOnlyEnabledForDockUser="

    .line 29
    .line 30
    .line 31
    const-string/jumbo v10, "mForceAmbientDisplayEnabled="

    .line 32
    .line 33
    .line 34
    const-string/jumbo v11, "mCurrentDream="

    .line 35
    .line 36
    .line 37
    iget-object v12, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v12

    .line 40
    :try_start_0
    const-string v13, "DREAM MANAGER (dumpsys dreams)"

    .line 41
    .line 42
    invoke-virtual {p1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 46
    .line 47
    .line 48
    new-instance v13, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v11, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 54
    .line 55
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v11, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v10, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    .line 71
    .line 72
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-boolean v9, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForDockUser:Z

    .line 88
    .line 89
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-boolean v8, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledSetting:Z

    .line 105
    .line 106
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-boolean v7, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnDockByDefault:Z

    .line 122
    .line 123
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-boolean v6, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnChargeByDefault:Z

    .line 139
    .line 140
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-boolean v5, p0, Lcom/android/server/dreams/DreamManagerService;->mIsDocked:Z

    .line 156
    .line 157
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-boolean v4, p0, Lcom/android/server/dreams/DreamManagerService;->mIsCharging:Z

    .line 173
    .line 174
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget v3, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    .line 190
    .line 191
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mKeepDreamingWhenUnpluggingDefault:Z

    .line 207
    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 227
    .line 228
    invoke-virtual {v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamOverlayServiceName:Landroid/content/ComponentName;

    .line 252
    .line 253
    invoke-static {v0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 268
    .line 269
    .line 270
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 271
    .line 272
    new-instance v2, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda6;

    .line 273
    .line 274
    invoke-direct {v2, p0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    .line 275
    .line 276
    .line 277
    const-string v4, ""

    .line 278
    .line 279
    const-wide/16 v5, 0xc8

    .line 280
    .line 281
    move-object v3, p1

    .line 282
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 283
    .line 284
    .line 285
    monitor-exit v12

    .line 286
    return-void

    .line 287
    :catchall_0
    move-exception p0

    .line 288
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    throw p0
.end method

.method public static -$$Nest$msemStartDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;IIIIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 9
    .line 10
    if-ne v2, p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput p2, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenState:I

    .line 17
    .line 18
    iput p4, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenBrightness:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 21
    .line 22
    move v3, p2

    .line 23
    move v4, p3

    .line 24
    move v5, p4

    .line 25
    move v6, p5

    .line 26
    move v7, p6

    .line 27
    invoke-virtual/range {v2 .. v7}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(IIIIZ)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 31
    .line 32
    iget-boolean p2, p1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 33
    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public static -$$Nest$msetSystemDreamComponentInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    .line 5
    .line 6
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    goto :goto_5

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_6

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mKeepDreamingWhenUnpluggingDefault:Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    move p1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move p1, v2

    .line 29
    :goto_0
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda7;

    .line 35
    .line 36
    invoke-direct {p1, p0, v1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/dreams/DreamManagerService;Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-boolean v1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    move v3, v2

    .line 65
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    const-string/jumbo v1, "clear"

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const-string/jumbo v1, "set"

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " system dream component"

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1, v2}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :try_start_4
    throw p0

    .line 102
    :cond_4
    :goto_4
    monitor-exit v0

    .line 103
    :goto_5
    return-void

    .line 104
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    throw p0
.end method

.method public static -$$Nest$mstartDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 9
    .line 10
    if-ne v2, p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput p2, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenState:I

    .line 17
    .line 18
    iput p4, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenBrightness:I

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 21
    .line 22
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(III)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 26
    .line 27
    iget-boolean p2, p1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    iput-boolean p2, p1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 4
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mActivityInterceptorCallback:Lcom/android/server/dreams/DreamManagerService$1;

    .line 8
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;I)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mChargingReceiver:Lcom/android/server/dreams/DreamManagerService$2;

    .line 9
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;I)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDockStateReceiver:Lcom/android/server/dreams/DreamManagerService$2;

    .line 10
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    .line 11
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Lcom/android/server/dreams/DreamManagerService$5;

    .line 12
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Lcom/android/server/dreams/DreamManagerService$6;

    .line 13
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v1, Lcom/android/server/dreams/DreamController;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamManagerService$4;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 16
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 17
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 18
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 19
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mUserManager:Landroid/os/UserManager;

    const/16 v1, 0x40

    .line 21
    const-string/jumbo v2, "dream:doze"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 23
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 24
    new-instance v0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/dreams/DreamUiEventLoggerImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLoggerImpl;

    .line 26
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForDockUser:Z

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDismissDreamOnActivityStart:Z

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnChargeByDefault:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnDockByDefault:Z

    .line 33
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$5;

    invoke-direct {v0, p0, p2}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$5;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x11101c4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mKeepDreamingWhenUnpluggingDefault:Z

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110156

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    .line 36
    invoke-static {}, Lcom/android/server/dreams/Flags;->useBatteryChangedBroadcast()Z

    .line 37
    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-void
.end method


# virtual methods
.method public final cleanupDreamLocked()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamManagerService;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 28
    .line 29
    sget-object v1, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_STOP:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 30
    .line 31
    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLoggerImpl;

    .line 45
    .line 46
    invoke-virtual {v2, v1, v0}, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 50
    .line 51
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 58
    .line 59
    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 62
    .line 63
    return-void
.end method

.method public final getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForDockUser:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-gez p1, :cond_2

    .line 9
    .line 10
    :cond_1
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_2
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_3
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string/jumbo v3, "screensaver_components"

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    move-object v3, v0

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const-string v3, ","

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    array-length v3, v2

    .line 54
    new-array v3, v3, [Landroid/content/ComponentName;

    .line 55
    .line 56
    move v4, v1

    .line 57
    :goto_1
    array-length v5, v2

    .line 58
    if-ge v4, v5, :cond_5

    .line 59
    .line 60
    aget-object v5, v2, v4

    .line 61
    .line 62
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    aput-object v5, v3, v4

    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    array-length v4, v3

    .line 79
    :goto_3
    if-ge v1, v4, :cond_7

    .line 80
    .line 81
    aget-object v5, v3, v1

    .line 82
    .line 83
    invoke-virtual {p0, v5}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_9

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string/jumbo v1, "screensaver_default_component"

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-nez p0, :cond_8

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_8
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_4
    if-eqz v0, :cond_9

    .line 122
    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string p1, "Falling back to default dream "

    .line 126
    .line 127
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const-string p1, "DreamManagerService"

    .line 138
    .line 139
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    new-array p0, p0, [Landroid/content/ComponentName;

    .line 150
    .line 151
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    check-cast p0, [Landroid/content/ComponentName;

    .line 156
    .line 157
    return-object p0
.end method

.method public final isDreamingInternal()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isPreview:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x258

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Lcom/android/server/dreams/DreamManagerService$6;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string/jumbo v0, "doze_pulse_on_double_tap"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Lcom/android/server/dreams/DreamManagerService$5;

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    .line 35
    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDismissDreamOnActivityStart:Z

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mActivityInterceptorCallback:Lcom/android/server/dreams/DreamManagerService$1;

    .line 45
    .line 46
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    .line 52
    .line 53
    const-string v2, "android.intent.action.DOCK_EVENT"

    .line 54
    .line 55
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDockStateReceiver:Lcom/android/server/dreams/DreamManagerService$2;

    .line 59
    .line 60
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/content/IntentFilter;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/android/server/dreams/Flags;->useBatteryChangedBroadcast()Z

    .line 69
    .line 70
    .line 71
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/16 v0, 0x3e8

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mChargingReceiver:Lcom/android/server/dreams/DreamManagerService$2;

    .line 84
    .line 85
    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    new-instance p1, Lcom/android/server/dreams/DreamManagerService$5;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$5;

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$5;

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string/jumbo v0, "screensaver_activate_on_dock"

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$5;

    .line 129
    .line 130
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string/jumbo v0, "screensaver_enabled"

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$5;

    .line 147
    .line 148
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    const-class v0, Landroid/os/BatteryManager;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Landroid/os/BatteryManager;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/os/BatteryManager;->isCharging()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mIsCharging:Z

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->updateWhenToDreamSettings()V

    .line 168
    .line 169
    .line 170
    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "dreams"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$LocalService;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->updateWhenToDreamSettings()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamManagerService;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final requestDreamInternal()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-static {}, Landroid/service/dreams/Flags;->dreamHandlesBeingObscured()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-boolean v2, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamIsObscured:Z

    .line 21
    .line 22
    xor-int/2addr v2, v1

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamService;->comeToFront()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v2, "DreamController"

    .line 39
    .line 40
    const-string v3, "Error asking dream to come to the front"

    .line 41
    .line 42
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 55
    .line 56
    invoke-virtual {p0, v2, v3, v1}, Landroid/os/PowerManagerInternal;->nap(JZ)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final startDreamInternal(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v4

    .line 5
    iget-object v6, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v6

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move-object v0, v1

    .line 28
    :cond_0
    :goto_0
    move-object v1, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    array-length v2, v1

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    aget-object v0, v1, v0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_1
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    move-object v0, p0

    .line 52
    move v3, p2

    .line 53
    move-object v5, p1

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    monitor-exit v6

    .line 61
    return-void

    .line 62
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final startDreamLocked(Landroid/content/ComponentName;ZZILjava/lang/String;)V
    .locals 12

    .line 1
    move-object v9, p0

    .line 2
    move-object v2, p1

    .line 3
    move v4, p2

    .line 4
    move v5, p3

    .line 5
    move/from16 v6, p4

    .line 6
    .line 7
    iget-object v0, v9, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 8
    .line 9
    const-string v1, "DreamManagerService"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v3, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v9, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 26
    .line 27
    iget-boolean v3, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isPreview:Z

    .line 28
    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    iget-boolean v3, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    .line 32
    .line 33
    if-ne v3, v5, :cond_0

    .line 34
    .line 35
    iget v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->userId:I

    .line 36
    .line 37
    if-ne v0, v6, :cond_0

    .line 38
    .line 39
    const-string v0, "Already in target dream."

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const-string v0, "Entering dreamland."

    .line 46
    .line 47
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v0, v9, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 64
    .line 65
    invoke-direct {v0, p1, v6, p2, p3}, Lcom/android/server/dreams/DreamManagerService$DreamRecord;-><init>(Landroid/content/ComponentName;IZZ)V

    .line 66
    .line 67
    .line 68
    iput-object v0, v9, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 71
    .line 72
    iget-object v1, v9, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    iget-object v0, v9, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 81
    .line 82
    sget-object v1, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_START:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 83
    .line 84
    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v9, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v3, v9, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLoggerImpl;

    .line 98
    .line 99
    invoke-virtual {v3, v1, v0}, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v0, v9, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    const-string/jumbo v3, "dream:dream"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    iget-object v0, v9, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 113
    .line 114
    iget-object v3, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 115
    .line 116
    new-instance v11, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;

    .line 117
    .line 118
    move-object v0, v11

    .line 119
    move-object v1, p0

    .line 120
    move-object v2, p1

    .line 121
    move v4, p2

    .line 122
    move v5, p3

    .line 123
    move/from16 v6, p4

    .line 124
    .line 125
    move-object v7, v10

    .line 126
    move-object/from16 v8, p5

    .line 127
    .line 128
    invoke-direct/range {v0 .. v8}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;Landroid/os/Binder;ZZILandroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v11}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v1, v9, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final stopDozingInternal(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 9
    .line 10
    if-ne v2, p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(III)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final stopDreamInternal(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Ljava/lang/String;Z)V

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

.method public final stopDreamLocked(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const-string v1, "DreamManagerService"

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string v0, "Leaving dreamland."

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string v0, "Gently waking up from dream."

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 32
    .line 33
    :goto_0
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;

    .line 34
    .line 35
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final updateWhenToDreamSettings()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "screensaver_activate_on_sleep"

    .line 11
    .line 12
    .line 13
    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnChargeByDefault:Z

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, -0x2

    .line 18
    invoke-static {v1, v2, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v5

    .line 27
    :goto_0
    const-string/jumbo v3, "screensaver_activate_on_dock"

    .line 28
    .line 29
    .line 30
    iget-boolean v7, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnDockByDefault:Z

    .line 31
    .line 32
    invoke-static {v1, v3, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    move v3, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v3, v5

    .line 41
    :goto_1
    add-int/2addr v2, v3

    .line 42
    iput v2, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    .line 43
    .line 44
    const-string/jumbo v2, "screensaver_enabled"

    .line 45
    .line 46
    .line 47
    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 48
    .line 49
    invoke-static {v1, v2, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v4, v5

    .line 57
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledSetting:Z

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final validateDream(Landroid/content/ComponentName;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/high16 v1, 0x10000000

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    const-string v1, "Dream "

    .line 20
    .line 21
    const-string v2, "DreamManagerService"

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " does not exist"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_1
    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 49
    .line 50
    const/16 v4, 0x15

    .line 51
    .line 52
    if-lt v3, v4, :cond_2

    .line 53
    .line 54
    const-string v3, "android.permission.BIND_DREAM_SERVICE"

    .line 55
    .line 56
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " is not available because its manifest is missing the android.permission.BIND_DREAM_SERVICE permission on the dream service declaration."

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return v0

    .line 85
    :cond_2
    const/4 p0, 0x1

    .line 86
    return p0
.end method

.method public final writePulseGestureEnabled()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const-class v0, Lcom/android/server/input/InputManagerService$LocalService;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/input/InputManagerService$LocalService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    :try_start_1
    const-string p0, "1"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    move-object v1, v2

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception p0

    .line 49
    move-object v1, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const-string p0, "0"

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :catch_1
    move-exception p0

    .line 63
    :goto_1
    :try_start_2
    const-string v0, "InputManager"

    .line 64
    .line 65
    const-string v2, "Unable to setPulseGestureEnabled"

    .line 66
    .line 67
    invoke-static {v0, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_1
    :goto_3
    return-void
.end method
