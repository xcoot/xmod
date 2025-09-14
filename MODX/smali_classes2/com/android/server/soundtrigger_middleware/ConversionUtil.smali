.class public abstract Lcom/android/server/soundtrigger_middleware/ConversionUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static aidl2hidlRecognitionModes(I)I
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    and-int/lit8 v1, p0, 0x2

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    or-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    :cond_1
    and-int/lit8 v1, p0, 0x4

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_2
    and-int/lit8 p0, p0, 0x8

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    or-int/lit8 v0, v0, 0x8

    .line 25
    .line 26
    :cond_3
    return v0
.end method

.method public static aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .locals 5

    .line 1
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 9
    .line 10
    iget v2, p0, Landroid/media/soundtrigger/SoundModel;->type:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Unknown sound model type: "

    .line 22
    .line 23
    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    move v4, v3

    .line 32
    :goto_0
    iput v4, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 33
    .line 34
    iget-object v2, p0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 41
    .line 42
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 45
    .line 46
    iget-object v2, p0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 53
    .line 54
    iget-object v1, p0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    .line 55
    .line 56
    iget p0, p0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    .line 57
    .line 58
    if-lez p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1, p0}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 p0, 0x0

    .line 70
    invoke-static {p0, v3}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :goto_1
    iput-object p0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 75
    .line 76
    return-object v0
.end method

