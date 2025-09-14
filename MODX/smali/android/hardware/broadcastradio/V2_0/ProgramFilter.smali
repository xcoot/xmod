.class public final Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public excludeModifications:Z

.field public identifierTypes:Ljava/util/ArrayList;

.field public identifiers:Ljava/util/ArrayList;

.field public includeCategories:Z


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
    const-class v3, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    .line 20
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 22
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 30
    return v1

    .line 31
    :cond_3
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 33
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 35
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 41
    return v1

    .line 42
    :cond_4
    iget-boolean v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 44
    iget-boolean v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 46
    if-eq v2, v3, :cond_5

    .line 48
    return v1

    .line 49
    :cond_5
    iget-boolean p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 51
    iget-boolean p1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 53
    if-eq p0, p1, :cond_6

    .line 55
    return v1

    .line 56
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 13
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    iget-boolean v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 23
    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    iget-boolean p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 29
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 32
    move-result-object p0

    .line 33
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.identifierTypes = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .identifiers = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", .includeCategories = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", .excludeModifications = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-boolean p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 41
    const-string/jumbo v1, "}"

    .line 44
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
