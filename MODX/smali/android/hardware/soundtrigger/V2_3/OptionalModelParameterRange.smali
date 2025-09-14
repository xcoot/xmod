.class public final Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public hidl_d:B

.field public hidl_o:Ljava/lang/Object;


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
    const-class v3, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    .line 20
    iget-byte v2, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 22
    iget-byte v3, p1, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 29
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 31
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_4

    .line 37
    return v1

    .line 38
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 13
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .locals 5

    .line 1
    iget-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo v0, "null"

    .line 22
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    const-string v4, "Read access to inactive union components is disallowed. Discriminator value is "

    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-byte v4, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, " (corresponding to "

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 43
    if-eqz p0, :cond_2

    .line 45
    if-eq p0, v1, :cond_1

    .line 47
    const-string p0, "Unknown"

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string/jumbo p0, "range"

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string/jumbo p0, "noinit"

    .line 57
    :goto_1
    const-string v1, "), and hidl_o is of type "

    .line 59
    const-string v4, "."

    .line 61
    invoke-static {v3, p0, v1, v0, v4}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v2

    .line 69
    :cond_3
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 71
    if-eqz v0, :cond_5

    .line 73
    const-class v1, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    new-instance p0, Ljava/lang/Error;

    .line 84
    const-string v0, "Union is in a corrupted state."

    .line 86
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0

    .line 90
    :cond_5
    :goto_2
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 92
    check-cast p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 94
    return-object p0
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 6
    move-result-object p1

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 12
    move-result v0

    .line 13
    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 20
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x0

    .line 26
    iput v1, v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    .line 28
    iput v1, v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    .line 30
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 32
    const-wide/16 v1, 0x4

    .line 34
    invoke-virtual {p1, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 37
    move-result p0

    .line 38
    iput p0, v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    .line 40
    const-wide/16 v1, 0x8

    .line 42
    invoke-virtual {p1, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 45
    move-result p0

    .line 46
    iput p0, v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "Unknown union discriminator (value: "

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 60
    const-string v1, ")."

    .line 62
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1

    .line 70
    :cond_1
    new-instance p1, Landroid/hidl/safe_union/V1_0/Monostate;

    .line 72
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 77
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-byte v1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    if-ne v1, v2, :cond_0

    .line 16
    const-string v1, ".range = "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    goto/16 :goto_3

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/Error;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "Unknown union discriminator (value: "

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 41
    const-string v2, ")."

    .line 43
    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0

    .line 51
    :cond_1
    const-string v1, ".noinit = "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-byte v1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 58
    if-eqz v1, :cond_5

    .line 60
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 62
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v0, "null"

    .line 76
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    const-string v4, "Read access to inactive union components is disallowed. Discriminator value is "

    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-byte v4, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v4, " (corresponding to "

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 97
    if-eqz p0, :cond_4

    .line 99
    if-eq p0, v2, :cond_3

    .line 101
    const-string p0, "Unknown"

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const-string/jumbo p0, "range"

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    const-string/jumbo p0, "noinit"

    .line 111
    :goto_1
    const-string v2, "), and hidl_o is of type "

    .line 113
    const-string v4, "."

    .line 115
    invoke-static {v3, p0, v2, v0, v4}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    throw v1

    .line 123
    :cond_5
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 125
    if-eqz v1, :cond_7

    .line 127
    const-class v2, Landroid/hidl/safe_union/V1_0/Monostate;

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_6

    .line 135
    goto :goto_2

    .line 136
    :cond_6
    new-instance p0, Ljava/lang/Error;

    .line 138
    const-string v0, "Union is in a corrupted state."

    .line 140
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 143
    throw p0

    .line 144
    :cond_7
    :goto_2
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 146
    check-cast p0, Landroid/hidl/safe_union/V1_0/Monostate;

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    :goto_3
    const-string/jumbo p0, "}"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p0

    .line 161
    return-object p0
.end method
