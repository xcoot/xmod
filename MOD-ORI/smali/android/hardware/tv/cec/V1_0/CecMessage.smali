.class public final Landroid/hardware/tv/cec/V1_0/CecMessage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public body:Ljava/util/ArrayList;

.field public destination:I

.field public initiator:I


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
    const-class v3, Landroid/hardware/tv/cec/V1_0/CecMessage;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/tv/cec/V1_0/CecMessage;

    .line 19
    .line 20
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 21
    .line 22
    iget v3, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 28
    .line 29
    iget v3, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object p1, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 8
    .line 9
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{.initiator = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 10
    .line 11
    invoke-static {v1}, Landroid/hardware/tv/cec/V1_0/CecLogicalAddress;->toString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", .destination = "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 24
    .line 25
    invoke-static {v1}, Landroid/hardware/tv/cec/V1_0/CecLogicalAddress;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", .body = "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string/jumbo p0, "}"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x4

    .line 16
    .line 17
    iget v3, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-wide/16 v2, 0x10

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v2, 0x14

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Landroid/os/HwBlob;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    if-ge v4, v1, :cond_0

    .line 45
    .line 46
    int-to-long v5, v4

    .line 47
    iget-object v3, p0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Byte;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-wide/16 v3, 0x8

    .line 66
    .line 67
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
