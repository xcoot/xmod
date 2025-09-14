.class public Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBroadcastInProgress:Z

.field public mBroadcastStartTime:J

.field public mBroadcastedInteractiveState:I

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

.field public final mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

.field public final mGoToSleepBroadcastDone:Lcom/android/server/power/Notifier$3;

.field public final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field public final mInjector:Lcom/android/server/power/Notifier$RealInjector;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mInteractivityByGroupId:Landroid/util/SparseArray;

.field public final mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLock:Ljava/lang/Object;

.field public mPendingGoToSleepBroadcast:Z

.field public mPendingInteractiveState:I

.field public mPendingWakeUpBroadcast:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mProximity:Z

.field public final mScreenOffByProximityIntent:Landroid/content/Intent;

.field public final mScreenOffIntent:Landroid/content/Intent;

.field public final mScreenOnByProximityIntent:Landroid/content/Intent;

.field public final mScreenOnIntent:Landroid/content/Intent;

.field public final mScreenOnOffOptions:Landroid/os/Bundle;

.field public final mShowWirelessChargingAnimationConfig:Z

.field public final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

.field public final mSuspendWhenScreenOffDueToProximityConfig:Z

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mUserActivityPending:Z

.field public final mVibrator:Landroid/os/Vibrator;

.field public final mWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field public final mWakeUpBroadcastDone:Lcom/android/server/power/Notifier$3;

