.class public final Lcom/android/server/vibrator/VibratorController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mCurrentAmplitude:F

.field public volatile mIsUnderExternalControl:Z

.field public volatile mIsVibrating:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

.field public final mSupportEnhancedSamsungHapticPattern:Z

.field public final mSupportFrequencyControl:Z

.field public final mSupportHapticEngine:Z

.field public final mSupportIndexWideBand:Z

.field public final mSupportIntensityControl:Z

.field public final mSupportPrebakedHapticPattern:Z

.field public final mVibratorGroup:I

.field public volatile mVibratorInfo:Landroid/os/VibratorInfo;

.field public volatile mVibratorInfoLoadSuccessful:Z

.field public final mVibratorStateListeners:Landroid/os/RemoteCallbackList;

.field private mVibratorType:I


# direct methods
.method public constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V
    .locals 5

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
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 19
    .line 20
    invoke-virtual {p3, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroid/os/VibratorInfo$Builder;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 39
    .line 40
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 41
    .line 42
    const-string v0, "VibratorController"

    .line 43
    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    const-string p2, "Vibrator controller initialization failed to load some HAL info for vibrator "

    .line 47
    .line 48
    invoke-static {p1, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportIntensityControl()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    .line 65
    .line 66
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFrequencyControl()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsPrebakedHapticPattern()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsEnhancedSamsungHapticPattern()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    .line 83
    .line 84
    const-string p2, "INDEX_WIDE_BAND"

    .line 85
    .line 86
    invoke-virtual {p3, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIndexWideBand:Z

    .line 91
    .line 92
    iget-boolean p3, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    .line 93
    .line 94
    const/4 v1, 0x3

    .line 95
    const/4 v2, 0x4

    .line 96
    const/4 v3, 0x2

    .line 97
    if-eqz p3, :cond_3

    .line 98
    .line 99
    iget-boolean p3, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    .line 100
    .line 101
    if-nez p3, :cond_2

    .line 102
    .line 103
    if-eqz p2, :cond_1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const/16 p2, 0x9

    .line 107
    .line 108
    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 109
    .line 110
    :goto_0
    move p2, v3

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    :goto_1
    const/4 p2, 0x5

    .line 113
    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 114
    .line 115
    move p2, v2

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    .line 118
    .line 119
    if-eqz p2, :cond_5

    .line 120
    .line 121
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    .line 122
    .line 123
    if-eqz p2, :cond_4

    .line 124
    .line 125
    const/4 p2, 0x7

    .line 126
    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 127
    .line 128
    move p2, v1

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 p2, 0x6

    .line 131
    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    .line 135
    .line 136
    if-eqz p2, :cond_6

    .line 137
    .line 138
    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    move p2, p1

    .line 142
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string/jumbo v4, "motor group: "

    .line 145
    .line 146
    .line 147
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object v4, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 151
    .line 152
    if-eq p2, p1, :cond_a

    .line 153
    .line 154
    if-eq p2, v3, :cond_9

    .line 155
    .line 156
    if-eq p2, v1, :cond_8

    .line 157
    .line 158
    if-eq p2, v2, :cond_7

    .line 159
    .line 160
    const-string p1, "SEM_SUPPORTED_VIBRATION_NONE"

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_7
    const-string p1, "SEM_SUPPORTED_VIBRATION_TYPE_D"

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    const-string p1, "SEM_SUPPORTED_VIBRATION_TYPE_C"

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_9
    const-string p1, "SEM_SUPPORTED_VIBRATION_TYPE_B"

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_a
    const-string p1, "SEM_SUPPORTED_VIBRATION_TYPE_A"

    .line 173
    .line 174
    :goto_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, " ("

    .line 178
    .line 179
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 183
    .line 184
    const-string v1, ")"

    .line 185
    .line 186
    invoke-static {p3, p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    .line 190
    .line 191
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Vibrator (id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "):"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "isVibrating = "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 40
    .line 41
    const-string v2, "isUnderExternalControl = "

    .line 42
    .line 43
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    .line 48
    .line 49
    const-string v2, "currentAmplitude = "

    .line 50
    .line 51
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v1, "vibratorInfoLoadSuccessful = "

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 76
    .line 77
    const-string/jumbo v2, "vibratorStateListener size = "

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final getMotorType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 2
    .line 3
    return p0
.end method

.method public final notifyListenerOnVibrating(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorController;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final off()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final on(JJ)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const-wide/16 p3, 0x0

    .line 11
    .line 12
    cmp-long p3, p1, p3

    .line 13
    .line 14
    if-lez p3, :cond_0

    .line 15
    .line 16
    const/high16 p3, -0x40800000    # -1.0f

    .line 17
    .line 18
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 19
    .line 20
    const/4 p3, 0x1

    .line 21
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-wide p1

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final reloadVibratorInfoIfNeeded()V
    .locals 5

    .line 1
    const-string v0, "Failed retry of HAL getInfo for vibrator "

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    monitor-exit v1

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    new-instance v3, Landroid/os/VibratorInfo$Builder;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 43
    .line 44
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 45
    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    const-string p0, "VibratorController"

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_2
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final setAmplitude(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(F)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 27
    .line 28
    :cond_1
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final setExternalControl(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VibratorController{mVibratorInfo="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mVibratorInfoLoadSuccessful="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mIsVibrating="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mCurrentAmplitude="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mIsUnderExternalControl="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mVibratorStateListeners count="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 p0, 0x7d

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public final updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 2
    .line 3
    const-wide/16 v1, 0x40

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 18
    .line 19
    int-to-long p1, p1

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 27
    .line 28
    int-to-long v2, p1

    .line 29
    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    int-to-long v4, p0

    .line 34
    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    int-to-long v6, p0

    .line 39
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method
