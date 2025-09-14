.class public final Landroid/hardware/audio/common/V2_0/AudioConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public channelMask:I

.field public format:I

.field public frameCount:J

.field public offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

.field public sampleRateHz:I


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
    const-class v3, Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 20
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    .line 22
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    .line 29
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    .line 31
    if-eq v2, v3, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    .line 36
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    .line 38
    if-eq v2, v3, :cond_5

    .line 40
    return v1

    .line 41
    :cond_5
    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 43
    iget-object v3, p1, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 45
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_6

    .line 51
    return v1

    .line 52
    :cond_6
    iget-wide v2, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    .line 54
    iget-wide p0, p1, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    .line 56
    cmp-long p0, v2, p0

    .line 58
    if-eqz p0, :cond_7

    .line 60
    return v1

    .line 61
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    .line 9
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    .line 15
    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 21
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    iget-wide v4, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 38
    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p0

    .line 43
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.sampleRateHz = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .channelMask = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    .line 21
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask;->toString(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", .format = "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    .line 35
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioFormat;->toString(I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", .offloadInfo = "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", .frameCount = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    .line 59
    const-string/jumbo p0, "}"

    .line 62
    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
