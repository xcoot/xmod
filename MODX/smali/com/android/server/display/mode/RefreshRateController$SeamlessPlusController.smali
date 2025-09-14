.class public final Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;
.super Lcom/android/server/display/mode/RefreshRateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mReportedLfd:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->mReportedLfd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    return-void
.end method


# virtual methods
.method public final getControllerType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SeamlessPlusController"

    .line 3
    return-object p0
.end method

.method public final isPassiveModeForTypeLocked()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->supportApsr()Z

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->mReportedLfd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    move-result p0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p0, v1, :cond_1

    .line 18
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->hasPassiveModeToken()Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_2

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    :cond_2
    return v0
.end method

.method public final logBrightnessStateLocked()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, " BrightnessState mPassive="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, ", PassiveModeToken="

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->hasPassiveModeToken()Z

    .line 21
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string p0, ", mLfd="

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->mReportedLfd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string p0, ", mBrightness="

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string p0, ", mAmbientLux="

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string p0, ", mIsWirelessCharing="

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public final onDisplayStateOffLocked()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->isPassiveModeForTypeLocked()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->updateDefaultDisplayOrOffDisplayLocked()V

    .line 11
    return-void
.end method

.method public final setLfd(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "set "

    .line 4
    const-string v1, "="

    .line 6
    const-string v2, ", brightness="

    .line 8
    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", lux="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", mIsWirelessCharging="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "RefreshRateModeManager"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljava/lang/Thread;

    .line 48
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;Ljava/lang/String;I)V

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method public final supportApsr()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    .line 10
    move-result p0

    .line 11
    const/16 v0, 0xa

    .line 13
    if-ne p0, v0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final updateDefaultDisplayOrOffDisplayLocked()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->supportApsr()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->updateLfdFixLocked(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->updatePassiveLocked()V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->updateLfdScalabilityLocked(ZZ)V

    .line 19
    :goto_0
    return-void
.end method

.method public final updateLfdFixLocked(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_2

    .line 13
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne p1, v1, :cond_1

    .line 26
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->isLowAmbientLuxZone()Z

    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 32
    :cond_1
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->hasPassiveModeToken()Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 38
    :cond_2
    const/4 v0, 0x3

    .line 39
    :cond_3
    :goto_0
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->mReportedLfd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 44
    move-result p1

    .line 45
    if-ne p1, v0, :cond_4

    .line 47
    return-void

    .line 48
    :cond_4
    const-string/jumbo p1, "fix"

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->setLfd(ILjava/lang/String;)V

    .line 54
    return-void
.end method

.method public final updateLfdScalabilityLocked(ZZ)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_2

    .line 14
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 23
    move-result p1

    .line 24
    if-ne p1, v0, :cond_1

    .line 26
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->isLowAmbientLuxZone()Z

    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 32
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Float;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->isHighBrightnessAmbientLuxZone()Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 57
    const/4 v1, 0x6

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    move v1, v0

    .line 60
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->mReportedLfd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 65
    move-result p1

    .line 66
    if-eq p1, v1, :cond_4

    .line 68
    const-string/jumbo p1, "scalability"

    .line 71
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->setLfd(ILjava/lang/String;)V

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 80
    move-result p1

    .line 81
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 86
    move-result v2

    .line 87
    if-eq p1, v2, :cond_5

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    if-eqz p2, :cond_8

    .line 92
    :goto_2
    if-ne v1, v0, :cond_7

    .line 94
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_6

    .line 102
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    .line 111
    move-result p0

    .line 112
    :goto_3
    int-to-float p0, p0

    .line 113
    goto :goto_4

    .line 114
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    .line 123
    move-result p0

    .line 124
    goto :goto_3

    .line 125
    :goto_4
    invoke-static {p0, p0}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 128
    move-result-object p0

    .line 129
    new-instance p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    .line 131
    invoke-direct {p1, v0}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    .line 134
    goto :goto_5

    .line 135
    :cond_7
    const/4 p0, 0x0

    .line 136
    move-object p1, p0

    .line 137
    :goto_5
    sget-object p2, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 139
    const/4 v0, -0x1

    .line 140
    const/4 v1, 0x3

    .line 141
    invoke-virtual {p2, v0, v1, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 144
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 146
    const/16 p2, 0x15

    .line 148
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 151
    :cond_8
    return-void
.end method

.method public final updateLfdValueLocked(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->supportApsr()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->updateLfdFixLocked(Z)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;->updateLfdScalabilityLocked(ZZ)V

    .line 15
    :goto_0
    return-void
.end method
