.class public final Lcom/android/server/policy/WindowWakeUpPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# instance fields
.field public final mAllowTheaterModeWakeFromCameraLens:Z

.field public final mAllowTheaterModeWakeFromKey:Z

.field public final mAllowTheaterModeWakeFromLidSwitch:Z

.field public final mAllowTheaterModeWakeFromMotion:Z

.field public final mAllowTheaterModeWakeFromPowerKey:Z

.field public final mAllowTheaterModeWakeFromWakeGesture:Z

.field public final mBoosterLock:Ljava/lang/Object;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mContext:Landroid/content/Context;

.field public mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mBoosterLock:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-class v0, Landroid/os/PowerManager;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/os/PowerManager;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 27
    .line 28
    const-class v0, Landroid/view/WindowManager;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/WindowManager;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const p2, 0x1110028

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    .line 52
    .line 53
    if-nez p2, :cond_1

    .line 54
    .line 55
    const p2, 0x111002c

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 p2, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 68
    :goto_1
    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 69
    .line 70
    const p2, 0x111002a

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromMotion:Z

    .line 78
    .line 79
    const p2, 0x1110025

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 87
    .line 88
    const p2, 0x1110029

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 96
    .line 97
    const p2, 0x1110027

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput-boolean p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 105
    .line 106
    invoke-static {}, Lcom/android/server/policy/Flags;->supportInputWakeupDelegate()Z

    .line 107
    .line 108
    .line 109
    new-instance p1, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;

    .line 110
    .line 111
    invoke-direct {p1, p0}, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;-><init>(Lcom/android/server/policy/WindowWakeUpPolicy;)V

    .line 112
    .line 113
    .line 114
    const-class p0, Lcom/android/server/policy/WindowWakeUpPolicyInternal;

    .line 115
    .line 116
    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/android/server/policy/WindowWakeUpPolicy;->initSdhmsService()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public static boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, " acquire()"

    .line 2
    .line 3
    const-string v1, "WindowWakeUpPolicy"

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-string p0, " acquire is failed"

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public static initSdhmsService()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "sdhms"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final canWakeUp(Z)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/policy/Flags;->supportInputWakeupDelegate()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mWindowManager:Landroid/view/WindowManager;

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string/jumbo v0, "theater_mode_on"

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-ne p0, v1, :cond_1

    .line 37
    .line 38
    move p0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p0, v2

    .line 41
    :goto_0
    if-nez p1, :cond_3

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v1, v2

    .line 47
    :cond_3
    :goto_1
    return v1
.end method

.method public final wakeUp(JILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mBoosterLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "DEVICE_WAKEUP"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/16 v2, 0x13

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_4

    .line 28
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 29
    .line 30
    const-string v2, "HINT_DEVICE_WAKEUP"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const-string v0, "WindowWakeUpPolicy"

    .line 37
    .line 38
    sget-object v1, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/android/server/policy/WindowWakeUpPolicy;->initSdhmsService()V

    .line 43
    .line 44
    .line 45
    :cond_1
    sget-object v1, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    :try_start_1
    const-string v3, "WAKEUP"

    .line 51
    .line 52
    const-string/jumbo v4, "start"

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v3, v4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception v1

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception v1

    .line 62
    goto :goto_2

    .line 63
    :goto_1
    sput-object v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 64
    .line 65
    const-string/jumbo v2, "sendCommandToSdhms fail"

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :goto_2
    sput-object v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 76
    .line 77
    invoke-static {}, Lcom/android/server/policy/WindowWakeUpPolicy;->initSdhmsService()V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v2, "re-try to initSdhmsService"

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_3
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 90
    .line 91
    const-string v0, "android.policy:"

    .line 92
    .line 93
    invoke-static {v0, p4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    throw p0
.end method
