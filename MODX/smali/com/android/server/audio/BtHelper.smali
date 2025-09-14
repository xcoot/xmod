.class public final Lcom/android/server/audio/BtHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field public mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field public mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field public mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

.field public mLeAudioBroadcastCodec:I

.field public mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

.field public mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

.field public mLeBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

.field public final mResolvedScoAudioDevices:Ljava/util/Map;

.field public mScoAudioMode:I

.field public mScoAudioState:I

.field public mScoConnectionState:I


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 14
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 16
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 21
    iput-boolean v1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 23
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 25
    new-instance v0, Lcom/android/server/audio/BtHelper$1;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    .line 30
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    .line 32
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 34
    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 3
    const-string v1, ""

    .line 5
    if-nez p0, :cond_0

    .line 7
    new-instance p0, Landroid/media/AudioDeviceAttributes;

    .line 9
    invoke-direct {p0, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_1

    .line 23
    move-object v3, v1

    .line 24
    :cond_1
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v1, v2

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 41
    move-result v4

    .line 42
    const/16 v5, 0x404

    .line 44
    if-eq v4, v5, :cond_4

    .line 46
    const/16 v5, 0x408

    .line 48
    if-eq v4, v5, :cond_4

    .line 50
    const/16 v5, 0x420

    .line 52
    if-eq v4, v5, :cond_3

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/16 v0, 0x40

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const/16 v0, 0x20

    .line 60
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v5, "btHeadsetDeviceToAudioDevice btDevice: "

    .line 65
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string p0, " btClass: "

    .line 73
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    if-nez v2, :cond_6

    .line 78
    const-string v2, "Unknown"

    .line 80
    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string p0, " nativeType: "

    .line 85
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string p0, " address: "

    .line 93
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    const-string v2, "AS.BtHelper"

    .line 105
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p0, Landroid/media/AudioDeviceAttributes;

    .line 110
    invoke-direct {p0, v0, v1, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object p0
.end method

.method public static getBtDeviceCategory(Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 15
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 25
    move-result-object p0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 28
    :goto_1
    if-nez p0, :cond_3

    .line 30
    return v1

    .line 31
    :cond_3
    const/16 v0, 0x11

    .line 33
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_4

    .line 39
    return v1

    .line 40
    :cond_4
    new-instance v2, Ljava/lang/String;

    .line 42
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 48
    move-result v0

    .line 49
    const/4 v3, 0x6

    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v5, 0x4

    .line 52
    const/4 v6, 0x2

    .line 53
    const/4 v7, 0x5

    .line 54
    const/4 v8, 0x3

    .line 55
    sparse-switch v0, :sswitch_data_0

    .line 58
    goto :goto_2

    .line 59
    :sswitch_0
    const-string v0, "Carkit"

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 67
    move v0, v4

    .line 68
    goto :goto_3

    .line 69
    :sswitch_1
    const-string v0, "Untethered Headset"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 77
    move v0, v8

    .line 78
    goto :goto_3

    .line 79
    :sswitch_2
    const-string v0, "Watch"

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 87
    move v0, v7

    .line 88
    goto :goto_3

    .line 89
    :sswitch_3
    const-string v0, "Speaker"

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 97
    move v0, v5

    .line 98
    goto :goto_3

    .line 99
    :sswitch_4
    const-string v0, "HearingAid"

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 107
    move v0, v1

    .line 108
    goto :goto_3

    .line 109
    :sswitch_5
    const-string v0, "Default"

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 117
    move v0, v3

    .line 118
    goto :goto_3

    .line 119
    :sswitch_6
    const-string v0, "Headset"

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 127
    move v0, v6

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    :goto_2
    const/4 v0, -0x1

    .line 130
    :goto_3
    if-eqz v0, :cond_f

    .line 132
    if-eq v0, v4, :cond_e

    .line 134
    if-eq v0, v6, :cond_d

    .line 136
    if-eq v0, v8, :cond_d

    .line 138
    if-eq v0, v5, :cond_c

    .line 140
    if-eq v0, v7, :cond_b

    .line 142
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 145
    move-result-object p0

    .line 146
    if-nez p0, :cond_6

    .line 148
    return v1

    .line 149
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 152
    move-result p0

    .line 153
    const/16 v0, 0x404

    .line 155
    if-eq p0, v0, :cond_a

    .line 157
    const/16 v0, 0x414

    .line 159
    if-eq p0, v0, :cond_9

    .line 161
    const/16 v0, 0x418

    .line 163
    if-eq p0, v0, :cond_a

    .line 165
    const/16 v0, 0x41c

    .line 167
    if-eq p0, v0, :cond_9

    .line 169
    const/16 v0, 0x428

    .line 171
    if-eq p0, v0, :cond_8

    .line 173
    const/16 v0, 0x43c

    .line 175
    if-eq p0, v0, :cond_9

    .line 177
    const/16 v0, 0x704

    .line 179
    if-eq p0, v0, :cond_7

    .line 181
    return v1

    .line 182
    :cond_7
    return v7

    .line 183
    :cond_8
    const/4 p0, 0x7

    .line 184
    return p0

    .line 185
    :cond_9
    return v6

    .line 186
    :cond_a
    return v8

    .line 187
    :cond_b
    return v7

    .line 188
    :cond_c
    return v6

    .line 189
    :cond_d
    return v8

    .line 190
    :cond_e
    return v5

    .line 191
    :cond_f
    return v3

    .line 192
    nop

    .line 193
    :sswitch_data_0
    .sparse-switch
        -0x6d5fc59e -> :sswitch_6
        -0x40b391df -> :sswitch_5
        -0x28153a78 -> :sswitch_4
        -0x147f0821 -> :sswitch_3
        0x4f7d4af -> :sswitch_2
        0x6399a2c -> :sswitch_1
        0x77e10aa2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static scoAudioModeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 4
    if-eqz p0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 9
    const-string v0, "SCO_MODE_("

    .line 11
    const-string v1, ")"

    .line 13
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "SCO_MODE_VR"

    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "SCO_MODE_VIRTUAL_CALL"

    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "SCO_MODE_UNDEFINED"

    .line 26
    return-object p0
.end method


# virtual methods
.method public final broadcastScoConnectionState(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 8
    return-void
.end method

.method public final checkScoAudioState()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 7
    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 11
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xa

    .line 17
    if-eq v0, v1, :cond_0

    .line 19
    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "Exception while getting audio state of "

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    const-string v1, "AS.BtHelper"

    .line 42
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    :goto_0
    return-void
.end method

.method public final getBluetoothHeadset()Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 12
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-virtual {v0, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p0, v2

    .line 21
    :goto_0
    if-eqz p0, :cond_1

    .line 23
    const/16 v0, 0xbb8

    .line 25
    move v7, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v7, v2

    .line 28
    :goto_1
    const/4 v3, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/16 v2, 0x9

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 37
    return p0
.end method

.method public final declared-synchronized getCodec(Landroid/bluetooth/BluetoothDevice;I)Landroid/util/Pair;
    .locals 8

    .line 1
    const-string/jumbo v0, "getCodec, null A2DP codec status for device: "

    .line 4
    const-string v1, "Exception while getting status of "

    .line 6
    const-string/jumbo v2, "getCodec, null LE codec status for device: "

    .line 9
    const-string v3, "Exception while getting status of "

    .line 11
    monitor-enter p0

    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eq p2, v4, :cond_7

    .line 18
    const/16 v0, 0x16

    .line 20
    if-eq p2, v0, :cond_2

    .line 22
    const/16 p1, 0x1a

    .line 24
    if-eq p2, p1, :cond_0

    .line 26
    :try_start_0
    new-instance p1, Landroid/util/Pair;

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p2

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    .line 38
    return-object p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto/16 :goto_5

    .line 42
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 44
    const/high16 p2, 0x2b000000

    .line 46
    if-eq p1, p2, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v5, v7

    .line 50
    :goto_0
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 52
    new-instance p1, Landroid/util/Pair;

    .line 54
    iget p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p2

    .line 60
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    .line 68
    return-object p1

    .line 69
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 71
    if-eqz p2, :cond_3

    .line 73
    move p2, v5

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move p2, v7

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 78
    if-nez v0, :cond_4

    .line 80
    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 82
    new-instance p1, Landroid/util/Pair;

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v0

    .line 88
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    monitor-exit p0

    .line 96
    return-object p1

    .line 97
    :cond_4
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    .line 100
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 103
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothLeAudio;->getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    .line 106
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    goto :goto_2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_5
    const-string v1, "AS.BtHelper"

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    move-object v0, v6

    .line 127
    :goto_2
    if-nez v0, :cond_5

    .line 129
    const-string v0, "AS.BtHelper"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 148
    new-instance p1, Landroid/util/Pair;

    .line 150
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v0

    .line 154
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    move-result-object p2

    .line 158
    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    monitor-exit p0

    .line 162
    return-object p1

    .line 163
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getOutputCodecConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 166
    move-result-object p1

    .line 167
    if-nez p1, :cond_6

    .line 169
    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 171
    new-instance p1, Landroid/util/Pair;

    .line 173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v0

    .line 177
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 180
    move-result-object p2

    .line 181
    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    monitor-exit p0

    .line 185
    return-object p1

    .line 186
    :cond_6
    :try_start_7
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 188
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result p2

    .line 192
    xor-int/2addr p2, v5

    .line 193
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 195
    new-instance v0, Landroid/util/Pair;

    .line 197
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    .line 200
    move-result p1

    .line 201
    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothLeCodecToAudioFormat(I)I

    .line 204
    move-result p1

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object p1

    .line 209
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    move-result-object p2

    .line 213
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 216
    monitor-exit p0

    .line 217
    return-object v0

    .line 218
    :cond_7
    :try_start_8
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 220
    if-eqz p2, :cond_8

    .line 222
    move p2, v5

    .line 223
    goto :goto_3

    .line 224
    :cond_8
    move p2, v7

    .line 225
    :goto_3
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 227
    if-nez v2, :cond_9

    .line 229
    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 231
    new-instance p1, Landroid/util/Pair;

    .line 233
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v0

    .line 237
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 240
    move-result-object p2

    .line 241
    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 244
    monitor-exit p0

    .line 245
    return-object p1

    .line 246
    :cond_9
    :try_start_9
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    .line 249
    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 250
    goto :goto_4

    .line 251
    :catch_1
    move-exception v2

    .line 252
    :try_start_a
    const-string v3, "AS.BtHelper"

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    .line 256
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object v1

    .line 266
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    move-object v1, v6

    .line 270
    :goto_4
    if-nez v1, :cond_a

    .line 272
    const-string v1, "AS.BtHelper"

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object p1

    .line 286
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 291
    new-instance p1, Landroid/util/Pair;

    .line 293
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    move-result-object v0

    .line 297
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    move-result-object p2

    .line 301
    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 304
    monitor-exit p0

    .line 305
    return-object p1

    .line 306
    :cond_a
    :try_start_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    .line 309
    move-result-object p1

    .line 310
    if-nez p1, :cond_b

    .line 312
    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 314
    new-instance p1, Landroid/util/Pair;

    .line 316
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    move-result-object v0

    .line 320
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 323
    move-result-object p2

    .line 324
    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 327
    monitor-exit p0

    .line 328
    return-object p1

    .line 329
    :cond_b
    :try_start_c
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 331
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothCodecConfig;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result p2

    .line 335
    xor-int/2addr p2, v5

    .line 336
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 338
    new-instance v0, Landroid/util/Pair;

    .line 340
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    .line 343
    move-result p1

    .line 344
    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothA2dpCodecToAudioFormat(I)I

    .line 347
    move-result p1

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    move-result-object p1

    .line 352
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 355
    move-result-object p2

    .line 356
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 359
    monitor-exit p0

    .line 360
    return-object v0

    .line 361
    :goto_5
    monitor-exit p0

    .line 362
    throw p1
.end method

.method public final declared-synchronized getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;
    .locals 3

    .line 1
    const-string/jumbo v0, "getCodec DEFAULT from "

    .line 4
    monitor-enter p0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq p2, v1, :cond_1

    .line 8
    if-eqz p3, :cond_0

    .line 10
    const/16 p3, 0x16

    .line 12
    if-eq p2, p3, :cond_1

    .line 14
    const/16 p3, 0x1a

    .line 16
    if-eq p2, p3, :cond_1

    .line 18
    :cond_0
    :try_start_0
    new-instance p1, Landroid/util/Pair;

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p2

    .line 25
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->getCodec(Landroid/bluetooth/BluetoothDevice;I)Landroid/util/Pair;

    .line 37
    move-result-object p1

    .line 38
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    check-cast p3, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p3

    .line 46
    if-nez p3, :cond_4

    .line 48
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 50
    new-instance p3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string p4, " fallback to "

    .line 62
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    if-ne p2, v1, :cond_2

    .line 67
    const-string p4, "SBC"

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string p4, "LC3"

    .line 72
    :goto_0
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p4

    .line 79
    invoke-direct {p3, p4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 85
    new-instance p1, Landroid/util/Pair;

    .line 87
    if-ne p2, v1, :cond_3

    .line 89
    const/high16 p2, 0x1f000000

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/high16 p2, 0x2b000000

    .line 94
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p2

    .line 98
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 100
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    .line 104
    return-object p1

    .line 105
    :cond_4
    monitor-exit p0

    .line 106
    return-object p1

    .line 107
    :goto_2
    monitor-exit p0

    .line 108
    throw p1
.end method

.method public final handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {v2, v1, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z

    .line 17
    move-result v4

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/16 v4, 0x40

    .line 21
    const/16 v5, 0x10

    .line 23
    const/16 v6, 0x20

    .line 25
    filled-new-array {v5, v6, v4}, [I

    .line 28
    move-result-object v4

    .line 29
    move v5, v3

    .line 30
    move v6, v5

    .line 31
    :goto_0
    const/4 v7, 0x3

    .line 32
    if-ge v6, v7, :cond_2

    .line 34
    aget v7, v4, v6

    .line 36
    new-instance v8, Landroid/media/AudioDeviceAttributes;

    .line 38
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 45
    move-result-object v10

    .line 46
    invoke-direct {v8, v7, v9, v10}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v8, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z

    .line 52
    move-result v7

    .line 53
    or-int/2addr v5, v7

    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v4, v5

    .line 58
    :goto_1
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    .line 60
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 67
    move-result-object v7

    .line 68
    const v8, -0x7ffffff8

    .line 71
    invoke-direct {v5, v8, v6, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v5, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 80
    if-eqz v4, :cond_3

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v0, v3

    .line 84
    :goto_2
    if-eqz v0, :cond_5

    .line 86
    if-eqz p2, :cond_4

    .line 88
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    .line 90
    check-cast p0, Ljava/util/HashMap;

    .line 92
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    .line 98
    check-cast p0, Ljava/util/HashMap;

    .line 100
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_5
    :goto_3
    return v0
.end method

.method public final declared-synchronized isBluetoothScoOn()Z
    .locals 5

    .line 1
    const-string v0, "Exception while getting audio state of "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_2

    .line 9
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v3, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    .line 17
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    const/16 v1, 0xc

    .line 20
    if-ne v0, v1, :cond_1

    .line 22
    const/4 v2, 0x1

    .line 23
    :cond_1
    monitor-exit p0

    .line 24
    return v2

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v1

    .line 28
    :try_start_2
    const-string v3, "AS.BtHelper"

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    monitor-exit p0

    .line 48
    return v2

    .line 49
    :cond_2
    :goto_0
    monitor-exit p0

    .line 50
    return v2

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw v0
.end method

.method public final declared-synchronized isBluetoothScoSupported()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "setBluetoothScoOn() wrong sco state:"

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x2

    .line 12
    filled-new-array {v4, v2, v3}, [I

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 v3, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 31
    monitor-exit p0

    .line 32
    return v3

    .line 33
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 35
    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    .line 38
    move-result v1

    .line 39
    const/16 v4, 0xb

    .line 41
    if-eq v1, v4, :cond_1

    .line 43
    const/16 v4, 0xc

    .line 45
    if-eq v1, v4, :cond_1

    .line 47
    const-string v2, "AS.BtHelper"

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v0, " mScoAudioState:"

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    .line 75
    return v3

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    monitor-exit p0

    .line 79
    return v2

    .line 80
    :goto_0
    monitor-exit p0

    .line 81
    throw v0
.end method

.method public final declared-synchronized isProfilePoxyConnected(I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v1, :cond_6

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_4

    .line 9
    const/16 v2, 0x15

    .line 11
    if-eq p1, v2, :cond_2

    .line 13
    const/16 v2, 0x16

    .line 15
    if-eq p1, v2, :cond_0

    .line 17
    monitor-exit p0

    .line 18
    return v1

    .line 19
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz p1, :cond_1

    .line 23
    move v0, v1

    .line 24
    :cond_1
    monitor-exit p0

    .line 25
    return v0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    if-eqz p1, :cond_3

    .line 32
    move v0, v1

    .line 33
    :cond_3
    monitor-exit p0

    .line 34
    return v0

    .line 35
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    if-eqz p1, :cond_5

    .line 39
    move v0, v1

    .line 40
    :cond_5
    monitor-exit p0

    .line 41
    return v0

    .line 42
    :cond_6
    :try_start_3
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    if-eqz p1, :cond_7

    .line 46
    move v0, v1

    .line 47
    :cond_7
    monitor-exit p0

    .line 48
    return v0

    .line 49
    :goto_0
    monitor-exit p0

    .line 50
    throw p1
.end method

.method public final declared-synchronized onAudioServerDiedRestoreA2dp()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 4
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v0, 0xa

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 18
    const-string/jumbo v2, "onAudioServerDied()"

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final declared-synchronized onBroadcastScoConnectionState(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 10
    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    .line 22
    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 30
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public final declared-synchronized onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 12

    .line 1
    const-string/jumbo v0, "onBtProfileConnected: Not a valid profile to connect "

    .line 4
    const-string/jumbo v1, "onBtProfileConnected null LE codec status for groupId: "

    .line 7
    const-string v2, "Exception while getting status of "

    .line 9
    const-string/jumbo v3, "onBtProfileConnected: Null BluetoothAdapter when connecting profile: "

    .line 12
    const-string/jumbo v4, "onBtProfileConnected: null proxy for profile: "

    .line 15
    const-string v5, "BT profile "

    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    sget-object v6, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 20
    new-instance v7, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 22
    new-instance v8, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v5, " connected to proxy "

    .line 36
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-direct {v7, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v5, "AS.BtHelper"

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-virtual {v7, v8, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 55
    invoke-virtual {v6, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 58
    if-nez p2, :cond_0

    .line 60
    const-string p2, "AS.BtHelper"

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto/16 :goto_5

    .line 82
    :cond_0
    const/4 v4, 0x1

    .line 83
    if-eq p1, v4, :cond_13

    .line 85
    const/4 v5, 0x0

    .line 86
    const/16 v6, 0x16

    .line 88
    const/16 v7, 0x15

    .line 90
    const/4 v9, 0x2

    .line 91
    if-eq p1, v9, :cond_8

    .line 93
    const/16 v10, 0xb

    .line 95
    const/16 v11, 0x1a

    .line 97
    if-eq p1, v10, :cond_6

    .line 99
    if-eq p1, v11, :cond_6

    .line 101
    if-eq p1, v7, :cond_4

    .line 103
    if-eq p1, v6, :cond_1

    .line 105
    :try_start_1
    const-string p2, "AS.BtHelper"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :cond_1
    :try_start_2
    move-object v0, p2

    .line 129
    check-cast v0, Landroid/bluetooth/BluetoothLeAudio;

    .line 131
    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 133
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    if-eqz v0, :cond_2

    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 141
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 143
    if-eqz v0, :cond_3

    .line 145
    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    if-eqz v10, :cond_3

    .line 149
    :try_start_4
    invoke-virtual {v0, v10}, Landroid/bluetooth/BluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    :try_start_5
    const-string v10, "AS.BtHelper"

    .line 156
    const-string v11, "Exception while unregistering callback for LE audio"

    .line 158
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_3
    :goto_0
    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    .line 163
    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 165
    new-instance v0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 167
    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;-><init>(Lcom/android/server/audio/BtHelper;)V

    .line 170
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    :try_start_6
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 177
    move-result-object v0

    .line 178
    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 180
    invoke-virtual {p2, v0, v10}, Landroid/bluetooth/BluetoothLeAudio;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 183
    goto :goto_1

    .line 184
    :catch_1
    move-exception p2

    .line 185
    :try_start_7
    iput-object v5, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 187
    const-string v0, "AS.BtHelper"

    .line 189
    const-string v10, "Exception while registering callback for LE audio"

    .line 191
    invoke-static {v0, v10, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    goto :goto_1

    .line 195
    :cond_4
    move-object v0, p2

    .line 196
    check-cast v0, Landroid/bluetooth/BluetoothHearingAid;

    .line 198
    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 200
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 204
    if-eqz v0, :cond_5

    .line 206
    monitor-exit p0

    .line 207
    return-void

    .line 208
    :cond_5
    :try_start_8
    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    .line 210
    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 212
    goto :goto_1

    .line 213
    :cond_6
    if-ne p1, v11, :cond_7

    .line 215
    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcast;

    .line 217
    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 219
    :cond_7
    monitor-exit p0

    .line 220
    return-void

    .line 221
    :cond_8
    :try_start_9
    move-object v0, p2

    .line 222
    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .line 224
    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 226
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 230
    if-eqz v0, :cond_9

    .line 232
    monitor-exit p0

    .line 233
    return-void

    .line 234
    :cond_9
    :try_start_a
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .line 236
    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 238
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 241
    move-result-object p2

    .line 242
    if-nez p2, :cond_a

    .line 244
    const-string p2, "AS.BtHelper"

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object p1

    .line 262
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 267
    :cond_a
    :try_start_b
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 270
    move-result-object p2

    .line 271
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_12

    .line 277
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    move-result-object v0

    .line 281
    if-nez v0, :cond_b

    .line 283
    goto/16 :goto_4

    .line 285
    :cond_b
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    move-result-object p2

    .line 289
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 291
    if-eq p1, v9, :cond_10

    .line 293
    if-eq p1, v7, :cond_f

    .line 295
    if-eq p1, v6, :cond_c

    .line 297
    const-string p1, "AS.BtHelper"

    .line 299
    const-string p2, "Invalid profile! onBtProfileConnected"

    .line 301
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    goto :goto_3

    .line 305
    :cond_c
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 307
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    .line 310
    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 311
    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 313
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    .line 316
    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 317
    goto :goto_2

    .line 318
    :catch_2
    move-exception v0

    .line 319
    :try_start_d
    const-string v3, "AS.BtHelper"

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v2

    .line 333
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    :goto_2
    if-nez v5, :cond_d

    .line 338
    const-string v0, "AS.BtHelper"

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string p1, ", device: "

    .line 350
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    move-result-object p1

    .line 360
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    goto :goto_3

    .line 364
    :cond_d
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getOutputCodecSelectableCapabilities()Ljava/util/List;

    .line 367
    move-result-object p1

    .line 368
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 371
    move-result p1

    .line 372
    if-nez p1, :cond_e

    .line 374
    invoke-static {v8, v4}, Landroid/media/BluetoothProfileConnectionInfo;->createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;

    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 381
    :cond_e
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getInputCodecSelectableCapabilities()Ljava/util/List;

    .line 384
    move-result-object p1

    .line 385
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 388
    move-result p1

    .line 389
    if-nez p1, :cond_11

    .line 391
    invoke-static {v8, v8}, Landroid/media/BluetoothProfileConnectionInfo;->createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;

    .line 394
    move-result-object p1

    .line 395
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 398
    goto :goto_3

    .line 399
    :cond_f
    invoke-static {v8}, Landroid/media/BluetoothProfileConnectionInfo;->createHearingAidInfo(Z)Landroid/media/BluetoothProfileConnectionInfo;

    .line 402
    move-result-object p1

    .line 403
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 406
    goto :goto_3

    .line 407
    :cond_10
    const/4 p1, -0x1

    .line 408
    invoke-static {v8, p1}, Landroid/media/BluetoothProfileConnectionInfo;->createA2dpInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;

    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 415
    :cond_11
    :goto_3
    monitor-exit p0

    .line 416
    return-void

    .line 417
    :cond_12
    :goto_4
    monitor-exit p0

    .line 418
    return-void

    .line 419
    :cond_13
    :try_start_e
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .line 421
    invoke-virtual {p0, p2}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 424
    monitor-exit p0

    .line 425
    return-void

    .line 426
    :goto_5
    monitor-exit p0

    .line 427
    throw p1
.end method

.method public final declared-synchronized onBtProfileDisconnected(I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "onBtProfileDisconnected: Not a valid profile to disconnect "

    .line 4
    const-string/jumbo v1, "onBtProfileDisconnected: Not a profile handled by BtHelper "

    .line 7
    const-string v2, "BT profile "

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, " disconnected"

    .line 28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v4, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v2, "AS.BtHelper"

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {v4, v5, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 44
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eq p1, v2, :cond_7

    .line 51
    const/4 v2, 0x2

    .line 52
    if-eq p1, v2, :cond_6

    .line 54
    const/16 v2, 0x1a

    .line 56
    const/16 v4, 0xb

    .line 58
    if-eq p1, v4, :cond_4

    .line 60
    if-eq p1, v2, :cond_3

    .line 62
    const/16 v1, 0x15

    .line 64
    if-eq p1, v1, :cond_2

    .line 66
    const/16 v1, 0x16

    .line 68
    if-eq p1, v1, :cond_0

    .line 70
    const-string v1, "AS.BtHelper"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 96
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-eqz v0, :cond_1

    .line 102
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception p1

    .line 107
    :try_start_2
    const-string v0, "AS.BtHelper"

    .line 109
    const-string v1, "Exception while unregistering callback for LE audio"

    .line 111
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 116
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 118
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    if-ne p1, v2, :cond_5

    .line 129
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    if-ne p1, v4, :cond_8

    .line 134
    const-string v0, "AS.BtHelper"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_1

    .line 156
    :cond_6
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 158
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 160
    goto :goto_1

    .line 161
    :cond_7
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :cond_8
    :goto_1
    monitor-exit p0

    .line 164
    return-void

    .line 165
    :goto_2
    monitor-exit p0

    .line 166
    throw p1
.end method

.method public final onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 5
    const/16 v1, 0x9

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 12
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 39
    if-nez v1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p1, "AS.BtHelper"

    .line 48
    const-string/jumbo v1, "onHeadsetProfileConnected: Null BluetoothAdapter"

    .line 51
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 57
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 59
    const/4 v1, 0x4

    .line 60
    if-eq p1, v0, :cond_3

    .line 62
    if-eq p1, v1, :cond_3

    .line 64
    return-void

    .line 65
    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 67
    const/4 v3, 0x0

    .line 68
    if-eqz v2, :cond_a

    .line 70
    const/4 v4, 0x2

    .line 71
    if-eq p1, v0, :cond_7

    .line 73
    if-eq p1, v1, :cond_4

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 78
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 80
    if-eqz v0, :cond_6

    .line 82
    if-eq v0, v4, :cond_5

    .line 84
    move p1, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 89
    move-result p1

    .line 90
    goto :goto_1

    .line 91
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    .line 94
    move-result p1

    .line 95
    :goto_1
    if-eqz p1, :cond_b

    .line 97
    const/4 v0, 0x5

    .line 98
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 100
    goto :goto_4

    .line 101
    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 103
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 105
    if-eqz v0, :cond_9

    .line 107
    if-eq v0, v4, :cond_8

    .line 109
    move p1, v3

    .line 110
    goto :goto_2

    .line 111
    :cond_8
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 114
    move-result p1

    .line 115
    goto :goto_2

    .line 116
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    .line 119
    move-result p1

    .line 120
    :goto_2
    if-eqz p1, :cond_b

    .line 122
    const/4 v0, 0x3

    .line 123
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 125
    goto :goto_4

    .line 126
    :cond_a
    :goto_3
    move p1, v3

    .line 127
    :cond_b
    :goto_4
    if-nez p1, :cond_c

    .line 129
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 131
    invoke-virtual {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 134
    :cond_c
    return-void
.end method

.method public final onScoAudioStateChanged(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "BtHelper.onScoAudioStateChanged"

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 11
    const/16 v1, 0xa

    .line 13
    if-eq p1, v1, :cond_1

    .line 15
    const/16 v1, 0xc

    .line 17
    if-eq p1, v1, :cond_0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(Ljava/lang/String;Z)V

    .line 23
    move v2, v4

    .line 24
    goto/16 :goto_5

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->muteRingtoneDuringVibration()V

    .line 29
    invoke-virtual {v0, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(Ljava/lang/String;Z)V

    .line 32
    :goto_0
    move v7, v4

    .line 33
    move v4, v2

    .line 34
    move v2, v7

    .line 35
    goto/16 :goto_5

    .line 37
    :cond_2
    const/4 v1, 0x2

    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, 0x3

    .line 40
    packed-switch p1, :pswitch_data_0

    .line 43
    goto :goto_2

    .line 44
    :pswitch_0
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 46
    if-eq p1, v6, :cond_3

    .line 48
    if-eq p1, v5, :cond_3

    .line 50
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 p1, 0x7

    .line 54
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_5

    .line 60
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_REMOTE_MIC:Z

    .line 62
    if-eqz p1, :cond_4

    .line 64
    iget-object p1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object p1

    .line 70
    const-string/jumbo v5, "run_amplify_ambient_sound"

    .line 73
    const/4 v6, -0x2

    .line 74
    invoke-static {p1, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 77
    move-result p1

    .line 78
    if-ne p1, v1, :cond_4

    .line 80
    new-instance p1, Landroid/content/Intent;

    .line 82
    const-string v1, "android.samsung.media.action.ACTION_AUDIO_REMOTEMIC_SCO_RESUME"

    .line 84
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    const/high16 v1, 0x4000000

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 95
    const-string p1, "AS.BtHelper"

    .line 97
    const-string/jumbo v1, "broadcast remote mic resume intent"

    .line 100
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_4
    move v2, v4

    .line 104
    :cond_5
    :goto_1
    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(Ljava/lang/String;Z)V

    .line 107
    goto :goto_5

    .line 108
    :pswitch_1
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 110
    if-eq p1, v6, :cond_6

    .line 112
    if-eq p1, v5, :cond_6

    .line 114
    const/4 v0, 0x5

    .line 115
    if-eq p1, v0, :cond_6

    .line 117
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 119
    :cond_6
    :goto_2
    const/4 p1, -0x1

    .line 120
    move v4, p1

    .line 121
    goto :goto_5

    .line 122
    :pswitch_2
    invoke-virtual {v0, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(Ljava/lang/String;Z)V

    .line 125
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->muteRingtoneDuringVibration()V

    .line 128
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 130
    if-ne p1, v4, :cond_9

    .line 132
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 134
    if-eqz p1, :cond_9

    .line 136
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 138
    if-eqz v0, :cond_9

    .line 140
    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 142
    if-eqz v3, :cond_8

    .line 144
    if-eq v3, v1, :cond_7

    .line 146
    move p1, v2

    .line 147
    goto :goto_3

    .line 148
    :cond_7
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 151
    move-result p1

    .line 152
    goto :goto_3

    .line 153
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    .line 156
    move-result p1

    .line 157
    :goto_3
    if-eqz p1, :cond_9

    .line 159
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 161
    move v2, v4

    .line 162
    move v4, v1

    .line 163
    goto :goto_5

    .line 164
    :cond_9
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 166
    if-eq p1, v1, :cond_a

    .line 168
    goto :goto_4

    .line 169
    :cond_a
    move v4, v2

    .line 170
    :goto_4
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 172
    goto/16 :goto_0

    .line 174
    :goto_5
    if-eqz v2, :cond_b

    .line 176
    invoke-virtual {p0, v4}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 179
    new-instance p1, Landroid/content/Intent;

    .line 181
    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    .line 183
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    .line 188
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 194
    :cond_b
    return-void

    .line 195
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "l_smart_view_split_sound_enable="

    .line 4
    const-string/jumbo v1, "onSetBtScoActiveDevice() failed to add new device "

    .line 7
    const-string/jumbo v2, "onSetBtScoActiveDevice() failed to remove previous device "

    .line 10
    const-string/jumbo v3, "onSetBtScoActiveDevice: "

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    const-string v4, "AS.BtHelper"

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 23
    if-nez v3, :cond_0

    .line 25
    const-string v3, "(null)"

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v3, " -> "

    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    if-nez p1, :cond_1

    .line 42
    const-string v3, "(null)"

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 61
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz v4, :cond_2

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :cond_2
    if-eqz p1, :cond_3

    .line 71
    if-eqz v3, :cond_3

    .line 73
    :try_start_1
    const-string v4, "AS.BtHelper"

    .line 75
    const-string/jumbo v5, "setBtScoActiveDevice muteRingtoneDuringVibration"

    .line 78
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 83
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->muteRingtoneDuringVibration()V

    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto/16 :goto_5

    .line 90
    :cond_3
    :goto_2
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_5

    .line 97
    const-string v5, "AS.BtHelper"

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    if-nez v3, :cond_4

    .line 106
    const-string v2, "(null)"

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    const/4 v2, 0x1

    .line 124
    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_7

    .line 130
    const-string v2, "AS.BtHelper"

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_6

    .line 139
    const-string p1, "(null)"

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    :goto_4
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 p1, 0x0

    .line 157
    :cond_7
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 159
    if-nez p1, :cond_8

    .line 161
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 164
    :cond_8
    if-nez v3, :cond_9

    .line 166
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 168
    if-eqz p1, :cond_9

    .line 170
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 172
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->resetBtScoOnByApp()V

    .line 175
    :cond_9
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 177
    if-eqz p1, :cond_a

    .line 179
    sget-boolean p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 181
    if-eqz p1, :cond_a

    .line 183
    sput-boolean v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    sget-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 204
    const/16 v0, 0xc

    .line 206
    const/16 v1, 0x20

    .line 208
    invoke-virtual {p1, v0, v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :cond_a
    monitor-exit p0

    .line 212
    return-void

    .line 213
    :goto_5
    monitor-exit p0

    .line 214
    throw p1
.end method

.method public final declared-synchronized onSystemReady()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, -0x1

    .line 3
    :try_start_0
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 5
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 8
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 13
    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 35
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 37
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 43
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 45
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 47
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    .line 49
    const/16 v3, 0xb

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 54
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 56
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 58
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    .line 60
    const/16 v3, 0x15

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 65
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 67
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 69
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    .line 71
    const/16 v3, 0x16

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 76
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 78
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 80
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    .line 82
    const/16 v3, 0x1a

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    const-class v0, Lcom/android/server/vibrator/VibratorManagerInternal;

    .line 92
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/android/server/vibrator/VibratorManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :goto_1
    monitor-exit p0

    .line 101
    throw v0
.end method

.method public final postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "mBluetoothProfileServiceListener"

    .line 7
    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 p0, 0x2

    .line 16
    invoke-static {v0, p1, p0}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 19
    move-result-object v8

    .line 20
    const/4 v4, 0x7

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 28
    return-void
.end method

.method public final requestScoState(II)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 4
    const/4 v0, 0x2

    .line 5
    const/16 v1, 0xc

    .line 7
    const-string v2, ", scoAudioMode="

    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x1

    .line 13
    const-string v7, "AS.BtHelper"

    .line 15
    const/4 v8, 0x0

    .line 16
    if-ne p1, v1, :cond_e

    .line 18
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 20
    if-eq p1, v5, :cond_0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 25
    :cond_0
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 27
    if-eqz p1, :cond_4

    .line 29
    if-eq p1, v0, :cond_3

    .line 31
    if-eq p1, v5, :cond_17

    .line 33
    if-eq p1, v4, :cond_2

    .line 35
    if-eq p1, v3, :cond_1

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v0, "requestScoState: failed to connect in state "

    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 66
    return v8

    .line 67
    :cond_1
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 69
    goto/16 :goto_3

    .line 71
    :cond_2
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 73
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 76
    goto/16 :goto_3

    .line 78
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 81
    goto/16 :goto_3

    .line 83
    :cond_4
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 85
    const/4 p1, -0x1

    .line 86
    if-ne p2, p1, :cond_6

    .line 88
    iput v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 90
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 92
    if-eqz p1, :cond_6

    .line 94
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 96
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 98
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, "bluetooth_sco_channel_"

    .line 105
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 110
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p2

    .line 121
    invoke-static {p1, p2, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 127
    if-gt p1, v0, :cond_5

    .line 129
    if-gez p1, :cond_6

    .line 131
    :cond_5
    iput v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 133
    :cond_6
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 135
    if-nez p1, :cond_8

    .line 137
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_7

    .line 143
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 145
    goto/16 :goto_3

    .line 147
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo p2, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    .line 152
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    iget p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 170
    return v8

    .line 171
    :cond_8
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 173
    if-nez p2, :cond_9

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo p2, "requestScoState: no active device while connecting, mScoAudioMode="

    .line 180
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    iget p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 192
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 198
    return v8

    .line 199
    :cond_9
    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 201
    if-eqz v1, :cond_b

    .line 203
    if-eq v1, v0, :cond_a

    .line 205
    move p1, v8

    .line 206
    goto :goto_0

    .line 207
    :cond_a
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 210
    move-result p1

    .line 211
    goto :goto_0

    .line 212
    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    .line 215
    move-result p1

    .line 216
    :goto_0
    if-eqz p1, :cond_c

    .line 218
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 220
    goto/16 :goto_3

    .line 222
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    const-string/jumbo p2, "requestScoState: connect to "

    .line 227
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 232
    if-nez p2, :cond_d

    .line 234
    const-string p2, "(null)"

    .line 236
    goto :goto_1

    .line 237
    :cond_d
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 240
    move-result-object p2

    .line 241
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string p2, " failed, mScoAudioMode="

    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object p1

    .line 258
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 264
    return v8

    .line 265
    :cond_e
    const/16 v1, 0xa

    .line 267
    if-ne p1, v1, :cond_17

    .line 269
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 271
    if-eq p1, v6, :cond_16

    .line 273
    if-eq p1, v5, :cond_f

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v0, "requestScoState: failed to disconnect in state "

    .line 280
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object p1

    .line 298
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 304
    return v8

    .line 305
    :cond_f
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 307
    if-nez p1, :cond_11

    .line 309
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 312
    move-result p1

    .line 313
    if-eqz p1, :cond_10

    .line 315
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 317
    goto :goto_3

    .line 318
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 320
    const-string/jumbo p2, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    .line 323
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    iget p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 328
    invoke-static {p1, p2, v7}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 331
    iput v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 333
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 336
    return v8

    .line 337
    :cond_11
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 339
    if-nez p2, :cond_12

    .line 341
    iput v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 343
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 346
    goto :goto_3

    .line 347
    :cond_12
    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 349
    if-eqz v1, :cond_14

    .line 351
    if-eq v1, v0, :cond_13

    .line 353
    move p1, v8

    .line 354
    goto :goto_2

    .line 355
    :cond_13
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 358
    move-result p1

    .line 359
    goto :goto_2

    .line 360
    :cond_14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    .line 363
    move-result p1

    .line 364
    :goto_2
    if-eqz p1, :cond_15

    .line 366
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 368
    goto :goto_3

    .line 369
    :cond_15
    iput v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 371
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 374
    goto :goto_3

    .line 375
    :cond_16
    iput v8, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 377
    invoke-virtual {p0, v8}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 380
    :cond_17
    :goto_3
    return v6
.end method

.method public final declared-synchronized resetBluetoothSco()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 8
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->clearA2dpSuspended(Z)V

    .line 13
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->clearLeAudioSuspended(Z)V

    .line 18
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 20
    const-string/jumbo v2, "resetBluetoothSco"

    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public final sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/high16 v0, 0x10000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 12
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 14
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 16
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p0
.end method

.method public final declared-synchronized setAvrcpAbsoluteVolumeIndex(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setAvrcpAbsoluteVolumeIndex index="

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 14
    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: bailing due to null mA2dp"

    .line 17
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v1, "AS.BtHelper"

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 34
    if-nez v1, :cond_1

    .line 36
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 38
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 40
    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    .line 43
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v1, "AS.BtHelper"

    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :cond_1
    :try_start_2
    const-string v1, "AS.BtHelper"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 75
    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    .line 77
    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(I)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndexExt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_0
    monitor-exit p0

    .line 89
    throw p1
.end method

.method public final setAvrcpAbsoluteVolumeIndexExt(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 5
    iget-object v1, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    .line 10
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    iget-boolean v3, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    .line 15
    if-eqz v3, :cond_0

    .line 17
    iget-object v0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 27
    iget-object v4, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 29
    const/4 v5, -0x1

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v4

    .line 44
    if-eq v4, v5, :cond_1

    .line 46
    iget-object v0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 58
    const-string v0, "AS.BtHelper"

    .line 60
    const-string v1, "No a2dp volume info"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 67
    sget-object v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    .line 69
    aget v0, v0, p1

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1, v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setA2dpMediaVolume(Landroid/bluetooth/BluetoothDevice;FI)V

    .line 75
    return-void

    .line 76
    :cond_2
    const/4 p1, 0x0

    .line 77
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 80
    move-result v0

    .line 81
    if-ge p1, v0, :cond_3

    .line 83
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 89
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Integer;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result v1

    .line 99
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 101
    sget-object v4, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    .line 103
    aget v4, v4, v1

    .line 105
    invoke-virtual {v3, v0, v4, v1}, Landroid/bluetooth/BluetoothA2dp;->setA2dpMediaVolume(Landroid/bluetooth/BluetoothDevice;FI)V

    .line 108
    add-int/lit8 p1, p1, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    return-void

    .line 112
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    throw p0
.end method

.method public final declared-synchronized setAvrcpAbsoluteVolumeSupported(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setAvrcpAbsoluteVolumeSupported supported="

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 7
    const-string v1, "AS.BtHelper"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public final declared-synchronized setHearingAidVolume(IIZ)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setHearingAidVolume: calling mHearingAid.setVolume idx="

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string p1, "AS.BtHelper"

    .line 11
    const-string/jumbo p2, "setHearingAidVolume: null mHearingAid"

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_1
    div-int/lit8 v1, p1, 0xa

    .line 23
    const/high16 v2, 0x8000000

    .line 25
    invoke-static {p2, v1, v2}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    .line 28
    move-result p2

    .line 29
    float-to-int p2, p2

    .line 30
    const/16 v1, -0x80

    .line 32
    if-ge p2, v1, :cond_1

    .line 34
    move p2, v1

    .line 35
    :cond_1
    const-string v1, "AS.BtHelper"

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, " gain="

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz p3, :cond_2

    .line 62
    sget-object p3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 64
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    .line 66
    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    .line 69
    invoke-virtual {p3, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 74
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    :try_start_3
    const-string p2, "AS.BtHelper"

    .line 81
    const-string p3, "Exception while setting hearing aid volume"

    .line 83
    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    :goto_0
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_1
    monitor-exit p0

    .line 89
    throw p1
.end method

.method public final declared-synchronized setLeAudioVolume(III)V
    .locals 9

    .line 1
    const-string/jumbo v0, "setLeAudioVolume: calling mLeAudio.setVolume idx="

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string p1, "AS.BtHelper"

    .line 11
    const-string/jumbo p2, "setLeAudioVolume: null mLeAudio"

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    int-to-double v1, p1

    .line 22
    const-wide v3, 0x406fe00000000000L    # 255.0

    .line 27
    mul-double/2addr v1, v3

    .line 28
    int-to-double v3, p2

    .line 29
    div-double/2addr v1, v3

    .line 30
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 33
    move-result-wide v1

    .line 34
    long-to-int v1, v1

    .line 35
    const-string v2, "AS.BtHelper"

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, " volume="

    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 62
    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    .line 64
    const/16 v3, 0xa

    .line 66
    const/4 v7, 0x0

    .line 67
    move-object v2, v8

    .line 68
    move v4, p3

    .line 69
    move v5, p1

    .line 70
    move v6, p2

    .line 71
    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 74
    invoke-virtual {v0, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 79
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothLeAudio;->setVolume(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    :try_start_3
    const-string p2, "AS.BtHelper"

    .line 86
    const-string p3, "Exception while setting LE volume"

    .line 88
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :goto_1
    monitor-exit p0

    .line 94
    throw p1
.end method

.method public final declared-synchronized stopBluetoothSco(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 4
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 6
    invoke-direct {v1, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 12
    const/16 p1, 0xa

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method
