.class public final Lcom/android/server/display/state/DisplayStateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayId:I

.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDozeStateOverride:I

.field public mDozeStateOverrideReason:I

.field public mPerformScreenOffTransition:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 7
    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 9
    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    .line 11
    iput p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayId:I

    .line 13
    iput-object p1, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 15
    return-void
.end method


# virtual methods
.method public final setPerformScreenOffTransition()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 4
    return-void
.end method

.method public final shouldPerformScreenOffTransition()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 3
    return p0
.end method

.method public final updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 4
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_3

    .line 10
    if-eq v1, v3, :cond_0

    .line 12
    move v1, v2

    .line 13
    :goto_0
    move v4, v3

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 17
    if-eqz v1, :cond_1

    .line 19
    iget v4, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 24
    if-eqz v1, :cond_2

    .line 26
    iget v4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x3

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 33
    move v1, v3

    .line 34
    move v4, v1

    .line 35
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 37
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 39
    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    .line 41
    iput v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    .line 43
    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    .line 45
    iput v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    .line 47
    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    .line 49
    const/16 v7, 0x8

    .line 51
    if-eq v6, v7, :cond_5

    .line 53
    const/16 v7, 0xf

    .line 55
    if-eq v6, v7, :cond_5

    .line 57
    const/16 v7, 0x10

    .line 59
    if-eq v6, v7, :cond_5

    .line 61
    const/16 v7, 0x11

    .line 63
    if-ne v6, v7, :cond_4

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    move v6, v0

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    :goto_2
    move v6, v3

    .line 69
    :goto_3
    iput-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsViewTypeCover:Z

    .line 71
    iget-object v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 73
    iget-object v7, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 75
    iget-object v8, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 77
    if-eqz v6, :cond_a

    .line 79
    iget-boolean v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 81
    if-eqz v6, :cond_6

    .line 83
    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 89
    invoke-virtual {v5, v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 92
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 94
    if-nez v6, :cond_8

    .line 96
    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 98
    if-ne v6, v3, :cond_8

    .line 100
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 102
    if-nez v6, :cond_8

    .line 104
    iput-boolean v3, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 106
    invoke-virtual {v8, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 109
    new-instance v6, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    .line 111
    const/4 v9, 0x2

    .line 112
    invoke-direct {v6, v8, v9}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    .line 115
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    goto :goto_4

    .line 119
    :cond_6
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 121
    if-eqz v6, :cond_7

    .line 123
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 125
    if-eqz v6, :cond_7

    .line 127
    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 129
    if-ne v6, v3, :cond_7

    .line 131
    if-eq v1, v3, :cond_7

    .line 133
    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_7

    .line 139
    invoke-virtual {v5, v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    invoke-virtual {v5, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 146
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 148
    :cond_8
    :goto_4
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 150
    if-eqz v6, :cond_b

    .line 152
    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 154
    if-ne v6, v3, :cond_9

    .line 156
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 158
    if-eqz v6, :cond_b

    .line 160
    :cond_9
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 162
    iput-boolean v3, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 164
    invoke-virtual {v8, v2}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 167
    new-instance v2, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    .line 169
    const/4 v6, 0x1

    .line 170
    invoke-direct {v2, v8, v6}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    .line 173
    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    goto :goto_5

    .line 177
    :cond_a
    invoke-virtual {v5, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 180
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 182
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 184
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 186
    if-eqz v6, :cond_b

    .line 188
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 190
    iput-boolean v3, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 192
    invoke-virtual {v8, v2}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 195
    new-instance v2, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    .line 197
    const/4 v6, 0x1

    .line 198
    invoke-direct {v2, v8, v6}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    .line 201
    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_b
    :goto_5
    if-eqz p2, :cond_c

    .line 206
    if-nez p3, :cond_c

    .line 208
    iget-boolean p2, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 210
    if-eqz p2, :cond_d

    .line 212
    :cond_c
    move v1, v3

    .line 213
    :cond_d
    iget p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayId:I

    .line 215
    const/4 p3, 0x4

    .line 216
    if-ne p2, p3, :cond_e

    .line 218
    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 220
    if-nez p2, :cond_e

    .line 222
    goto :goto_6

    .line 223
    :cond_e
    move v3, v1

    .line 224
    :goto_6
    invoke-static {v3}, Landroid/view/Display;->isOffState(I)Z

    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_f

    .line 230
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 232
    const/16 p2, 0xd

    .line 234
    if-ne p1, p2, :cond_f

    .line 236
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 238
    :cond_f
    new-instance p0, Landroid/util/Pair;

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    move-result-object p1

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object p2

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    return-object p0
.end method
