.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

.field public captureAvailable:Z

.field public captureDelayMs:I

.field public capturePreambleMs:I

.field public captureSession:I

.field public data:Ljava/util/ArrayList;

.field public model:I

.field public status:I

.field public triggerInData:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    .line 7
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    .line 9
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 11
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    .line 13
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureSession:I

    .line 15
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    .line 17
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    .line 19
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    .line 21
    new-instance v1, Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, v1, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    .line 28
    iput v0, v1, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    .line 30
    iput v0, v1, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    .line 32
    new-instance v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 39
    iput v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 41
    iput v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 43
    iput v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 45
    iput v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    .line 47
    const-wide/16 v3, 0x0

    .line 49
    iput-wide v3, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 51
    iput-boolean v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 53
    iput-boolean v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 55
    iput v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 57
    iput v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 59
    iput v0, v2, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    .line 61
    iput-object v2, v1, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 63
    iput-wide v3, v1, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    .line 65
    iput-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 74
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 20
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    .line 22
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    .line 29
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    .line 31
    if-eq v2, v3, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 36
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 38
    if-eq v2, v3, :cond_5

    .line 40
    return v1

    .line 41
    :cond_5
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    .line 43
    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    .line 45
    if-eq v2, v3, :cond_6

    .line 47
    return v1

    .line 48
    :cond_6
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureSession:I

    .line 50
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureSession:I

    .line 52
    if-eq v2, v3, :cond_7

    .line 54
    return v1

    .line 55
    :cond_7
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    .line 57
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    .line 59
    if-eq v2, v3, :cond_8

    .line 61
    return v1

    .line 62
    :cond_8
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    .line 64
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    .line 66
    if-eq v2, v3, :cond_9

    .line 68
    return v1

    .line 69
    :cond_9
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    .line 71
    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    .line 73
    if-eq v2, v3, :cond_a

    .line 75
    return v1

    .line 76
    :cond_a
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 78
    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 80
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_b

    .line 86
    return v1

    .line 87
    :cond_b
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 89
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 91
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_c

    .line 97
    return v1

    .line 98
    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 11

    .line 1
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    .line 9
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 15
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    .line 21
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureSession:I

    .line 27
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 30
    move-result-object v5

    .line 31
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    .line 33
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 36
    move-result-object v6

    .line 37
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    .line 39
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 42
    move-result-object v7

    .line 43
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    .line 45
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 48
    move-result-object v8

    .line 49
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 51
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v9

    .line 59
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 61
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 64
    move-result p0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v10

    .line 69
    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 76
    move-result p0

    .line 77
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    .line 9
    const-wide/16 v0, 0x4

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    .line 17
    const-wide/16 v0, 0x8

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 25
    const-wide/16 v0, 0xc

    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 30
    move-result v0

    .line 31
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    .line 33
    const-wide/16 v0, 0x10

    .line 35
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureSession:I

    .line 41
    const-wide/16 v0, 0x14

    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 46
    move-result v0

    .line 47
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    .line 49
    const-wide/16 v0, 0x18

    .line 51
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 54
    move-result v0

    .line 55
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    .line 57
    const-wide/16 v0, 0x1c

    .line 59
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 62
    move-result v0

    .line 63
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    .line 65
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    const-wide/16 v1, 0x20

    .line 72
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 75
    move-result v1

    .line 76
    iput v1, v0, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    .line 78
    const-wide/16 v1, 0x24

    .line 80
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 83
    move-result v1

    .line 84
    iput v1, v0, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    .line 86
    const-wide/16 v1, 0x28

    .line 88
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 91
    move-result v1

    .line 92
    iput v1, v0, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    .line 94
    iget-object v1, v0, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    const-wide/16 v2, 0x30

    .line 101
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 104
    move-result v2

    .line 105
    iput v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 107
    const-wide/16 v2, 0x34

    .line 109
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 112
    move-result v2

    .line 113
    iput v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 115
    const-wide/16 v2, 0x38

    .line 117
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 120
    move-result v2

    .line 121
    iput v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 123
    const-wide/16 v2, 0x3c

    .line 125
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 128
    move-result v2

    .line 129
    iput v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 131
    const-wide/16 v2, 0x40

    .line 133
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 136
    move-result v2

    .line 137
    iput v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    .line 139
    const-wide/16 v2, 0x48

    .line 141
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt64(J)J

    .line 144
    move-result-wide v2

    .line 145
    iput-wide v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 147
    const-wide/16 v2, 0x50

    .line 149
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 152
    move-result v2

    .line 153
    iput-boolean v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 155
    const-wide/16 v2, 0x51

    .line 157
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 160
    move-result v2

    .line 161
    iput-boolean v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 163
    const-wide/16 v2, 0x54

    .line 165
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 168
    move-result v2

    .line 169
    iput v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 171
    const-wide/16 v2, 0x58

    .line 173
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 176
    move-result v2

    .line 177
    iput v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 179
    const-wide/16 v2, 0x5c

    .line 181
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 184
    move-result v2

    .line 185
    iput v2, v1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    .line 187
    const-wide/16 v1, 0x60

    .line 189
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt64(J)J

    .line 192
    move-result-wide v1

    .line 193
    iput-wide v1, v0, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    .line 195
    const-wide/16 v0, 0x70

    .line 197
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 200
    move-result v0

    .line 201
    int-to-long v2, v0

    .line 202
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 205
    move-result-wide v4

    .line 206
    const/4 v8, 0x1

    .line 207
    const-wide/16 v6, 0x68

    .line 209
    move-object v1, p1

    .line 210
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 213
    move-result-object p1

    .line 214
    iget-object p2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 219
    const/4 p2, 0x0

    .line 220
    :goto_0
    if-ge p2, v0, :cond_0

    .line 222
    int-to-long v1, p2

    .line 223
    invoke-virtual {p1, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    .line 226
    move-result v1

    .line 227
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 229
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 p2, p2, 0x1

    .line 238
    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.status = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v1, "SUCCESS"

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 19
    const-string v1, "ABORT"

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_2

    .line 25
    const-string v1, "FAILURE"

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    const-string v3, "0x"

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v2, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", .type = "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    .line 49
    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/SoundModelType;->toString(I)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .model = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .captureAvailable = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .captureSession = "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureSession:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .captureDelayMs = "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .capturePreambleMs = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .triggerInData = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", .audioConfig = "

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .data = "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo p0, "}"

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 146
    return-object p0
.end method
