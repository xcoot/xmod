.class public Lcom/android/server/display/mode/RefreshRateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static mContext:Landroid/content/Context;

.field public static mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

.field public static mDm:Lcom/android/server/display/mode/DisplayModeDirector;

.field public static mHandler:Landroid/os/Handler;

.field public static final mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

.field public static final mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

.field public static mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

.field public static sPrimaryDisplayToken:Landroid/os/IBinder;


# instance fields
.field public final mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public final mDisplayType:I

.field public final mIsSubScreen:Z

.field public final mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mRefreshRateModeSetting:Ljava/lang/String;

.field public final mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    const/high16 v1, -0x40800000    # -1.0f

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "refresh_rate_mode"

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayType:I

    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 45
    .line 46
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    sget-object v3, Lcom/android/server/display/mode/RefreshRateController;->sPrimaryDisplayToken:Landroid/os/IBinder;

    .line 51
    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    if-eq v3, p1, :cond_0

    .line 55
    .line 56
    move p1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move p1, v2

    .line 59
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const-string/jumbo p1, "refresh_rate_mode_cover"

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    .line 67
    .line 68
    const/4 p1, 0x2

    .line 69
    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayType:I

    .line 70
    .line 71
    :cond_1
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v0, v2

    .line 79
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance(Z)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 84
    .line 85
    return-void
.end method

