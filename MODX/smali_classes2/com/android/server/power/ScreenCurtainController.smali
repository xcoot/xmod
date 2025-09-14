.class public final Lcom/android/server/power/ScreenCurtainController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public final mCallStateCallback:Lcom/android/server/power/ScreenCurtainController$CallStateCallback;

.field public final mContext:Landroid/content/Context;

.field public final mDeathRecipient:Lcom/android/server/power/ScreenCurtainController$3;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDslToken:Landroid/os/IBinder;

.field public final mFoldStateListener:Lcom/android/server/power/ScreenCurtainController$1;

.field public mFolded:Z

.field public mFoldedWhenEnabled:Z

.field public final mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

.field public final mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

.field public final mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

.field public mLastCallState:I

.field public mLastScreenCurtainDisabledReason:I

.field public mLastScreenCurtainDisabledTime:J

.field public mLastUserActivityTime:J

.field public final mLock:Ljava/lang/Object;

.field public final mNotificationListener:Lcom/android/server/power/ScreenCurtainController$NotificationListener;

.field public mPackageNameOnScreenCurtain:Ljava/lang/String;

.field public mPenInsertStateInitialized:Z

.field public final mReceiver:Lcom/android/server/power/ScreenCurtainController$2;

.field public mScreenCurtainEnabled:Z

.field public final mServiceIntent:Landroid/content/Intent;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToken:Landroid/os/IBinder;

