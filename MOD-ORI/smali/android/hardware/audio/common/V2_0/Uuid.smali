.class public final Landroid/hardware/audio/common/V2_0/Uuid;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public node:[B

.field public timeLow:I

.field public timeMid:S

.field public variantAndClockSeqHigh:S

.field public versionAndTimeHigh:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 6
    .line 7
    iput-short v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 8
    .line 9
    iput-short v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 10
    .line 11
    iput-short v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    iput-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 17
    .line 18
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
    const-class v3, Landroid/hardware/audio/common/V2_0/Uuid;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/audio/common/V2_0/Uuid;

    .line 19
    .line 20
    iget v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 21
    .line 22
    iget v3, p1, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 28
    .line 29
    iget-short v3, p1, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 35
    .line 36
    iget-short v3, p1, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 37
    .line 38
    if-eq v2, v3, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_5
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 42
    .line 43
    iget-short v3, p1, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 44
    .line 45
    if-eq v2, v3, :cond_6

    .line 46
    .line 47
    return v1

    .line 48
    :cond_6
    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 49
    .line 50
    iget-object p1, p1, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 51
    .line 52
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_7

    .line 57
    .line 58
    return v1

    .line 59
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-short v3, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 50
    .line 51
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{.timeLow = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", .timeMid = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", .versionAndTimeHigh = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", .variantAndClockSeqHigh = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", .node = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 50
    .line 51
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string/jumbo p0, "}"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x6

    .line 15
    .line 16
    add-long/2addr v0, p2

    .line 17
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0x8

    .line 23
    .line 24
    add-long/2addr v0, p2

    .line 25
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0xa

    .line 31
    .line 32
    add-long/2addr p2, v0

    .line 33
    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    array-length v0, p0

    .line 38
    const/4 v1, 0x6

    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p1, "Array element is not of the expected length"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method
