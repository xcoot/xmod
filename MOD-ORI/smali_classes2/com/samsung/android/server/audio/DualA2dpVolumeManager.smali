.class public final Lcom/samsung/android/server/audio/DualA2dpVolumeManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FINE_VOLUME_TABLE:[F

.field public static final VOLUME_TABLE:[F


# instance fields
.field public final MAX_VOLUME:I

.field public final mAbsVolSupported:Landroid/util/ArrayMap;

.field public mActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mBrokerHandler:Landroid/os/Handler;

.field public final mConnectedDevicesVolume:Landroid/util/ArrayMap;

.field public mDualModeEnabled:Z

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public mMainVolume:I

.field public mMinVolume:I

.field public mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

.field public final mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public final mStoredAbsVolSupported:Landroid/util/ArrayMap;

.field public final mVolumeLogger:Lcom/android/server/utils/EventLogger;

.field public needVolumeChangedIntent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    new-array v2, v2, [F

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    .line 13
    .line 14
    const/16 v2, 0x97

    .line 15
    .line 16
    new-array v2, v2, [F

    .line 17
    .line 18
    sput-object v2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    const/16 v4, 0xf

    .line 23
    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    sget-object v4, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    .line 27
    .line 28
    add-int/lit8 v5, v3, 0x1

    .line 29
    .line 30
    aget v6, v4, v5

    .line 31
    .line 32
    aget v4, v4, v3

    .line 33
    .line 34
    sub-float/2addr v6, v4

    .line 35
    const/high16 v4, 0x41200000    # 10.0f

    .line 36
    .line 37
    div-float/2addr v6, v4

    .line 38
    move v4, v2

    .line 39
    :goto_1
    if-ge v4, v0, :cond_0

    .line 40
    .line 41
    sget-object v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    .line 42
    .line 43
    mul-int/lit8 v8, v3, 0xa

    .line 44
    .line 45
    add-int/2addr v8, v4

    .line 46
    sget-object v9, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    .line 47
    .line 48
    aget v9, v9, v3

    .line 49
    .line 50
    int-to-float v10, v4

    .line 51
    mul-float/2addr v10, v6

    .line 52
    add-float/2addr v10, v9

    .line 53
    aput v10, v7, v8

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    move v3, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    .line 61
    .line 62
    const/16 v2, 0x96

    .line 63
    .line 64
    aput v1, v0, v2

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 4
        0x0
        0x3c02235b    # 0.007943f
        0x3c37d417    # 0.01122f
        0x3c81d5c3    # 0.015849f
        0x3cb764f1    # 0.022387f
        0x3d01871e
        0x3d36f5cb    # 0.044668f
        0x3d81387a
        0x3db6872b    # 0.089125f
        0x3e00ea18
        0x3e36188b
        0x3e809bd8
        0x3eb5aa0d
        0x3f004dcb
        0x3f353bf3
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->needVolumeChangedIntent:Z

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 23
    .line 24
    const/16 v1, 0x3c

    .line 25
    .line 26
    const-string v3, "Dual A2dp Event history"

    .line 27
    .line 28
    invoke-direct {v0, v1, v3}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 34
    .line 35
    const/16 v1, 0x1e

    .line 36
    .line 37
    const-string v3, "Dual A2dp Volume history"

    .line 38
    .line 39
    invoke-direct {v0, v1, v3}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 43
    .line 44
    iput v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 45
    .line 46
    const/16 v0, 0xa0

    .line 47
    .line 48
    iput v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    .line 49
    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 57
    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 64
    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    .line 71
    .line 72
    mul-int/lit8 v0, p3, 0xa

    .line 73
    .line 74
    iput v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    .line 75
    .line 76
    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mBrokerHandler:Landroid/os/Handler;

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "SEC_AUDIO_DUAL_A2DP_VOLUME="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 13
    .line 14
    .line 15
    const-string v0, "  A2dp Devices: "

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v2, v3, :cond_1

    .line 32
    .line 33
    if-lez v2, :cond_0

    .line 34
    .line 35
    const-string v3, ", "

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v3, " : "

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 87
    .line 88
    .line 89
    const-string v2, "  AvrcpAbsoluteVolumeSupported"

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move v2, v1

    .line 95
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-ge v2, v3, :cond_2

    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v4, "  "

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 114
    .line 115
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v4, " : "

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    const-string v2, "  Stored AvrcpAbsoluteVolumeSupported"

    .line 156
    .line 157
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-ge v1, v2, :cond_3

    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v3, "  "

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    .line 179
    .line 180
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {v3}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v3, " : "

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    .line 199
    .line 200
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string/jumbo v2, "main fine volume : "

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    const-string v0, "  Active device: "

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 250
    .line 251
    monitor-enter v1

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 253
    .line 254
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v2, ""

    .line 258
    .line 259
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v0}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v0, "  Dual Sound: "

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v1, ""

    .line 284
    .line 285
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    .line 289
    .line 290
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 294
    .line 295
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 296
    .line 297
    .line 298
    const-string v0, ""

    .line 299
    .line 300
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :catchall_1
    move-exception p0

    .line 310
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    throw p0

    .line 312
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    throw p0
.end method

.method public final getMainVolume()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    monitor-exit v0

    .line 34
    return p0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final getValidIndex(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    .line 2
    .line 3
    if-le p1, p0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    if-gez p1, :cond_1

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_1
    return p1
.end method

.method public final isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    monitor-exit v0

    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Boolean;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    :goto_0
    monitor-exit v0

    .line 57
    return p0

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final postSaveVolumeDB(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mBrokerHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 19
    .line 20
    iput p1, p2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 29
    .line 30
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "setActive:"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 8
    .line 9
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ",prev:"

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v3, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "AS.DualA2dpManager"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v3, v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    move v4, v0

    .line 61
    :cond_0
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 63
    .line 64
    monitor-exit v1

    .line 65
    return v4

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    xor-int/2addr v0, v2

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 76
    .line 77
    monitor-exit v1

    .line 78
    return v0

    .line 79
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "AVC:"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, ",support:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "AS.DualA2dpManager"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v3, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 53
    .line 54
    new-instance p1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public final setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4

    .line 1
    const-string v0, "Dual:"

    .line 2
    .line 3
    const-string v1, "mActiveDevice is changed by dual off address = "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 21
    .line 22
    const-string p1, "AS.DualA2dpManager"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 48
    .line 49
    const/4 v3, -0x1

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p1, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 67
    .line 68
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p2, ",active:"

    .line 79
    .line 80
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 84
    .line 85
    invoke-static {p2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, ",vol:"

    .line 93
    .line 94
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 98
    .line 99
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {v1, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string p0, "AS.DualA2dpManager"

    .line 110
    .line 111
    const/4 p2, 0x0

    .line 112
    invoke-virtual {v1, p2, p0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 116
    .line 117
    .line 118
    monitor-exit v2

    .line 119
    return-void

    .line 120
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method

.method public final setVolume(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p0, "AS.DualA2dpManager"

    .line 5
    .line 6
    const-string/jumbo p1, "null device"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eq v1, p2, :cond_2

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->postSaveVolumeDB(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    :cond_2
    return v0
.end method

.method public final updateMainVolume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, -0x1

    .line 2
    :try_start_0
    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 3
    iget v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    iget v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    if-ge v3, v2, :cond_0

    .line 7
    iput v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 8
    :cond_0
    :goto_1
    iget v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    if-le v3, v2, :cond_1

    .line 9
    iput v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateMainVolume(I)V
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result p1

    .line 12
    iget v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    if-ge p1, v0, :cond_0

    .line 13
    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    .line 14
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    if-le p1, v0, :cond_1

    .line 15
    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume()V

    return-void
.end method
