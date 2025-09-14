.class public final Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acquireSuspendBlocker(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 13
    .line 14
    or-int/lit16 v0, v0, 0x100

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mDetail:Ljava/lang/String;

    .line 19
    .line 20
    const-string/jumbo p0, "unfinished"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    const-string/jumbo p0, "on state"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    invoke-static {p0, p1}, Lcom/android/server/power/SuspendBlockerMonitor;->addNewCallbackEvent(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final onDefaultDisplayStateChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    iput p1, v1, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayState:I

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const-string p1, "PowerManagerService"

    .line 18
    .line 19
    const-string/jumbo v1, "onDisplayStateChange: mDefaultDisplayReadyByProximity: true"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 34
    .line 35
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 36
    .line 37
    or-int/lit8 p1, p1, 0x8

    .line 38
    .line 39
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final onDisplayStateChange(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    const/16 v2, 0x9

    .line 9
    .line 10
    invoke-virtual {v1, v2, p1}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-boolean v2, p2, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 27
    .line 28
    iget-boolean p2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 29
    .line 30
    if-nez p2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 39
    .line 40
    iget-boolean v2, p2, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 48
    .line 49
    iget-boolean p2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 50
    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_0
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final onProximityNegative()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 9
    .line 10
    iget-boolean v2, v2, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    monitor-exit v1

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    const-string v2, "PowerManagerService"

    .line 20
    .line 21
    const-string v3, "DisplayPowerCallbacks : onProximityNegative()"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 27
    .line 28
    iget v3, v2, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayState:I

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    if-eq v3, v4, :cond_1

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 42
    .line 43
    iget v2, v2, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 44
    .line 45
    if-ne v2, v5, :cond_1

    .line 46
    .line 47
    const-string v2, "PowerManagerService"

    .line 48
    .line 49
    const-string/jumbo v3, "onProximityNegative: mDisplayDefaultReadyByProximity: false"

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 56
    .line 57
    iput-boolean v6, v2, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    .line 58
    .line 59
    :cond_1
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 64
    .line 65
    iget v2, v2, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    .line 66
    .line 67
    if-ne v2, v5, :cond_2

    .line 68
    .line 69
    const-string v2, "PowerManagerService"

    .line 70
    .line 71
    const-string/jumbo v3, "onProximityNegative() ignore DefaultDispalyReady cover screen"

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 78
    .line 79
    iput-boolean v5, v2, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    .line 80
    .line 81
    :cond_2
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 90
    .line 91
    iget v2, v2, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 92
    .line 93
    if-ne v2, v5, :cond_3

    .line 94
    .line 95
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 96
    .line 97
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 98
    .line 99
    if-nez v3, :cond_3

    .line 100
    .line 101
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 102
    .line 103
    invoke-virtual {v2, v6}, Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 107
    .line 108
    iput-boolean v6, v2, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 109
    .line 110
    iput-boolean v6, v2, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    .line 111
    .line 112
    iput-boolean v6, v2, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    .line 113
    .line 114
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 121
    .line 122
    iget v2, v2, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 123
    .line 124
    if-eq v2, v5, :cond_4

    .line 125
    .line 126
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 127
    .line 128
    const/16 v2, 0x6d

    .line 129
    .line 130
    iput v2, v7, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 131
    .line 132
    const-string v2, " proximity negative"

    .line 133
    .line 134
    iput-object v2, v7, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v2, v7, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 137
    .line 138
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    move-object v8, v2

    .line 143
    check-cast v8, Lcom/android/server/power/PowerGroup;

    .line 144
    .line 145
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 146
    .line 147
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v9

    .line 156
    const-string v12, "android.server.power:PROXIMITY"

    .line 157
    .line 158
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    const/16 v13, 0x3e8

    .line 167
    .line 168
    const/16 v15, 0x3e8

    .line 169
    .line 170
    const/16 v16, 0x0

    .line 171
    .line 172
    const/16 v11, 0x6d

    .line 173
    .line 174
    invoke-virtual/range {v7 .. v16}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    .line 175
    .line 176
    .line 177
    :cond_4
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 178
    .line 179
    iget v3, v2, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 180
    .line 181
    or-int/lit16 v3, v3, 0x200

    .line 182
    .line 183
    iput v3, v2, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 184
    .line 185
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 186
    .line 187
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Lcom/android/server/power/PowerGroup;

    .line 192
    .line 193
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 194
    .line 195
    iget-object v4, v4, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 201
    .line 202
    .line 203
    move-result-wide v4

    .line 204
    const/4 v7, 0x0

    .line 205
    const/16 v8, 0x3e8

    .line 206
    .line 207
    const/4 v6, 0x0

    .line 208
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 209
    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 214
    .line 215
    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 218
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    throw v0
.end method

.method public final onProximityPositive()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    iget-boolean v1, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "PowerManagerService"

    .line 17
    .line 18
    const-string v2, "DisplayPowerCallbacks : onProximityPositive()"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 24
    .line 25
    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 36
    .line 37
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 38
    .line 39
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 40
    .line 41
    or-int/lit16 v1, v1, 0x200

    .line 42
    .line 43
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final onStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 9
    .line 10
    or-int/lit8 v1, v1, 0x8

    .line 11
    .line 12
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final releaseSuspendBlocker(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 13
    .line 14
    and-int/lit16 v0, v0, -0xf01

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 17
    .line 18
    const-string/jumbo p0, "unfinished"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const-string/jumbo p0, "on state"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    invoke-static {p0, p1}, Lcom/android/server/power/SuspendBlockerMonitor;->addNewCallbackEvent(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