.method public static createRefreshRateMinLimitToken(ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "RefreshRateMinLimitToken:"

    .line 9
    .line 10
    invoke-static {v2, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    new-instance v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 24
    .line 25
    iput-object p2, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 26
    .line 27
    iput-wide v2, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 28
    .line 29
    iput p0, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v4}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public static getAmbientLuxZone(F)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mLowAmbientLuxThreshold:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    cmpl-float v0, v0, p0

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighAmbientLuxThreshold:I

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    cmpg-float p0, v0, p0

    .line 37
    .line 38
    if-gez p0, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    return p0

    .line 42
    :cond_2
    const/4 p0, 0x2

    .line 43
    return p0
.end method

.method public static getBrightnessZone(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mLowBrightnessThreshold:I

    .line 10
    .line 11
    if-le v0, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighBrightnessThreshold:I

    .line 24
    .line 25
    if-ge v0, p0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x2

    .line 30
    return p0
.end method

.method public static hasPassiveModeToken()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static isLowAmbientLuxZone()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    return v1
.end method

.method public static makeController(Landroid/os/IBinder;)Lcom/android/server/display/mode/RefreshRateController;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lcom/android/server/display/mode/RefreshRateController$NullController;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/android/server/display/mode/RefreshRateController$NullController;-><init>(ILandroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$NullController;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, v1, p0}, Lcom/android/server/display/mode/RefreshRateController$NullController;-><init>(ILandroid/os/IBinder;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamless()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$NullController;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, v1, p0}, Lcom/android/server/display/mode/RefreshRateController$NullController;-><init>(ILandroid/os/IBinder;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamlessPlus()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public static updateRefreshRateMaxLimitTokenLocked()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/display/mode/RefreshRateToken;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateToken;->accept()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final createPassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;-><init>(Lcom/android/server/display/mode/RefreshRateController;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "PassiveModeToken:"

    .line 9
    .line 10
    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    new-instance p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 24
    .line 25
    iput-object p0, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 26
    .line 27
    iput-wide v2, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    iput p0, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    .line 31
    .line 32
    invoke-virtual {v0, v1, p2}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public getControllerType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "RefreshRateController"

    .line 2
    .line 3
    return-object p0
.end method

.method public getNormalSpeedVote()Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    int-to-float p0, p0

    .line 31
    invoke-static {v0, p0}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-float v0, v0

    .line 47
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    int-to-float p0, p0

    .line 58
    invoke-static {v0, p0}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public getSwitchingType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isHighBrightnessAmbientLuxZone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighBrightnessThreshold:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighAmbientLuxThreshold:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    if-ne p0, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 v0, 0x3

    .line 35
    if-ne p0, v0, :cond_1

    .line 36
    .line 37
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Float;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-ne p0, v0, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method public isPassiveModeForTypeLocked()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public logBrightnessStateLocked()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final logCurrentStateLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "Schedule to change allowedModes="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "Schedule to change HFRmode="

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :goto_0
    const-string p1, ", displayToken="

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/io/StringWriter;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 51
    .line 52
    new-instance v2, Ljava/io/PrintWriter;

    .line 53
    .line 54
    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/android/server/display/mode/VotesStorage;->dump(Ljava/io/PrintWriter;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "\n mModeSwitchingType: "

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " mAlwaysRespectAppRequest: "

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 87
    .line 88
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v1

    .line 91
    :try_start_0
    iget-boolean p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 92
    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, "\n"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v2, " Current Mode mReportedRefreshRateMode(toSurfaceFlinger)="

    .line 105
    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {v2}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v2, ", mRefreshRateMode(fromSettings)="

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {v2}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->logBrightnessStateLocked()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    throw p0
.end method

.method public final notifyRefreshRateModeLocked()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v1, v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 41
    .line 42
    sget-object v2, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    new-instance v3, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    invoke-direct {v3, v0, v1}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;-><init>(ILandroid/os/IBinder;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->logCurrentStateLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public onBrightnessChangedLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked(Z)V

    return-void
.end method

.method public final onBrightnessChangedLocked(Z)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    const-string v1, "RefreshRateModeManager"

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSubScreen()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    if-eq v0, v2, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "default display was changed!, don\'t need to check passive mode for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gez v2, :cond_1

    return-void

    .line 6
    :cond_1
    iget v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayType:I

    .line 7
    sget-object v3, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "onBrightnessChangedLocked returned by powerMode, caller="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 10
    invoke-static {p1, p0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBrightnessChangedLocked, brightness="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lux="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateController;->updateLfdValueLocked(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->updatePassiveLocked()V

    return-void
.end method

.method public onDisplayStateOffLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public updateDefaultDisplayOrOffDisplayLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public updateLfdValueLocked(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public updatePassiveLocked()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 17
    .line 18
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->isPassiveModeForTypeLocked()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    const-string/jumbo v0, "setPassiveMode="

    .line 54
    .line 55
    .line 56
    const-string v2, ", brightness="

    .line 57
    .line 58
    invoke-static {v0, v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", lux="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", PassiveModeToken="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->hasPassiveModeToken()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "RefreshRateModeManager"

    .line 94
    .line 95
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->notifyRefreshRateModeLocked()V

    .line 99
    .line 100
    .line 101
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 102
    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateMaxLimitTokenLocked()V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p0
.end method

.method public final updateRefreshRateModeLocked(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getSwitchingType()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v2

    .line 41
    :try_start_0
    iget v3, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 42
    .line 43
    if-eq v1, v3, :cond_1

    .line 44
    .line 45
    iput v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit v2

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 58
    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "%s"

    .line 64
    .line 65
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const v1, 0x13af11

    .line 78
    .line 79
    .line 80
    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Landroid/os/Handler;

    .line 89
    .line 90
    const/16 v1, 0x1f

    .line 91
    .line 92
    const/4 v2, -0x1

    .line 93
    invoke-static {p1, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    if-eq v0, v1, :cond_3

    .line 111
    .line 112
    const/4 v3, 0x2

    .line 113
    if-eq v0, v3, :cond_3

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    int-to-float v0, v0

    .line 128
    iget-object v3, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    invoke-static {v0, v3}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getNormalSpeedVote()Lcom/android/server/display/mode/Vote;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_3
    const/16 v3, 0xb

    .line 149
    .line 150
    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 151
    .line 152
    .line 153
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 154
    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked(Z)V

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->notifyRefreshRateModeLocked()V

    .line 161
    .line 162
    .line 163
    return-void
.end method
