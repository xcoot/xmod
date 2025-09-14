.class public final Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public final mGroupId:I

.field public mIsSandmanSummoned:Z

.field public mLastGoToSleepReason:I

.field public mLastPowerOnTime:J

.field public mLastSleepTime:J

.field public mLastUserActivityEvent:I

.field public mLastUserActivityTime:J

.field public mLastUserActivityTimeNoChangeLights:J

.field public mLastWakeTime:J

.field public final mNotifier:Lcom/android/server/power/Notifier;

.field public mPoweringOn:Z

.field public mReady:Z

.field public final mSupportsSandman:Z

.field public final mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

.field public mUserActivitySummary:I

.field public mWakeLockSummary:I

.field public mWakefulness:I

.field public final mWakefulnessListener:Lcom/android/server/power/PowerManagerService$1;


# direct methods
.method public constructor <init>(ILcom/android/server/power/PowerManagerService$1;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;ZJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3
    new-instance v0, Lcom/android/server/power/SuspendBlockerMonitor;

    .line 4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    .line 6
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 7
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$1;

    .line 8
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 9
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 12
    iput-boolean p5, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 13
    iput-wide p6, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 14
    iput-wide p6, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerService$1;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;J)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 17
    new-instance v0, Lcom/android/server/power/SuspendBlockerMonitor;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 21
    iput-object p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$1;

    .line 22
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 23
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 25
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 26
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 27
    iput-wide p4, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 28
    iput-wide p4, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-void
.end method


# virtual methods
.method public getDesiredScreenPolicyLocked(ZZZZZ)I
    .locals 8

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerGroup;->getDesiredScreenPolicyLocked(ZZZZZJ)I

    move-result p0

    return p0
.end method

.method public getDesiredScreenPolicyLocked(ZZZZZJ)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 2
    iget v1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 3
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_2

    return p1

    :cond_2
    if-eqz p2, :cond_3

    return v2

    :cond_3
    if-eqz p5, :cond_4

    return v4

    :cond_4
    and-int/lit8 p2, v1, 0x2

    if-nez p2, :cond_7

    if-eqz p3, :cond_7

    .line 4
    iget p2, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    and-int/2addr p1, p2

    if-nez p1, :cond_7

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    const-wide/16 p1, 0x0

    cmp-long p1, p6, p1

    if-nez p1, :cond_6

    and-int/lit8 p1, v1, 0x4

    if-nez p1, :cond_6

    .line 5
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return p0

    :cond_6
    return v3

    :cond_7
    :goto_0
    return v4

    :cond_8
    :goto_1
    return v2
.end method

.method public final getSuspendBlockerMonitorInfo()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xf0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "    [Group] Id = "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/power/SuspendBlockerMonitor;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    const-string p0, ""

    .line 38
    .line 39
    return-object p0
.end method