.method public static aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;
    .locals 14

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    sget-object v6, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    if-eqz v7, :cond_0

    .line 18
    .line 19
    new-instance p0, Landroid/hardware/audio/common/V2_0/Uuid;

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    const/16 v8, 0x10

    .line 29
    .line 30
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    iput v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 35
    .line 36
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    int-to-short v7, v7

    .line 45
    iput-short v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 46
    .line 47
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    int-to-short v7, v7

    .line 56
    iput-short v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 57
    .line 58
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    int-to-short v7, v7

    .line 67
    iput-short v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 68
    .line 69
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    int-to-byte v7, v7

    .line 78
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    invoke-static {v9, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    int-to-byte v9, v9

    .line 87
    const/4 v10, 0x7

    .line 88
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-static {v10, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    int-to-byte v10, v10

    .line 97
    const/16 v11, 0x8

    .line 98
    .line 99
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-static {v11, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    int-to-byte v11, v11

    .line 108
    const/16 v12, 0x9

    .line 109
    .line 110
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    invoke-static {v12, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    int-to-byte v12, v12

    .line 119
    const/16 v13, 0xa

    .line 120
    .line 121
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v6, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    int-to-byte v6, v6

    .line 130
    new-array v0, v0, [B

    .line 131
    .line 132
    const/4 v8, 0x0

    .line 133
    aput-byte v7, v0, v8

    .line 134
    .line 135
    aput-byte v9, v0, v5

    .line 136
    .line 137
    aput-byte v10, v0, v4

    .line 138
    .line 139
    aput-byte v11, v0, v3

    .line 140
    .line 141
    aput-byte v12, v0, v2

    .line 142
    .line 143
    aput-byte v6, v0, v1

    .line 144
    .line 145
    iput-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v1, "Illegal format for UUID: "

    .line 151
    .line 152
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0
.end method

.method public static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 4
    .line 5
    new-instance v2, Landroid/media/soundtrigger/Properties;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/media/soundtrigger/Properties;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v2, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v3, v2, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    .line 17
    .line 18
    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 19
    .line 20
    iput v3, v2, Landroid/media/soundtrigger/Properties;->version:I

    .line 21
    .line 22
    iget-object v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 23
    .line 24
    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    array-length v4, v4

    .line 29
    const/4 v5, 0x6

    .line 30
    if-ne v4, v5, :cond_2

    .line 31
    .line 32
    iget v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-short v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    iget-short v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-short v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 51
    .line 52
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 57
    .line 58
    const/4 v15, 0x0

    .line 59
    aget-byte v4, v4, v15

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 66
    .line 67
    const/16 v16, 0x1

    .line 68
    .line 69
    aget-byte v4, v4, v16

    .line 70
    .line 71
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 76
    .line 77
    const/16 v17, 0x2

    .line 78
    .line 79
    aget-byte v4, v4, v17

    .line 80
    .line 81
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 86
    .line 87
    const/4 v12, 0x3

    .line 88
    aget-byte v4, v4, v12

    .line 89
    .line 90
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 95
    .line 96
    const/4 v13, 0x4

    .line 97
    aget-byte v4, v4, v13

    .line 98
    .line 99
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    iget-object v3, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 104
    .line 105
    const/4 v4, 0x5

    .line 106
    aget-byte v3, v3, v4

    .line 107
    .line 108
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    filled-new-array/range {v5 .. v14}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v4, "%08x-%04x-%04x-%04x-%02x%02x%02x%02x%02x%02x"

    .line 117
    .line 118
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iput-object v3, v2, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    .line 123
    .line 124
    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 125
    .line 126
    iput v3, v2, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 127
    .line 128
    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 129
    .line 130
    iput v3, v2, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    .line 131
    .line 132
    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 133
    .line 134
    iput v3, v2, Landroid/media/soundtrigger/Properties;->maxUsers:I

    .line 135
    .line 136
    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 137
    .line 138
    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iput v3, v2, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    .line 143
    .line 144
    iget-boolean v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 145
    .line 146
    iput-boolean v3, v2, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    .line 147
    .line 148
    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 149
    .line 150
    iput v3, v2, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    .line 151
    .line 152
    iget-boolean v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 153
    .line 154
    iput-boolean v3, v2, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    .line 155
    .line 156
    iget-boolean v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 157
    .line 158
    iput-boolean v3, v2, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    .line 159
    .line 160
    iget v1, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 161
    .line 162
    iput v1, v2, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    .line 163
    .line 164
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v1, v2, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    .line 167
    .line 168
    iget v0, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    .line 169
    .line 170
    and-int/lit8 v1, v0, 0x1

    .line 171
    .line 172
    if-eqz v1, :cond_0

    .line 173
    .line 174
    move/from16 v15, v16

    .line 175
    .line 176
    :cond_0
    and-int/lit8 v0, v0, 0x2

    .line 177
    .line 178
    if-eqz v0, :cond_1

    .line 179
    .line 180
    or-int/lit8 v15, v15, 0x2

    .line 181
    .line 182
    :cond_1
    iput v15, v2, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    .line 183
    .line 184
    return-object v2

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 186
    .line 187
    const-string v1, "UUID.node must be of length 6."

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0
.end method

.method public static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 4
    .line 5
    new-instance v1, Landroid/media/soundtrigger/RecognitionEvent;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    if-eq v2, v6, :cond_3

    .line 21
    .line 22
    if-ne v2, v4, :cond_0

    .line 23
    .line 24
    move v6, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Unknown recognition status: "

    .line 29
    .line 30
    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    move v6, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v6, v5

    .line 41
    :cond_3
    :goto_0
    iput v6, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 42
    .line 43
    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    .line 44
    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    if-ne v2, v3, :cond_4

    .line 48
    .line 49
    move v2, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v0, "Unknown sound model type: "

    .line 54
    .line 55
    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_5
    move v2, v5

    .line 64
    :goto_1
    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 65
    .line 66
    iget-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    .line 67
    .line 68
    iput-boolean v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    .line 69
    .line 70
    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    .line 71
    .line 72
    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    .line 73
    .line 74
    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    .line 75
    .line 76
    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    .line 77
    .line 78
    iget-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    .line 79
    .line 80
    iput-boolean v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    .line 81
    .line 82
    new-instance v2, Landroid/media/audio/common/AudioConfig;

    .line 83
    .line 84
    invoke-direct {v2}, Landroid/media/audio/common/AudioConfig;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 88
    .line 89
    iget v7, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    .line 90
    .line 91
    iget v8, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    .line 92
    .line 93
    iget v9, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    .line 94
    .line 95
    new-instance v10, Landroid/media/audio/common/AudioConfigBase;

    .line 96
    .line 97
    invoke-direct {v10}, Landroid/media/audio/common/AudioConfigBase;-><init>()V

    .line 98
    .line 99
    .line 100
    iput v7, v10, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    .line 101
    .line 102
    invoke-static {v8, v3}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    iput-object v7, v10, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    .line 107
    .line 108
    invoke-static {v9}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    iput-object v7, v10, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    .line 113
    .line 114
    iput-object v10, v2, Landroid/media/audio/common/AudioConfig;->base:Landroid/media/audio/common/AudioConfigBase;

    .line 115
    .line 116
    new-instance v7, Landroid/media/audio/common/AudioOffloadInfo;

    .line 117
    .line 118
    invoke-direct {v7}, Landroid/media/audio/common/AudioOffloadInfo;-><init>()V

    .line 119
    .line 120
    .line 121
    iget-object v8, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 122
    .line 123
    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 124
    .line 125
    iget v10, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 126
    .line 127
    iget v11, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 128
    .line 129
    new-instance v12, Landroid/media/audio/common/AudioConfigBase;

    .line 130
    .line 131
    invoke-direct {v12}, Landroid/media/audio/common/AudioConfigBase;-><init>()V

    .line 132
    .line 133
    .line 134
    iput v9, v12, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    .line 135
    .line 136
    invoke-static {v10, v5}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    iput-object v9, v12, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    .line 141
    .line 142
    invoke-static {v11}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    iput-object v9, v12, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    .line 147
    .line 148
    iput-object v12, v7, Landroid/media/audio/common/AudioOffloadInfo;->base:Landroid/media/audio/common/AudioConfigBase;

    .line 149
    .line 150
    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 151
    .line 152
    invoke-static {v9}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_stream_type_t_AudioStreamType(I)I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    iput v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->streamType:I

    .line 157
    .line 158
    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    .line 159
    .line 160
    iput v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->bitRatePerSecond:I

    .line 161
    .line 162
    iget-wide v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 163
    .line 164
    iput-wide v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->durationUs:J

    .line 165
    .line 166
    iget-boolean v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 167
    .line 168
    iput-boolean v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->hasVideo:Z

    .line 169
    .line 170
    iget-boolean v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 171
    .line 172
    iput-boolean v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->isStreaming:Z

    .line 173
    .line 174
    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 175
    .line 176
    iput v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->bitWidth:I

    .line 177
    .line 178
    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 179
    .line 180
    iput v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->offloadBufferSize:I

    .line 181
    .line 182
    iget v8, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    .line 183
    .line 184
    invoke-static {v8}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_usage_t_AudioUsage(I)I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    iput v8, v7, Landroid/media/audio/common/AudioOffloadInfo;->usage:I

    .line 189
    .line 190
    iput-object v7, v2, Landroid/media/audio/common/AudioConfig;->offloadInfo:Landroid/media/audio/common/AudioOffloadInfo;

    .line 191
    .line 192
    iget-wide v6, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    .line 193
    .line 194
    iput-wide v6, v2, Landroid/media/audio/common/AudioConfig;->frameCount:J

    .line 195
    .line 196
    iput-object v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    .line 197
    .line 198
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    new-array v2, v2, [B

    .line 205
    .line 206
    iput-object v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 207
    .line 208
    move v2, v5

    .line 209
    :goto_2
    iget-object v6, v1, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 210
    .line 211
    array-length v7, v6

    .line 212
    if-ge v2, v7, :cond_6

    .line 213
    .line 214
    iget-object v7, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    check-cast v7, Ljava/lang/Byte;

    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    aput-byte v7, v6, v2

    .line 227
    .line 228
    add-int/lit8 v2, v2, 0x1

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_6
    iget v0, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 232
    .line 233
    if-ne v0, v4, :cond_7

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_7
    move v3, v5

    .line 237
    :goto_3
    iput-boolean v3, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 238
    .line 239
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p0, Landroid/os/HidlMemory;

    .line 242
    .line 243
    invoke-static {p0}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    iput-object p0, v1, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 248
    .line 249
    return-object v1
.end method

.method public static hidl2aidlRecognitionModes(I)I
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    and-int/lit8 v1, p0, 0x2

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    or-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    :cond_1
    and-int/lit8 v1, p0, 0x4

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_2
    and-int/lit8 p0, p0, 0x8

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    or-int/lit8 v0, v0, 0x8

    .line 25
    .line 26
    :cond_3
    return v0
.end method
