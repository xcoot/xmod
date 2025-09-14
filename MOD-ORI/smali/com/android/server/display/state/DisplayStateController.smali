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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    .line 10
    .line 11
    iput p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayId:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 14
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

    .line 3
    .line 4
    return-void
.end method

.method public final shouldPerformScreenOffTransition()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 2
    .line 3
    return p0
.end method

.method public final updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 3
    .line 4
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    if-eq v1, v3, :cond_0

    .line 11
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

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget v4, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget v4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 27
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

    .line 32
    .line 33
    move v1, v3

    .line 34
    move v4, v1

    .line 35
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 36
    .line 37
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 38
    .line 39
    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    .line 40
    .line 41
    iput v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    .line 42
    .line 43
    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    .line 44
    .line 45
    iput v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    .line 46
    .line 47
    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    .line 48
    .line 49
    const/16 v7, 0x8

    .line 50
    .line 51
    if-eq v6, v7, :cond_5

    .line 52
    .line 53
    const/16 v7, 0xf

    .line 54
    .line 55
    if-eq v6, v7, :cond_5

    .line 56
    .line 57
    const/16 v7, 0x10

    .line 58
    .line 59
    if-eq v6, v7, :cond_5

    .line 60
    .line 61
    const/16 v7, 0x11

    .line 62
    .line 63
    if-ne v6, v7, :cond_4

    .line 64
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

    .line 70
    .line 71
    iget-object v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 72
    .line 73
    iget-object v7, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 74
    .line 75
    iget-object v8, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 76
    .line 77
    if-eqz v6, :cond_a

    .line 78
    .line 79
    iget-boolean v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 80
    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    invoke-virtual {v5, v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 90
    .line 91
    .line 92
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 93
    .line 94
    if-nez v6, :cond_8

    .line 95
    .line 96
    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 97
    .line 98
    if-ne v6, v3, :cond_8

    .line 99
    .line 100
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 101
    .line 102
    if-nez v6, :cond_8

    .line 103
    .line 104
    iput-boolean v3, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 105
    .line 106
    invoke-virtual {v8, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 107
    .line 108
    .line 109
    new-instance v6, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    const/4 v9, 0x2

    .line 112
    invoke-direct {v6, v8, v9}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 120
    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 124
    .line 125
    if-eqz v6, :cond_7

    .line 126
    .line 127
    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 128
    .line 129
    if-ne v6, v3, :cond_7

    .line 130
    .line 131
    if-eq v1, v3, :cond_7

    .line 132
    .line 133
    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_7

    .line 138
    .line 139
    invoke-virtual {v5, v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    invoke-virtual {v5, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 144
    .line 145
    .line 146
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 147
    .line 148
    :cond_8
    :goto_4
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 149
    .line 150
    if-eqz v6, :cond_b

    .line 151
    .line 152
    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 153
    .line 154
    if-ne v6, v3, :cond_9

    .line 155
    .line 156
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 157
    .line 158
    if-eqz v6, :cond_b

    .line 159
    .line 160
    :cond_9
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 161
    .line 162
    iput-boolean v3, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 163
    .line 164
    invoke-virtual {v8, v2}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 165
    .line 166
    .line 167
    new-instance v2, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    .line 168
    .line 169
    const/4 v6, 0x1

    .line 170
    invoke-direct {v2, v8, v6}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_a
    invoke-virtual {v5, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 178
    .line 179
    .line 180
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 181
    .line 182
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 183
    .line 184
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 185
    .line 186
    if-eqz v6, :cond_b

    .line 187
    .line 188
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 189
    .line 190
    iput-boolean v3, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 191
    .line 192
    invoke-virtual {v8, v2}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 193
    .line 194
    .line 195
    new-instance v2, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    const/4 v6, 0x1

    .line 198
    invoke-direct {v2, v8, v6}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    .line 203
    .line 204
    :cond_b
    :goto_5
    if-eqz p2, :cond_c

    .line 205
    .line 206
    if-nez p3, :cond_c

    .line 207
    .line 208
    iget-boolean p2, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 209
    .line 210
    if-eqz p2, :cond_d

    .line 211
    .line 212
    :cond_c
    move v1, v3

    .line 213
    :cond_d
    iget p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayId:I

    .line 214
    .line 215
    const/4 p3, 0x4

    .line 216
    if-ne p2, p3, :cond_e

    .line 217
    .line 218
    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 219
    .line 220
    if-nez p2, :cond_e

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_e
    move v3, v1

    .line 224
    :goto_6
    invoke-static {v3}, Landroid/view/Display;->isOffState(I)Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_f

    .line 229
    .line 230
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 231
    .line 232
    const/16 p2, 0xd

    .line 233
    .line 234
    if-ne p1, p2, :cond_f

    .line 235
    .line 236
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 237
    .line 238
    :cond_f
    new-instance p0, Landroid/util/Pair;

    .line 239
    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    return-object p0
.end method
