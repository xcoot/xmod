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

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 14
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    const/high16 v1, -0x40800000    # -1.0f

    .line 20
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 27
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 35
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "refresh_rate_mode"

    .line 7
    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayType:I

    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 18
    iput-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 25
    iput-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    iput-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    iput-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-boolean v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    .line 44
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 46
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 48
    if-eqz v1, :cond_1

    .line 50
    sget-object v3, Lcom/android/server/display/mode/RefreshRateController;->sPrimaryDisplayToken:Landroid/os/IBinder;

    .line 52
    if-eqz v3, :cond_0

    .line 54
    if-eq v3, p1, :cond_0

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

    .line 61
    if-eqz p1, :cond_1

    .line 63
    const-string/jumbo p1, "refresh_rate_mode_cover"

    .line 66
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    .line 68
    const/4 p1, 0x2

    .line 69
    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayType:I

    .line 71
    :cond_1
    if-eqz v1, :cond_2

    .line 73
    iget-boolean p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    .line 75
    if-eqz p1, :cond_2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v0, v2

    .line 79
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance(Z)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 85
    return-void
.end method

.method public static createRefreshRateMinLimitToken(ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 3
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;

    .line 5
    invoke-direct {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;-><init>()V

    .line 8
    const-string v2, "RefreshRateMinLimitToken:"

    .line 10
    invoke-static {v2, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    move-result-wide v2

    .line 18
    new-instance v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 20
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 25
    iput-object p2, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 27
    iput-wide v2, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 29
    iput p0, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    .line 31
    invoke-virtual {v0, v1, v4}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)V

    .line 34
    return-object v1
.end method

.method public static getAmbientLuxZone(F)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 4
    if-gez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mLowAmbientLuxThreshold:I

    .line 18
    int-to-float v0, v0

    .line 19
    cmpl-float v0, v0, p0

    .line 21
    if-lez v0, :cond_1

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 32
    move-result-object v0

    .line 33
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighAmbientLuxThreshold:I

    .line 35
    int-to-float v0, v0

    .line 36
    cmpg-float p0, v0, p0

    .line 38
    if-gez p0, :cond_2

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

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mLowBrightnessThreshold:I

    .line 11
    if-le v0, p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighBrightnessThreshold:I

    .line 25
    if-ge v0, p0, :cond_1

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

    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static isLowAmbientLuxZone()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

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

    .line 3
    new-instance p0, Lcom/android/server/display/mode/RefreshRateController$NullController;

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/android/server/display/mode/RefreshRateController$NullController;-><init>(ILandroid/os/IBinder;)V

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$NullController;

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, v1, p0}, Lcom/android/server/display/mode/RefreshRateController$NullController;-><init>(ILandroid/os/IBinder;)V

    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamless()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$NullController;

    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, v1, p0}, Lcom/android/server/display/mode/RefreshRateController$NullController;-><init>(ILandroid/os/IBinder;)V

    .line 44
    return-object v0

    .line 45
    :cond_2
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamlessPlus()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 55
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;

    .line 57
    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;)V

    .line 60
    return-object v0

    .line 61
    :cond_3
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController;

    .line 63
    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;)V

    .line 66
    return-object v0
.end method

.method public static updateRefreshRateMaxLimitTokenLocked()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/display/mode/RefreshRateToken;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateToken;->accept()V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final createPassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 3
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;

    .line 5
    invoke-direct {v1, p0}, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;-><init>(Lcom/android/server/display/mode/RefreshRateController;)V

    .line 8
    const-string p0, "PassiveModeToken:"

    .line 10
    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    move-result-wide v2

    .line 18
    new-instance p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 20
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 25
    iput-object p0, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 27
    iput-wide v2, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 29
    const/4 p0, 0x0

    .line 30
    iput p0, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    .line 32
    invoke-virtual {v0, v1, p2}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)V

    .line 35
    return-object v1
.end method

.method public getControllerType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "RefreshRateController"

    .line 3
    return-object p0
.end method

