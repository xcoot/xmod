.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public captureTransition:Z

.field public concurrentCapture:Z

.field public description:Ljava/lang/String;

.field public implementor:Ljava/lang/String;

.field public maxBufferMs:I

.field public maxKeyPhrases:I

.field public maxSoundModels:I

.field public maxUsers:I

.field public powerConsumptionMw:I

.field public recognitionModes:I

.field public triggerInEvent:Z

.field public final uuid:Landroid/hardware/audio/common/V2_0/Uuid;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 20
    .line 21
    new-instance v1, Landroid/hardware/audio/common/V2_0/Uuid;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 27
    .line 28
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 29
    .line 30
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 31
    .line 32
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 33
    .line 34
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 35
    .line 36
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 37
    .line 38
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 39
    .line 40
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 43
    .line 44
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    return v1

    .line 42
    :cond_4
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 43
    .line 44
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 45
    .line 46
    if-eq v2, v3, :cond_5

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 50
    .line 51
    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 52
    .line 53
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_6

    .line 58
    .line 59
    return v1

    .line 60
    :cond_6
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 61
    .line 62
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 63
    .line 64
    if-eq v2, v3, :cond_7

    .line 65
    .line 66
    return v1

    .line 67
    :cond_7
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 68
    .line 69
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 70
    .line 71
    if-eq v2, v3, :cond_8

    .line 72
    .line 73
    return v1

    .line 74
    :cond_8
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 75
    .line 76
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 77
    .line 78
    if-eq v2, v3, :cond_9

    .line 79
    .line 80
    return v1

    .line 81
    :cond_9
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 82
    .line 83
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 84
    .line 85
    if-eq v2, v3, :cond_a

    .line 86
    .line 87
    return v1

    .line 88
    :cond_a
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 89
    .line 90
    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 91
    .line 92
    if-eq v2, v3, :cond_b

    .line 93
    .line 94
    return v1

    .line 95
    :cond_b
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 96
    .line 97
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 98
    .line 99
    if-eq v2, v3, :cond_c

    .line 100
    .line 101
    return v1

    .line 102
    :cond_c
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 103
    .line 104
    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 105
    .line 106
    if-eq v2, v3, :cond_d

    .line 107
    .line 108
    return v1

    .line 109
    :cond_d
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 110
    .line 111
    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 112
    .line 113
    if-eq v2, v3, :cond_e

    .line 114
    .line 115
    return v1

    .line 116
    :cond_e
    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 117
    .line 118
    iget p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 119
    .line 120
    if-eq p0, p1, :cond_f

    .line 121
    .line 122
    return v1

    .line 123
    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 22
    .line 23
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 38
    .line 39
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 44
    .line 45
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 50
    .line 51
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 56
    .line 57
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 62
    .line 63
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 68
    .line 69
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 74
    .line 75
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 80
    .line 81
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 86
    .line 87
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-wide/16 v7, 0x0

    .line 6
    .line 7
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iput-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    array-length v2, v2

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    int-to-long v3, v2

    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    const/4 v9, 0x0

    .line 26
    move-object/from16 v2, p1

    .line 27
    .line 28
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 29
    .line 30
    .line 31
    const-wide/16 v2, 0x10

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    array-length v4, v4

    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    int-to-long v11, v4

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 48
    .line 49
    .line 50
    move-result-wide v13

    .line 51
    const/16 v17, 0x0

    .line 52
    .line 53
    move-object/from16 v10, p1

    .line 54
    .line 55
    move-wide v15, v2

    .line 56
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 57
    .line 58
    .line 59
    const-wide/16 v2, 0x20

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 66
    .line 67
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-wide/16 v3, 0x24

    .line 73
    .line 74
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iput v3, v2, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 79
    .line 80
    const-wide/16 v3, 0x28

    .line 81
    .line 82
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt16(J)S

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    iput-short v3, v2, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 87
    .line 88
    const-wide/16 v3, 0x2a

    .line 89
    .line 90
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt16(J)S

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    iput-short v3, v2, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 95
    .line 96
    const-wide/16 v3, 0x2c

    .line 97
    .line 98
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt16(J)S

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    iput-short v3, v2, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 103
    .line 104
    iget-object v2, v2, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 105
    .line 106
    const/4 v3, 0x6

    .line 107
    const-wide/16 v4, 0x2e

    .line 108
    .line 109
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 110
    .line 111
    .line 112
    const-wide/16 v2, 0x34

    .line 113
    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 119
    .line 120
    const-wide/16 v2, 0x38

    .line 121
    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 127
    .line 128
    const-wide/16 v2, 0x3c

    .line 129
    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 135
    .line 136
    const-wide/16 v2, 0x40

    .line 137
    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 143
    .line 144
    const-wide/16 v2, 0x44

    .line 145
    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 151
    .line 152
    const-wide/16 v2, 0x48

    .line 153
    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 159
    .line 160
    const-wide/16 v2, 0x4c

    .line 161
    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 167
    .line 168
    const-wide/16 v2, 0x4d

    .line 169
    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 175
    .line 176
    const-wide/16 v2, 0x50

    .line 177
    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 183
    .line 184
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{.implementor = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", .description = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", .version = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", .uuid = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", .maxSoundModels = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", .maxKeyPhrases = "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", .maxUsers = "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", .recognitionModes = "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", .captureTransition = "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", .maxBufferMs = "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", .concurrentCapture = "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", .triggerInEvent = "

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", .powerConsumptionMw = "

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 130
    .line 131
    const-string/jumbo v1, "}"

    .line 132
    .line 133
    .line 134
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0
.end method
