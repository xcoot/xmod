.class public final Lcom/android/server/display/WakelockController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final WAKE_LOCK_MAX:I = 0x7


# instance fields
.field public final mDisplayId:I

.field public final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public mHasProximityDebounced:Z

.field public mIsEarlyWakeupRequested:Z

.field public mIsProximityNegativeAcquired:Z

.field public mIsProximityPositiveAcquired:Z

.field public mIsRefreshRateRequested:Z

.field public mOnStateChangedPending:Z

.field public final mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

.field public final mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

.field public final mSuspendBlockerIdProxDebounce:Ljava/lang/String;

.field public final mSuspendBlockerIdProxNegative:Ljava/lang/String;

.field public final mSuspendBlockerIdProxPositive:Ljava/lang/String;

.field public final mSuspendBlockerIdRefreshRate:Ljava/lang/String;

.field public final mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public mUnfinishedBusiness:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WakelockController"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/WakelockController;->mDisplayId:I

    .line 5
    .line 6
    const-string v0, "WakelockController["

    .line 7
    .line 8
    const-string v1, "]"

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 17
    .line 18
    const-string p2, "["

    .line 19
    .line 20
    const-string v0, "]unfinished business"

    .line 21
    .line 22
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "]on state changed"

    .line 29
    .line 30
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "]prox positive"

    .line 37
    .line 38
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "]prox negative"

    .line 45
    .line 46
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "]prox debounce"

    .line 53
    .line 54
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "]vrr ramp animation"

    .line 61
    .line 62
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    .line 67
    .line 68
    const-string v0, "]early wakeup"

    .line 69
    .line 70
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final acquireWakelock(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/display/WakelockController;->DEBUG:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    const-string p1, "Invalid wakelock attempted to be acquired"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-boolean v3, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    .line 30
    .line 31
    :goto_0
    move v2, v3

    .line 32
    goto :goto_1

    .line 33
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-boolean v3, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const-string p1, "Unfinished business..."

    .line 54
    .line 55
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-boolean v3, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    const-string p1, "State Changed..."

    .line 75
    .line 76
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-boolean v3, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    .line 90
    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-boolean v3, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_5
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 104
    .line 105
    if-nez p1, :cond_2

    .line 106
    .line 107
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-boolean v3, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :pswitch_6
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 118
    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iput-boolean v3, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    :goto_1
    return v2

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSuspendBlockerOnStateChangedId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSuspendBlockerProxDebounceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSuspendBlockerProxNegativeId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSuspendBlockerProxPositiveId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSuspendBlockerUnfinishedBusinessId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasProximitySensorDebounced()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    .line 2
    .line 3
    return p0
.end method

.method public hasUnfinishedBusiness()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEarlyWakeupRequested()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    .line 2
    .line 3
    return p0
.end method

.method public isOnStateChangedPending()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 2
    .line 3
    return p0
.end method

.method public isProximityNegativeAcquired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 2
    .line 3
    return p0
.end method

.method public isProximityPositiveAcquired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 2
    .line 3
    return p0
.end method

.method public isRefreshRateRequested()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    .line 2
    .line 3
    return p0
.end method

.method public final releaseWakelockInternal(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    const-string p1, "Invalid wakelock attempted to be released"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    :goto_0
    return v0

    .line 30
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v0, v1

    .line 45
    :goto_1
    return v0

    .line 46
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    sget-boolean p1, Lcom/android/server/display/WakelockController;->DEBUG:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "Finished business..."

    .line 57
    .line 58
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v0, v1

    .line 72
    :goto_2
    return v0

    .line 73
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    move v0, v1

    .line 88
    :goto_3
    return v0

    .line 89
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v0, v1

    .line 104
    :goto_4
    return v0

    .line 105
    :pswitch_5
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_6
    move v0, v1

    .line 120
    :goto_5
    return v0

    .line 121
    :pswitch_6
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 122
    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 126
    .line 127
    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_7
    move v0, v1

    .line 136
    :goto_6
    return v0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