.method public getNormalSpeedVote()Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    .line 29
    move-result p0

    .line 30
    int-to-float p0, p0

    .line 31
    invoke-static {v0, p0}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    .line 45
    move-result v0

    .line 46
    int-to-float v0, v0

    .line 47
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    .line 56
    move-result p0

    .line 57
    int-to-float p0, p0

    .line 58
    invoke-static {v0, p0}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

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

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighBrightnessThreshold:I

    .line 9
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 14
    move-result-object p0

    .line 15
    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighAmbientLuxThreshold:I

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v0, v2, :cond_1

    .line 21
    if-ne p0, v2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 33
    move-result p0

    .line 34
    const/4 v0, 0x3

    .line 35
    if-ne p0, v0, :cond_1

    .line 37
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Float;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 48
    move-result p0

    .line 49
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    .line 52
    move-result p0

    .line 53
    if-ne p0, v0, :cond_1

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

    .line 3
    return-object p0
.end method

.method public final logCurrentStateLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const-string v1, "Schedule to change allowedModes="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "Schedule to change HFRmode="

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :goto_0
    const-string p1, ", displayToken="

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    new-instance p1, Ljava/io/StringWriter;

    .line 47
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 50
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 52
    new-instance v2, Ljava/io/PrintWriter;

    .line 54
    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 57
    invoke-virtual {v1, v2}, Lcom/android/server/display/mode/VotesStorage;->dump(Ljava/io/PrintWriter;)V

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string p1, "\n mModeSwitchingType: "

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 70
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string p1, " mAlwaysRespectAppRequest: "

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 88
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 90
    monitor-enter v1

    .line 91
    :try_start_0
    iget-boolean p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    const-string p1, "\n"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    const-string v2, " Current Mode mReportedRefreshRateMode(toSurfaceFlinger)="

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 114
    move-result v2

    .line 115
    invoke-static {v2}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, ", mRefreshRateMode(fromSettings)="

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 132
    move-result v2

    .line 133
    invoke-static {v2}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->logBrightnessStateLocked()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    move-result v0

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 36
    move-result v1

    .line 37
    if-ne v1, v0, :cond_2

    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 42
    sget-object v2, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v3, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;

    .line 46
    invoke-direct {v3, v0, v1}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;-><init>(ILandroid/os/IBinder;)V

    .line 49
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 54
    if-eqz v0, :cond_3

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->logCurrentStateLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

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

    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 13
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 18
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v0, v2, :cond_2

    .line 31
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->isPassiveModeForTypeLocked()Z

    .line 43
    move-result v1

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 49
    move-result v0

    .line 50
    if-ne v0, v1, :cond_3

    .line 52
    return-void

    .line 53
    :cond_3
    const-string/jumbo v0, "setPassiveMode="

    .line 56
    const-string v2, ", brightness="

    .line 58
    invoke-static {v0, v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", lux="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", PassiveModeToken="

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->hasPassiveModeToken()Z

    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    const-string v1, "RefreshRateModeManager"

    .line 95
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->notifyRefreshRateModeLocked()V

    .line 101
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 103
    if-eqz p0, :cond_4

    .line 105
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateMaxLimitTokenLocked()V

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

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 23
    if-nez p1, :cond_0

    .line 25
    return-void

    .line 26
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 28
    if-eqz v1, :cond_2

    .line 30
    if-eqz p1, :cond_2

    .line 32
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getSwitchingType()I

    .line 37
    move-result v1

    .line 38
    iget-object v2, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 40
    monitor-enter v2

    .line 41
    :try_start_0
    iget v3, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 43
    if-eq v1, v3, :cond_1

    .line 45
    iput v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 47
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

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

    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    const-string v1, "%s"

    .line 65
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v1

    .line 73
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    const v1, 0x13af11

    .line 80
    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 83
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 88
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Landroid/os/Handler;

    .line 90
    const/16 v1, 0x1f

    .line 92
    const/4 v2, -0x1

    .line 93
    invoke-static {p1, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 100
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 108
    if-eqz v0, :cond_4

    .line 110
    if-eq v0, v1, :cond_3

    .line 112
    const/4 v3, 0x2

    .line 113
    if-eq v0, v3, :cond_3

    .line 115
    const/4 v0, 0x0

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    .line 126
    move-result v0

    .line 127
    int-to-float v0, v0

    .line 128
    iget-object v3, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 130
    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    .line 137
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    invoke-static {v0, v3}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 142
    move-result-object v0

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getNormalSpeedVote()Lcom/android/server/display/mode/Vote;

    .line 147
    move-result-object v0

    .line 148
    :goto_3
    const/16 v3, 0xb

    .line 150
    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 153
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 155
    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked(Z)V

    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->notifyRefreshRateModeLocked()V

    .line 163
    return-void
.end method
