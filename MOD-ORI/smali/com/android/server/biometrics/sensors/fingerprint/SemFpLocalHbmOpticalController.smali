.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# static fields
.field static final LOCAL_HBM_PATH_OF_IN_HOUSE:Ljava/lang/String; = "/sys/class/lcd/panel/local_hbm"

.field static final LOCAL_HBM_PATH_OF_JDM:Ljava/lang/String; = "/sys/class/display/display_ctrl/lhbm_mode_set"


# instance fields
.field public mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

.field public final mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

.field public mFreezeBrightnessMode:I

.field public mIsFreezeBrightnessMode:Z

.field public mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

.field public mStartPhysicalDisplayState:I

.field public final mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

.field public mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

.field public final mUseInHouseSolution:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mStartPhysicalDisplayState:I

    .line 6
    .line 7
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 12
    .line 13
    iput-boolean p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p2, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p2, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public final changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 8
    .line 9
    if-nez v3, :cond_1

    .line 10
    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    move-object p1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v0

    .line 16
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz v4, :cond_6

    .line 24
    .line 25
    if-eq v4, v5, :cond_4

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    if-eq v4, v6, :cond_2

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_2
    if-ne p1, v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    if-ne p1, v0, :cond_b

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    if-ne p1, v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    if-ne p1, v2, :cond_b

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_6
    if-ne p1, v1, :cond_7

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_7
    if-ne p1, v2, :cond_b

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v4, "LocalHbmStatus change from : "

    .line 76
    .line 77
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, " to : "

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v4, "FingerprintService.SemFpLhbmOpticalController"

    .line 98
    .line 99
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 103
    .line 104
    if-eqz v3, :cond_8

    .line 105
    .line 106
    if-ne p1, v2, :cond_a

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    if-ne p1, v1, :cond_a

    .line 110
    .line 111
    :goto_2
    if-eqz v3, :cond_9

    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mIsFreezeBrightnessMode:Z

    .line 114
    .line 115
    if-eq p1, v5, :cond_9

    .line 116
    .line 117
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 124
    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    iput-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mIsFreezeBrightnessMode:Z

    .line 128
    .line 129
    invoke-virtual {p1, v5}, Landroid/hardware/display/DisplayManagerInternal;->setFreezeBrightnessMode(Z)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mFreezeBrightnessMode:I

    .line 134
    .line 135
    :cond_9
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 136
    .line 137
    if-eqz p1, :cond_b

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->run()V

    .line 140
    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_a
    if-eqz v3, :cond_b

    .line 147
    .line 148
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mIsFreezeBrightnessMode:Z

    .line 149
    .line 150
    if-eqz p1, :cond_b

    .line 151
    .line 152
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 159
    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mIsFreezeBrightnessMode:Z

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->setFreezeBrightnessMode(Z)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mFreezeBrightnessMode:I

    .line 170
    .line 171
    :cond_b
    :goto_3
    return-void
.end method

.method public final declared-synchronized handleLocalHbm(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mStartPhysicalDisplayState:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 18
    .line 19
    iget v0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    :goto_1
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_2
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public final handleTouchEventInLhbm(Landroid/util/Pair;IJ)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne p2, v2, :cond_2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 13
    .line 14
    sget-object v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 15
    .line 16
    if-ne v3, v4, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 20
    .line 21
    sget-object v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 22
    .line 23
    if-ne v3, v4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    move-object v5, v0

    .line 29
    move-object v6, p0

    .line 30
    move-object v7, p1

    .line 31
    move v8, p2

    .line 32
    move-wide v9, p3

    .line 33
    invoke-direct/range {v5 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;Landroid/util/Pair;IJ)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    :goto_0
    int-to-byte v3, p2

    .line 40
    new-array v8, v0, [B

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    aput-byte v3, v8, v4

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 50
    .line 51
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    iget v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mFreezeBrightnessMode:I

    .line 60
    .line 61
    move-object v4, v1

    .line 62
    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 63
    .line 64
    const/16 v6, 0x2b

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 74
    .line 75
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    move-object v3, p0

    .line 84
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 85
    .line 86
    const/16 v5, 0x16

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    move v6, p2

    .line 91
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 97
    .line 98
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-nez p0, :cond_4

    .line 105
    .line 106
    const-wide/16 v3, 0x0

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 110
    .line 111
    :goto_2
    if-ne p2, v2, :cond_5

    .line 112
    .line 113
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 116
    .line 117
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 126
    .line 127
    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 128
    .line 129
    .line 130
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 131
    .line 132
    invoke-virtual {p2, v3, v4, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 133
    .line 134
    .line 135
    instance-of p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 136
    .line 137
    if-eqz p0, :cond_6

    .line 138
    .line 139
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    long-to-int p1, v3

    .line 144
    const/16 p2, 0x10

    .line 145
    .line 146
    shr-long v0, p3, p2

    .line 147
    .line 148
    long-to-int p2, v0

    .line 149
    const-wide/32 v0, 0xffff

    .line 150
    .line 151
    .line 152
    and-long/2addr p3, v0

    .line 153
    long-to-int p3, p3

    .line 154
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;

    .line 159
    .line 160
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;III)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    if-ne p2, v0, :cond_6

    .line 168
    .line 169
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 172
    .line 173
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    new-instance p2, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 182
    .line 183
    invoke-direct {p2}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 184
    .line 185
    .line 186
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 187
    .line 188
    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_3
    return-void
.end method

.method public final onFinishDisplayState(III)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;->run()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->getString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/io/File;

    .line 15
    .line 16
    const-string v0, "/sys/class/lcd/panel/local_hbm"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->getString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance p0, Ljava/io/File;

    .line 39
    .line 40
    const-string v0, "/sys/class/display/display_ctrl/lhbm_mode_set"

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method