.field public final mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [J

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    fill-array-data v0, :array_1

    .line 11
    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 19
    .line 20
    const/16 v0, 0x32

    .line 21
    .line 22
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :array_1
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;Lcom/android/server/policy/WindowManagerPolicy;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/power/Notifier$Interactivity;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/power/Notifier$Interactivity;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/power/Notifier$3;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, p0, v2}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Lcom/android/server/power/Notifier$3;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/power/Notifier$3;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {v0, p0, v2}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Lcom/android/server/power/Notifier$3;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    iput-object p7, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 55
    .line 56
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 57
    .line 58
    const-class p7, Landroid/app/AppOpsManager;

    .line 59
    .line 60
    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p7

    .line 64
    check-cast p7, Landroid/app/AppOpsManager;

    .line 65
    .line 66
    iput-object p7, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 67
    .line 68
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 69
    .line 70
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 71
    .line 72
    new-instance p4, Lcom/android/server/power/WakefulnessSessionObserver;

    .line 73
    .line 74
    invoke-direct {p4, p2}, Lcom/android/server/power/WakefulnessSessionObserver;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 78
    .line 79
    const-class p4, Landroid/app/ActivityManagerInternal;

    .line 80
    .line 81
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    check-cast p4, Landroid/app/ActivityManagerInternal;

    .line 86
    .line 87
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 88
    .line 89
    const-class p4, Lcom/android/server/input/InputManagerService$LocalService;

    .line 90
    .line 91
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    check-cast p4, Lcom/android/server/input/InputManagerService$LocalService;

    .line 96
    .line 97
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 98
    .line 99
    const-class p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 100
    .line 101
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    check-cast p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 106
    .line 107
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 108
    .line 109
    const-class p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 110
    .line 111
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    check-cast p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 116
    .line 117
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 118
    .line 119
    const-class p4, Landroid/hardware/display/DisplayManagerInternal;

    .line 120
    .line 121
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    check-cast p4, Landroid/hardware/display/DisplayManagerInternal;

    .line 126
    .line 127
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 128
    .line 129
    const-class p4, Landroid/app/trust/TrustManager;

    .line 130
    .line 131
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    check-cast p4, Landroid/app/trust/TrustManager;

    .line 136
    .line 137
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 138
    .line 139
    const-class p4, Landroid/os/Vibrator;

    .line 140
    .line 141
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    check-cast p4, Landroid/os/Vibrator;

    .line 146
    .line 147
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 148
    .line 149
    new-instance p4, Lcom/android/server/power/Notifier$NotifierHandler;

    .line 150
    .line 151
    invoke-direct {p4, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    .line 152
    .line 153
    .line 154
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 155
    .line 156
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 157
    .line 158
    new-instance p1, Landroid/content/Intent;

    .line 159
    .line 160
    const-string p4, "android.intent.action.SCREEN_ON"

    .line 161
    .line 162
    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 166
    .line 167
    const/high16 p5, 0x50200000

    .line 168
    .line 169
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    new-instance p1, Landroid/content/Intent;

    .line 173
    .line 174
    const-string p6, "android.intent.action.SCREEN_OFF"

    .line 175
    .line 176
    invoke-direct {p1, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 180
    .line 181
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const/4 p5, 0x1

    .line 189
    invoke-virtual {p1, p5}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 193
    .line 194
    .line 195
    move-result-object p6

    .line 196
    invoke-virtual {p6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p6

    .line 200
    invoke-virtual {p1, p6, p4}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 201
    .line 202
    .line 203
    const/4 p4, 0x2

    .line 204
    invoke-virtual {p1, p4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    .line 212
    .line 213
    iput-boolean p5, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const p4, 0x1110224

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    .line 227
    .line 228
    new-instance p1, Lcom/android/server/power/Notifier$RealInjector;

    .line 229
    .line 230
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object p1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$RealInjector;

    .line 234
    .line 235
    new-instance p1, Lcom/android/server/power/WakeLockLog;

    .line 236
    .line 237
    new-instance p4, Lcom/android/server/power/WakeLockLog$Injector;

    .line 238
    .line 239
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-direct {p1, p4, p2}, Lcom/android/server/power/WakeLockLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V

    .line 243
    .line 244
    .line 245
    iput-object p1, p0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 246
    .line 247
    :try_start_0
    invoke-interface {p3, p5}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    .line 250
    :catch_0
    const/16 p1, 0x21

    .line 251
    .line 252
    invoke-static {p1, p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 253
    .line 254
    .line 255
    new-instance p1, Landroid/content/Intent;

    .line 256
    .line 257
    const-string p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 258
    .line 259
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnByProximityIntent:Landroid/content/Intent;

    .line 263
    .line 264
    const/high16 p2, 0x50000000

    .line 265
    .line 266
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    new-instance p1, Landroid/content/Intent;

    .line 270
    .line 271
    const-string p3, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 272
    .line 273
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffByProximityIntent:Landroid/content/Intent;

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 282
    .line 283
    new-instance p2, Lcom/android/server/power/Notifier$Interactivity;

    .line 284
    .line 285
    invoke-direct {p2}, Lcom/android/server/power/Notifier$Interactivity;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    const-class p1, Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 292
    .line 293
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    check-cast p1, Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 298
    .line 299
    iput-object p1, p0, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 300
    .line 301
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 15
    .line 16
    .line 17
    const-string v1, "Wakefulness Session Observer:"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "default timeout: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    .line 30
    .line 31
    const-string/jumbo v3, "override timeout: "

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ge v0, v2, :cond_1

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    .line 73
    .line 74
    iget-object v3, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v6, "Wakefulness Session Power Group powerGroupId: "

    .line 88
    .line 89
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 105
    .line 106
    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v6, "current wakefulness: "

    .line 110
    .line 111
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentWakefulness:I

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v6, "current user activity event: "

    .line 129
    .line 130
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 134
    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-wide v5, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    .line 146
    .line 147
    sub-long v5, v3, v5

    .line 148
    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v8, "current user activity duration: "

    .line 152
    .line 153
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string/jumbo v6, "previous user activity event: "

    .line 169
    .line 170
    .line 171
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 175
    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-wide v5, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    .line 187
    .line 188
    sub-long/2addr v3, v5

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string/jumbo v6, "previous user activity duration: "

    .line 192
    .line 193
    .line 194
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v4, "is in override timeout: "

    .line 210
    .line 211
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 229
    .line 230
    .line 231
    add-int/lit8 v0, v0, 0x1

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final getBatteryStatsWakeLockMonitorType(I)I
    .locals 3

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_4

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    if-eq p1, v2, :cond_3

    .line 15
    .line 16
    const/16 v1, 0x20

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    const/16 p0, 0x80

    .line 22
    .line 23
    if-eq p1, p0, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    const/16 p0, 0x12

    .line 27
    .line 28
    return p0

    .line 29
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    return v0

    .line 35
    :cond_3
    return v1

    .line 36
    :cond_4
    return v0
.end method

.method public final handleLateGlobalInteractiveChange()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 9
    .line 10
    iget-wide v4, v3, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 11
    .line 12
    sub-long/2addr v1, v4

    .line 13
    long-to-int v1, v1

    .line 14
    iget-boolean v2, v3, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 19
    .line 20
    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 45
    .line 46
    iget v2, v2, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 47
    .line 48
    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 53
    .line 54
    new-instance v5, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/Notifier;II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x2

    .line 63
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 64
    .line 65
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 68
    .line 69
    .line 70
    :goto_0
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final handleLateInteractiveChange(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "no Interactivity entry for groupId:"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/power/Notifier$Interactivity;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string p0, "PowerManagerNotifier"

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-boolean v0, v2, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 43
    .line 44
    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-direct {v3, p0, p1, v2, v4}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 55
    .line 56
    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    invoke-direct {v3, p0, p1, v2, v4}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :goto_0
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZII)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$RealInjector;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v7

    .line 22
    new-instance v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p0

    .line 26
    move v3, p3

    .line 27
    move-object v4, p2

    .line 28
    move v5, p4

    .line 29
    move v6, p5

    .line 30
    move-object v9, p1

    .line 31
    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIJLandroid/os/IWakeLockCallback;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final onGlobalWakefulnessChangeStarted(IIJ)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/power/Notifier$2;

    .line 8
    .line 9
    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 16
    .line 17
    iget-boolean v1, p1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 18
    .line 19
    if-eq v1, v0, :cond_5

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 29
    .line 30
    iget-object v1, p1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setInteractive(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v2

    .line 44
    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v1, v3}, Lcom/android/server/input/BatteryController;->updatePollingLocked(Z)V

    .line 48
    .line 49
    .line 50
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 51
    iget-object v1, p1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 54
    .line 55
    invoke-interface {v1, v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->onInteractiveChanged(Z)V

    .line 56
    .line 57
    .line 58
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    iget-object v1, p1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v1

    .line 69
    :try_start_1
    iget-object p1, p1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 76
    .line 77
    check-cast v2, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 84
    .line 85
    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 86
    .line 87
    check-cast v2, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda1;

    .line 94
    .line 95
    invoke-direct {v3, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 102
    .line 103
    check-cast p1, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 106
    .line 107
    .line 108
    :cond_1
    monitor-exit v1

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0

    .line 113
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 116
    .line 117
    .line 118
    :try_start_2
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 119
    .line 120
    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .line 122
    .line 123
    :catch_0
    const/16 p1, 0x21

    .line 124
    .line 125
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 129
    .line 130
    iput-boolean v0, p1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    iput p2, p1, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iput p2, p1, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 141
    .line 142
    :goto_1
    iput-wide p3, p1, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 145
    .line 146
    monitor-enter p1

    .line 147
    :try_start_3
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 148
    .line 149
    iget-boolean p2, p2, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 150
    .line 151
    if-eqz p2, :cond_4

    .line 152
    .line 153
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 154
    .line 155
    new-instance p3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;

    .line 156
    .line 157
    const/4 p4, 0x0

    .line 158
    invoke-direct {p3, p0, p4}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/power/Notifier;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    .line 163
    .line 164
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 165
    .line 166
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    goto :goto_3

    .line 174
    :cond_4
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 175
    .line 176
    new-instance p3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;

    .line 177
    .line 178
    const/4 p4, 0x1

    .line 179
    invoke-direct {p3, p0, p4}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/power/Notifier;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    .line 184
    .line 185
    :goto_2
    monitor-exit p1

    .line 186
    goto :goto_4

    .line 187
    :goto_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    throw p0

    .line 189
    :catchall_2
    move-exception p0

    .line 190
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 191
    throw p0

    .line 192
    :cond_5
    :goto_4
    return-void
.end method

.method public final onGroupWakefulnessChangeStarted(IIIJ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p4

    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    iget-object v6, v0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    check-cast v6, Lcom/android/server/power/Notifier$Interactivity;

    .line 20
    .line 21
    const/4 v14, 0x1

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    new-instance v6, Lcom/android/server/power/Notifier$Interactivity;

    .line 25
    .line 26
    invoke-direct {v6}, Lcom/android/server/power/Notifier$Interactivity;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v7, v0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move v7, v14

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v7, 0x0

    .line 37
    :goto_0
    if-nez v7, :cond_1

    .line 38
    .line 39
    iget-boolean v7, v6, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 40
    .line 41
    if-eq v7, v5, :cond_10

    .line 42
    .line 43
    :cond_1
    iget-boolean v7, v6, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 44
    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-boolean v5, v6, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    iput v2, v6, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iput v2, v6, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 58
    .line 59
    :goto_1
    iput-wide v3, v6, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 60
    .line 61
    iput-boolean v14, v6, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 62
    .line 63
    const-string/jumbo v5, "startedEarlyWakingUp: interactive: "

    .line 64
    .line 65
    .line 66
    const-string/jumbo v6, "no Interactivity entry for groupId:"

    .line 67
    .line 68
    .line 69
    iget-object v7, v0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v7

    .line 72
    :try_start_0
    iget-object v8, v0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    check-cast v8, Lcom/android/server/power/Notifier$Interactivity;

    .line 79
    .line 80
    if-nez v8, :cond_4

    .line 81
    .line 82
    const-string v5, "PowerManagerNotifier"

    .line 83
    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    monitor-exit v7

    .line 100
    goto :goto_3

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto/16 :goto_a

    .line 103
    .line 104
    :cond_4
    if-nez v1, :cond_5

    .line 105
    .line 106
    iget-boolean v6, v8, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 107
    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    const-string v6, "PowerManagerNotifier"

    .line 111
    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v5, v8, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 118
    .line 119
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v5, " reason: "

    .line 123
    .line 124
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v5, v8, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 128
    .line 129
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget-object v5, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 140
    .line 141
    iget v6, v8, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 142
    .line 143
    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->startedEarlyWakingUp(I)V

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-boolean v5, v8, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 149
    .line 150
    if-eqz v5, :cond_6

    .line 151
    .line 152
    iget-object v5, v0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 153
    .line 154
    new-instance v6, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    .line 155
    .line 156
    const/4 v9, 0x2

    .line 157
    invoke-direct {v6, v0, v1, v8, v9}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    iget-object v5, v0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 165
    .line 166
    new-instance v6, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    .line 167
    .line 168
    const/4 v9, 0x3

    .line 169
    invoke-direct {v6, v0, v1, v8, v9}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .line 174
    .line 175
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_3
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 177
    .line 178
    iget-object v5, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 179
    .line 180
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-nez v5, :cond_7

    .line 185
    .line 186
    iget-object v5, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 187
    .line 188
    new-instance v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    .line 189
    .line 190
    invoke-direct {v6, v0, v1}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    iget-object v0, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    .line 203
    .line 204
    move/from16 v1, p2

    .line 205
    .line 206
    iput v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentWakefulness:I

    .line 207
    .line 208
    iget-boolean v5, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    .line 209
    .line 210
    invoke-static/range {p2 .. p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-ne v5, v6, :cond_8

    .line 215
    .line 216
    goto/16 :goto_9

    .line 217
    .line 218
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    iput-boolean v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    .line 223
    .line 224
    iget v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    .line 225
    .line 226
    iget-object v12, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 227
    .line 228
    const/4 v13, 0x2

    .line 229
    if-eqz v1, :cond_a

    .line 230
    .line 231
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveStateOnStartTimestamp:J

    .line 232
    .line 233
    iget-wide v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    .line 234
    .line 235
    const-wide/16 v14, -0x1

    .line 236
    .line 237
    cmp-long v5, v1, v14

    .line 238
    .line 239
    if-eqz v5, :cond_10

    .line 240
    .line 241
    sub-long v1, v3, v1

    .line 242
    .line 243
    const-wide/16 v7, 0x1388

    .line 244
    .line 245
    cmp-long v1, v1, v7

    .line 246
    .line 247
    if-gez v1, :cond_9

    .line 248
    .line 249
    iget-object v1, v12, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 250
    .line 251
    invoke-static {v12}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    iget v5, v12, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    int-to-long v8, v5

    .line 261
    int-to-long v10, v2

    .line 262
    const/16 v5, 0x344

    .line 263
    .line 264
    move v7, v13

    .line 265
    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    .line 266
    .line 267
    .line 268
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 269
    .line 270
    :cond_9
    iput-wide v14, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    .line 271
    .line 272
    goto/16 :goto_9

    .line 273
    .line 274
    :cond_a
    iget v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 275
    .line 276
    iget-wide v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    .line 277
    .line 278
    sub-long v16, v3, v7

    .line 279
    .line 280
    const/4 v10, 0x4

    .line 281
    const/4 v11, 0x5

    .line 282
    if-ne v2, v10, :cond_d

    .line 283
    .line 284
    iget v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 285
    .line 286
    iget-wide v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    .line 287
    .line 288
    sub-long v16, v3, v7

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_c

    .line 295
    .line 296
    iget v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    .line 297
    .line 298
    if-ne v2, v11, :cond_b

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_b
    move/from16 v19, v10

    .line 302
    .line 303
    move/from16 v20, v11

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_c
    :goto_4
    iget-object v2, v12, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 307
    .line 308
    invoke-static {v12}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    iget v7, v12, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    int-to-long v8, v7

    .line 318
    int-to-long v14, v5

    .line 319
    const/16 v5, 0x344

    .line 320
    .line 321
    move v7, v11

    .line 322
    move/from16 v19, v10

    .line 323
    .line 324
    move/from16 v20, v11

    .line 325
    .line 326
    move-wide v10, v14

    .line 327
    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    .line 328
    .line 329
    .line 330
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 331
    .line 332
    const/4 v2, -0x1

    .line 333
    iput v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    .line 334
    .line 335
    :goto_5
    move-object v6, v12

    .line 336
    move v9, v13

    .line 337
    move/from16 v18, v9

    .line 338
    .line 339
    move-wide/from16 v13, v16

    .line 340
    .line 341
    const/4 v2, 0x0

    .line 342
    const/4 v5, 0x1

    .line 343
    goto :goto_6

    .line 344
    :cond_d
    move/from16 v19, v10

    .line 345
    .line 346
    move/from16 v20, v11

    .line 347
    .line 348
    if-ne v2, v13, :cond_f

    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_e

    .line 355
    .line 356
    invoke-static {v12}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    iget v5, v12, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 361
    .line 362
    sub-int/2addr v2, v5

    .line 363
    iget-object v7, v12, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 364
    .line 365
    invoke-static {v12}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    int-to-long v10, v5

    .line 373
    int-to-long v14, v8

    .line 374
    const/16 v7, 0x344

    .line 375
    .line 376
    move v8, v6

    .line 377
    const/4 v5, 0x1

    .line 378
    move v9, v5

    .line 379
    move-object v6, v12

    .line 380
    move/from16 v18, v13

    .line 381
    .line 382
    move-wide v12, v14

    .line 383
    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    .line 384
    .line 385
    .line 386
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 387
    .line 388
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    .line 389
    .line 390
    move v9, v5

    .line 391
    move-wide/from16 v13, v16

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_e
    move-object v6, v12

    .line 395
    move/from16 v18, v13

    .line 396
    .line 397
    const/4 v5, 0x1

    .line 398
    move v9, v5

    .line 399
    move-wide/from16 v13, v16

    .line 400
    .line 401
    const/4 v2, 0x0

    .line 402
    goto :goto_6

    .line 403
    :cond_f
    move-object v6, v12

    .line 404
    move/from16 v18, v13

    .line 405
    .line 406
    const/4 v5, 0x1

    .line 407
    move-wide/from16 v13, v16

    .line 408
    .line 409
    const/4 v2, 0x0

    .line 410
    const/4 v9, 0x0

    .line 411
    :goto_6
    iget-wide v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveStateOnStartTimestamp:J

    .line 412
    .line 413
    sub-long v10, v3, v7

    .line 414
    .line 415
    iget-object v3, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    packed-switch v1, :pswitch_data_0

    .line 421
    .line 422
    .line 423
    const/4 v12, 0x0

    .line 424
    goto :goto_8

    .line 425
    :pswitch_0
    const/4 v1, 0x6

    .line 426
    :goto_7
    move v12, v1

    .line 427
    goto :goto_8

    .line 428
    :pswitch_1
    move/from16 v12, v20

    .line 429
    .line 430
    goto :goto_8

    .line 431
    :pswitch_2
    move/from16 v12, v19

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :pswitch_3
    const/4 v1, 0x3

    .line 435
    goto :goto_7

    .line 436
    :pswitch_4
    move/from16 v12, v18

    .line 437
    .line 438
    goto :goto_8

    .line 439
    :pswitch_5
    move v12, v5

    .line 440
    :goto_8
    int-to-long v1, v2

    .line 441
    iget v8, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    .line 442
    .line 443
    const/16 v7, 0x345

    .line 444
    .line 445
    move-wide v15, v1

    .line 446
    invoke-static/range {v7 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJJ)V

    .line 447
    .line 448
    .line 449
    :cond_10
    :goto_9
    return-void

    .line 450
    :goto_a
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    throw v0

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onScreenStateChangeStartedByProximity(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mProximity:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/power/Notifier$1;

    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mProximity:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onUserActivity(III)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2
    .line 3
    invoke-interface {v0, p3, p2}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/android/server/power/WakefulnessSessionObserver;->notifyUserActivity(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p3

    .line 18
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p3

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final onWakeLockAcquired(IIILandroid/os/IWakeLockCallback;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    move-object/from16 v2, p4

    .line 9
    .line 10
    move-object/from16 v3, p6

    .line 11
    .line 12
    move/from16 v5, p2

    .line 13
    .line 14
    move/from16 v6, p1

    .line 15
    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZII)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    .line 20
    .line 21
    .line 22
    move-result v14

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const/16 v17, 0x1

    .line 26
    .line 27
    if-ltz v14, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x3e8

    .line 30
    .line 31
    if-ne v8, v1, :cond_0

    .line 32
    .line 33
    const/high16 v1, 0x40000000    # 2.0f

    .line 34
    .line 35
    and-int v1, p1, v1

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    move/from16 v15, v17

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move/from16 v15, v16

    .line 43
    .line 44
    :goto_0
    if-eqz p5, :cond_1

    .line 45
    .line 46
    :try_start_0
    iget-object v9, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 47
    .line 48
    move-object/from16 v10, p5

    .line 49
    .line 50
    move/from16 v11, p3

    .line 51
    .line 52
    move-object/from16 v12, p6

    .line 53
    .line 54
    move-object/from16 v13, p8

    .line 55
    .line 56
    invoke-interface/range {v9 .. v15}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 61
    .line 62
    move/from16 v2, p2

    .line 63
    .line 64
    move/from16 v3, p3

    .line 65
    .line 66
    move-object/from16 v4, p6

    .line 67
    .line 68
    move-object/from16 v5, p8

    .line 69
    .line 70
    move v6, v14

    .line 71
    move v7, v15

    .line 72
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 76
    .line 77
    const/16 v2, 0x28

    .line 78
    .line 79
    move-object/from16 v3, p7

    .line 80
    .line 81
    invoke-virtual {v1, v2, v8, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    const-wide/16 v6, -0x1

    .line 98
    .line 99
    move/from16 v3, p2

    .line 100
    .line 101
    move-object/from16 v4, p6

    .line 102
    .line 103
    move/from16 v5, p1

    .line 104
    .line 105
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(IILjava/lang/String;IJ)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 109
    .line 110
    const v1, 0xffff

    .line 111
    .line 112
    .line 113
    and-int v1, p1, v1

    .line 114
    .line 115
    const/16 v2, 0x100

    .line 116
    .line 117
    if-ne v1, v2, :cond_4

    .line 118
    .line 119
    move/from16 v1, v16

    .line 120
    .line 121
    :goto_2
    iget-object v2, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-ge v1, v2, :cond_5

    .line 128
    .line 129
    iget-object v2, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    .line 136
    .line 137
    iget-object v3, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 138
    .line 139
    iget-object v3, v3, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter v3

    .line 142
    :try_start_1
    iget v4, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 143
    .line 144
    add-int/lit8 v4, v4, 0x1

    .line 145
    .line 146
    iput v4, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 147
    .line 148
    monitor-exit v3

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    throw v0

    .line 155
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    :cond_5
    return-void
.end method

.method public final onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    move/from16 v15, p4

    .line 6
    .line 7
    move/from16 v13, p9

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move-object/from16 v1, p0

    .line 11
    .line 12
    move-object/from16 v2, p8

    .line 13
    .line 14
    move-object/from16 v3, p2

    .line 15
    .line 16
    move/from16 v5, p4

    .line 17
    .line 18
    move/from16 v6, p1

    .line 19
    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    .line 24
    .line 25
    .line 26
    move-result v21

    .line 27
    if-ltz v21, :cond_1

    .line 28
    .line 29
    if-eqz p6, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 32
    .line 33
    move-object/from16 v16, v1

    .line 34
    .line 35
    move-object/from16 v17, p6

    .line 36
    .line 37
    move/from16 v18, p5

    .line 38
    .line 39
    move-object/from16 v19, p2

    .line 40
    .line 41
    move-object/from16 v20, p7

    .line 42
    .line 43
    invoke-interface/range {v16 .. v21}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 48
    .line 49
    move/from16 v2, p4

    .line 50
    .line 51
    move/from16 v3, p5

    .line 52
    .line 53
    move-object/from16 v4, p2

    .line 54
    .line 55
    move-object/from16 v5, p7

    .line 56
    .line 57
    move/from16 v6, v21

    .line 58
    .line 59
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 63
    .line 64
    const/16 v2, 0x28

    .line 65
    .line 66
    invoke-virtual {v1, v2, v15, v7}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :catch_0
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    iget-object v8, v0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 80
    .line 81
    const/4 v9, 0x2

    .line 82
    const/4 v12, 0x0

    .line 83
    const-wide/16 v1, -0x1

    .line 84
    .line 85
    move/from16 v10, p4

    .line 86
    .line 87
    move-object/from16 v11, p2

    .line 88
    .line 89
    move v3, v13

    .line 90
    move-wide v13, v1

    .line 91
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(IILjava/lang/String;IJ)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v3, v13

    .line 96
    :goto_1
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 97
    .line 98
    const v2, 0xffff

    .line 99
    .line 100
    .line 101
    and-int v2, p1, v2

    .line 102
    .line 103
    const/16 v4, 0x100

    .line 104
    .line 105
    const/4 v5, 0x6

    .line 106
    if-ne v2, v4, :cond_5

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    move v6, v4

    .line 110
    :goto_2
    iget-object v8, v1, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-ge v6, v8, :cond_6

    .line 117
    .line 118
    iget-object v8, v1, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    .line 125
    .line 126
    iget-object v9, v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 127
    .line 128
    iget-object v9, v9, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v9

    .line 131
    :try_start_1
    iget v10, v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 132
    .line 133
    add-int/lit8 v10, v10, -0x1

    .line 134
    .line 135
    iput v10, v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 136
    .line 137
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-virtual {v8}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_4

    .line 143
    .line 144
    iput v3, v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    .line 145
    .line 146
    iget-object v9, v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 147
    .line 148
    iget-object v9, v9, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v9

    .line 157
    iget-wide v11, v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 158
    .line 159
    sub-long/2addr v9, v11

    .line 160
    const-wide/16 v11, 0x3e8

    .line 161
    .line 162
    cmp-long v9, v9, v11

    .line 163
    .line 164
    if-gez v9, :cond_3

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 168
    .line 169
    .line 170
    move/from16 v18, v4

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :pswitch_0
    const/4 v9, 0x4

    .line 174
    move/from16 v18, v9

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_1
    move/from16 v18, v5

    .line 178
    .line 179
    :goto_3
    iget-object v9, v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 180
    .line 181
    iget-object v10, v9, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 182
    .line 183
    iget v8, v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    .line 184
    .line 185
    iget v11, v9, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 186
    .line 187
    invoke-static {v9}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    int-to-long v10, v11

    .line 195
    int-to-long v12, v9

    .line 196
    const/16 v16, 0x344

    .line 197
    .line 198
    move/from16 v17, v8

    .line 199
    .line 200
    move-wide/from16 v19, v10

    .line 201
    .line 202
    move-wide/from16 v21, v12

    .line 203
    .line 204
    invoke-static/range {v16 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    .line 205
    .line 206
    .line 207
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    throw v0

    .line 213
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    :cond_6
    if-eq v2, v5, :cond_7

    .line 217
    .line 218
    const/16 v1, 0xa

    .line 219
    .line 220
    if-eq v2, v1, :cond_7

    .line 221
    .line 222
    const/16 v1, 0x1a

    .line 223
    .line 224
    if-eq v2, v1, :cond_7

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_7
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 228
    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    invoke-virtual {v0, v7, v15}, Lcom/samsung/android/edge/EdgeManagerInternal;->hideForWakeLock(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    :cond_8
    :goto_5
    return-void

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final playChargingStartedFeedback(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "charging_sounds_enabled"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string/jumbo v4, "zen_mode"

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    move v3, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v3, v1

    .line 38
    :goto_1
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;

    .line 54
    .line 55
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/Notifier;IZ)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final sendNextBroadcast()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 12
    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 16
    .line 17
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 24
    .line 25
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    if-ne v1, v4, :cond_4

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 39
    .line 40
    if-ne v1, v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 53
    .line 54
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 58
    .line 59
    if-nez v1, :cond_6

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 62
    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 66
    .line 67
    if-ne v1, v4, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 80
    .line 81
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 82
    .line 83
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 90
    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/16 v0, 0xaa5

    .line 93
    .line 94
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 95
    .line 96
    .line 97
    const/16 v0, 0xaa7

    .line 98
    .line 99
    if-ne v1, v4, :cond_8

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 112
    .line 113
    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 114
    .line 115
    const-string/jumbo v2, "why"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 124
    .line 125
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Lcom/android/server/power/Notifier$3;

    .line 126
    .line 127
    iget-object v10, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v7, -0x1

    .line 132
    const/4 v8, 0x0

    .line 133
    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_8
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 165
    .line 166
    iget-object v6, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 167
    .line 168
    iget-object v7, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Lcom/android/server/power/Notifier$3;

    .line 169
    .line 170
    iget-object v12, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    .line 171
    .line 172
    const/4 v8, 0x0

    .line 173
    const/4 v11, 0x0

    .line 174
    const/4 v9, -0x1

    .line 175
    const/4 v10, 0x0

    .line 176
    invoke-virtual/range {v5 .. v12}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_9
    const/4 v1, 0x3

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 197
    .line 198
    .line 199
    :goto_3
    return-void

    .line 200
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    throw p0
.end method

.method public final updatePendingBroadcastLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 23
    .line 24
    const-string/jumbo v1, "unknown"

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