.field public mWakefulness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Looper;Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mPackageNameOnScreenCurtain:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/android/server/power/ScreenCurtainController;->mWakefulness:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/power/ScreenCurtainController;->mLastCallState:I

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/power/ScreenCurtainController$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/power/ScreenCurtainController$1;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mFoldStateListener:Lcom/android/server/power/ScreenCurtainController$1;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/power/ScreenCurtainController$2;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/power/ScreenCurtainController$2;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mReceiver:Lcom/android/server/power/ScreenCurtainController$2;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/power/ScreenCurtainController$3;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/server/power/ScreenCurtainController$3;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mDeathRecipient:Lcom/android/server/power/ScreenCurtainController$3;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance p2, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 40
    .line 41
    invoke-direct {p2, p0, p3}, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;-><init>(Lcom/android/server/power/ScreenCurtainController;Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 45
    .line 46
    const-class p3, Landroid/telephony/TelephonyManager;

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 55
    .line 56
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 65
    .line 66
    iput-object p4, p0, Lcom/android/server/power/ScreenCurtainController;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 67
    .line 68
    sget-boolean p4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 69
    .line 70
    if-eqz p4, :cond_0

    .line 71
    .line 72
    new-instance p4, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-direct {p4, p0, v0}, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenCurtainController;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :cond_0
    new-instance p2, Lcom/android/server/power/ScreenCurtainController$NotificationListener;

    .line 82
    .line 83
    invoke-direct {p2, p0}, Lcom/android/server/power/ScreenCurtainController$NotificationListener;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lcom/android/server/power/ScreenCurtainController;->mNotificationListener:Lcom/android/server/power/ScreenCurtainController$NotificationListener;

    .line 87
    .line 88
    new-instance p2, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lcom/android/server/power/ScreenCurtainController;->mCallStateCallback:Lcom/android/server/power/ScreenCurtainController$CallStateCallback;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p3, p1, p2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->INSTANCE:Lcom/android/server/power/HqmDataDispatcher;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 105
    .line 106
    new-instance p1, Landroid/os/Binder;

    .line 107
    .line 108
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mDslToken:Landroid/os/IBinder;

    .line 112
    .line 113
    new-instance p1, Landroid/content/Intent;

    .line 114
    .line 115
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final setScreenCurtainEnabledLocked(IILandroid/os/IBinder;Z)V
    .locals 7

    .line 1
    const-string v0, "enableScreenCurtain: enabled="

    .line 2
    .line 3
    const-string v1, ", displayState="

    .line 4
    .line 5
    invoke-static {v0, v1, p4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ScreenCurtainController"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    if-eq v0, p3, :cond_0

    .line 30
    .line 31
    const-string p0, "enableScreenCurtain: Already in use by another client"

    .line 32
    .line 33
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    if-eqz p4, :cond_1

    .line 44
    .line 45
    move v0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v3

    .line 48
    :goto_0
    iput-boolean p4, p0, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz p4, :cond_4

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    iput-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    .line 56
    .line 57
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/ScreenCurtainController;->mDeathRecipient:Lcom/android/server/power/ScreenCurtainController$3;

    .line 58
    .line 59
    invoke-interface {p3, v5, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    const-string p3, "Failed to set linkToDeath"

    .line 64
    .line 65
    invoke-static {v1, p3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    iput v3, p0, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledReason:I

    .line 69
    .line 70
    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    array-length p3, p1

    .line 83
    if-lez p3, :cond_2

    .line 84
    .line 85
    aget-object v4, p1, v3

    .line 86
    .line 87
    :cond_2
    const-string p1, "com.samsung.android.displayassistant"

    .line 88
    .line 89
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_3

    .line 94
    .line 95
    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    .line 96
    .line 97
    const-string v1, "com.samsung.android.displayassistant.presentation.ui.screencurtain.ScreenCurtainService"

    .line 98
    .line 99
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    .line 104
    .line 105
    const-string p3, "com.samsung.android.statsd"

    .line 106
    .line 107
    const-string v1, "com.samsung.android.statsd.screencurtain.ScreenCurtainService"

    .line 108
    .line 109
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    :goto_2
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 113
    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    iget-boolean p1, p0, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    .line 117
    .line 118
    iput-boolean p1, p0, Lcom/android/server/power/ScreenCurtainController;->mFoldedWhenEnabled:Z

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    iput-wide v5, p0, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledTime:J

    .line 126
    .line 127
    iput-boolean v3, p0, Lcom/android/server/power/ScreenCurtainController;->mPenInsertStateInitialized:Z

    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    .line 130
    .line 131
    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mDeathRecipient:Lcom/android/server/power/ScreenCurtainController$3;

    .line 132
    .line 133
    invoke-interface {p1, p3, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 134
    .line 135
    .line 136
    iput-object v4, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    .line 137
    .line 138
    :cond_5
    :goto_3
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD:Z

    .line 139
    .line 140
    if-eqz p1, :cond_9

    .line 141
    .line 142
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 143
    .line 144
    if-eqz p1, :cond_6

    .line 145
    .line 146
    if-nez p4, :cond_6

    .line 147
    .line 148
    iget p3, p0, Lcom/android/server/power/ScreenCurtainController;->mWakefulness:I

    .line 149
    .line 150
    if-ne p3, v2, :cond_6

    .line 151
    .line 152
    iget-boolean p3, p0, Lcom/android/server/power/ScreenCurtainController;->mFoldedWhenEnabled:Z

    .line 153
    .line 154
    iget-boolean v1, p0, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    .line 155
    .line 156
    if-eq p3, v1, :cond_6

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_6
    :try_start_1
    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 160
    .line 161
    if-eqz p1, :cond_7

    .line 162
    .line 163
    iget-boolean p1, p0, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    .line 164
    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    const/4 p1, 0x2

    .line 168
    goto :goto_4

    .line 169
    :cond_7
    move p1, v2

    .line 170
    :goto_4
    if-eqz p4, :cond_8

    .line 171
    .line 172
    const/16 v1, 0x15

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_8
    const/16 v1, 0x16

    .line 176
    .line 177
    :goto_5
    invoke-interface {p3, p1, v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setTspEnabled(IIZ)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    .line 179
    .line 180
    :catch_1
    :goto_6
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 181
    .line 182
    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mDslToken:Landroid/os/IBinder;

    .line 183
    .line 184
    invoke-virtual {p1, p3, p2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateOverride(Landroid/os/IBinder;I)V

    .line 185
    .line 186
    .line 187
    :cond_9
    if-nez v0, :cond_a

    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 190
    .line 191
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    .line 201
    .line 202
    :cond_a
    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/android/server/power/ForegroundPackageObserver;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mPackageNameOnScreenCurtain:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "ForegroundPackageObserver update: "

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mPackageNameOnScreenCurtain:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "ScreenCurtainController"

    .line 28
    .line 29
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
