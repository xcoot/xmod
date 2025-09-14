.class public final Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public end:I

.field public start:I


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
    const-class v3, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 20
    iget v2, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    .line 22
    iget v3, p1, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    .line 29
    iget p1, p1, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    .line 31
    if-eq p0, p1, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    .line 9
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.start = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .end = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    .line 21
    const-string/jumbo v1, "}"

    .line 24
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