.method public final setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v6, p1

    .line 4
    .line 5
    move-wide/from16 v14, p2

    .line 6
    .line 7
    move/from16 v4, p5

    .line 8
    .line 9
    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 10
    .line 11
    if-eq v1, v6, :cond_a

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-ne v6, v5, :cond_0

    .line 15
    .line 16
    iput-wide v14, v0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    .line 17
    .line 18
    iput-boolean v5, v0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    .line 19
    .line 20
    iput-wide v14, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iput-wide v14, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 36
    .line 37
    :cond_1
    :goto_0
    iput v6, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 38
    .line 39
    iget-object v3, v0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$1;

    .line 40
    .line 41
    iget-object v7, v3, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 42
    .line 43
    iput-boolean v5, v7, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 44
    .line 45
    iget v1, v7, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    or-int/2addr v1, v2

    .line 49
    iput v1, v7, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iget v0, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 53
    .line 54
    if-ne v6, v5, :cond_3

    .line 55
    .line 56
    const/16 v8, 0xd

    .line 57
    .line 58
    if-ne v4, v8, :cond_2

    .line 59
    .line 60
    move v12, v5

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v12, v1

    .line 63
    :goto_1
    iget-object v8, v7, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    check-cast v8, Lcom/android/server/power/PowerGroup;

    .line 70
    .line 71
    const/4 v11, 0x0

    .line 72
    move-wide/from16 v9, p2

    .line 73
    .line 74
    move/from16 v13, p4

    .line 75
    .line 76
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v10, v3, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 80
    .line 81
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    .line 82
    .line 83
    if-eqz v7, :cond_4

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    iget v8, v10, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 88
    .line 89
    and-int/lit16 v8, v8, 0x100

    .line 90
    .line 91
    if-eqz v8, :cond_4

    .line 92
    .line 93
    if-eq v6, v5, :cond_4

    .line 94
    .line 95
    invoke-virtual {v7, v5}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget v7, v10, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 99
    .line 100
    const/high16 v8, 0x10000

    .line 101
    .line 102
    or-int/2addr v7, v8

    .line 103
    iput v7, v10, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 104
    .line 105
    const/4 v11, 0x4

    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 109
    .line 110
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    iget-object v7, v7, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 115
    .line 116
    iget-object v7, v7, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 117
    .line 118
    iget-object v7, v7, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 119
    .line 120
    invoke-interface {v7, v8}, Lcom/android/server/input/NativeInputManagerService;->setInteractiveForInternalDisplay(Z)V

    .line 121
    .line 122
    .line 123
    iget-boolean v7, v10, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 124
    .line 125
    if-eqz v7, :cond_5

    .line 126
    .line 127
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_5

    .line 132
    .line 133
    if-ne v4, v11, :cond_5

    .line 134
    .line 135
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    .line 136
    .line 137
    new-instance v8, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/4 v9, 0x2

    .line 140
    invoke-direct {v8, v9, v3}, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object v9, v10, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v12

    .line 152
    invoke-virtual {v7, v8, v12, v13}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    .line 156
    .line 157
    if-eqz v7, :cond_6

    .line 158
    .line 159
    iput v6, v7, Lcom/android/server/power/ScreenCurtainController;->mWakefulness:I

    .line 160
    .line 161
    :cond_6
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    .line 162
    .line 163
    if-eqz v7, :cond_7

    .line 164
    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string/jumbo v9, "onWakefulnessChangedLocked: wakefulness="

    .line 168
    .line 169
    .line 170
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    const-string v9, "ScreenOnKeeper"

    .line 185
    .line 186
    invoke-static {v9, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    iput v6, v7, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    .line 190
    .line 191
    iget-boolean v8, v7, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    .line 192
    .line 193
    if-eqz v8, :cond_7

    .line 194
    .line 195
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_7

    .line 200
    .line 201
    invoke-virtual {v7}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v1}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    .line 205
    .line 206
    .line 207
    :cond_7
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 208
    .line 209
    move v12, v0

    .line 210
    move-object v0, v1

    .line 211
    move v1, v12

    .line 212
    move v13, v2

    .line 213
    move/from16 v2, p1

    .line 214
    .line 215
    move-object v9, v3

    .line 216
    move/from16 v3, p5

    .line 217
    .line 218
    move v7, v5

    .line 219
    move-wide/from16 v4, p2

    .line 220
    .line 221
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->onGroupWakefulnessChangeStarted(IIIJ)V

    .line 222
    .line 223
    .line 224
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    .line 225
    .line 226
    if-eqz v0, :cond_8

    .line 227
    .line 228
    if-nez v12, :cond_8

    .line 229
    .line 230
    if-ne v6, v7, :cond_8

    .line 231
    .line 232
    iget-boolean v0, v10, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 233
    .line 234
    if-eqz v0, :cond_8

    .line 235
    .line 236
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 237
    .line 238
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->contains(I)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 245
    .line 246
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    move-object v1, v0

    .line 251
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 252
    .line 253
    const/16 v16, 0x0

    .line 254
    .line 255
    const/16 v4, 0xb

    .line 256
    .line 257
    move-object v0, v10

    .line 258
    move-wide/from16 v2, p2

    .line 259
    .line 260
    move-object/from16 v5, p8

    .line 261
    .line 262
    move/from16 v6, p4

    .line 263
    .line 264
    move-object/from16 v7, p7

    .line 265
    .line 266
    move/from16 v8, p6

    .line 267
    .line 268
    move-object/from16 v17, v9

    .line 269
    .line 270
    move/from16 v9, v16

    .line 271
    .line 272
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 276
    .line 277
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    move-object v1, v0

    .line 282
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 283
    .line 284
    const/4 v4, 0x0

    .line 285
    const/4 v5, 0x0

    .line 286
    move-object v0, v10

    .line 287
    move-wide/from16 v2, p2

    .line 288
    .line 289
    move/from16 v6, p4

    .line 290
    .line 291
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_8
    move-object/from16 v17, v9

    .line 296
    .line 297
    :goto_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    .line 298
    .line 299
    if-eqz v0, :cond_9

    .line 300
    .line 301
    if-nez v12, :cond_9

    .line 302
    .line 303
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 304
    .line 305
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->contains(I)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_9

    .line 310
    .line 311
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 312
    .line 313
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    move-object v1, v0

    .line 318
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 319
    .line 320
    const/4 v9, 0x0

    .line 321
    const/16 v4, 0xb

    .line 322
    .line 323
    move-object v0, v10

    .line 324
    move-wide/from16 v2, p2

    .line 325
    .line 326
    move-object/from16 v5, p8

    .line 327
    .line 328
    move/from16 v6, p4

    .line 329
    .line 330
    move-object/from16 v7, p7

    .line 331
    .line 332
    move/from16 v8, p6

    .line 333
    .line 334
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    .line 335
    .line 336
    .line 337
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 338
    .line 339
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    move-object v1, v0

    .line 344
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    const/4 v5, 0x0

    .line 348
    move-object v0, v10

    .line 349
    move-wide/from16 v2, p2

    .line 350
    .line 351
    move/from16 v6, p4

    .line 352
    .line 353
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 354
    .line 355
    .line 356
    :cond_9
    move-object/from16 v0, v17

    .line 357
    .line 358
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 359
    .line 360
    move/from16 v1, p5

    .line 361
    .line 362
    move/from16 v2, p4

    .line 363
    .line 364
    move-object/from16 v3, p7

    .line 365
    .line 366
    move-object/from16 v4, p8

    .line 367
    .line 368
    move/from16 v5, p6

    .line 369
    .line 370
    move-wide/from16 v6, p2

    .line 371
    .line 372
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v10}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 376
    .line 377
    .line 378
    :cond_a
    return-void
.end method
