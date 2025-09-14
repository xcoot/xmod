.class public final Landroid/hardware/health/V2_0/StorageInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public attr:Landroid/hardware/health/V2_0/StorageAttribute;

.field public eol:S

.field public lifetimeA:S

.field public lifetimeB:S

.field public version:Ljava/lang/String;


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
    const-class v3, Landroid/hardware/health/V2_0/StorageInfo;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/health/V2_0/StorageInfo;

    .line 20
    iget-object v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 22
    iget-object v3, p1, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

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
    iget-short v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 33
    iget-short v3, p1, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 35
    if-eq v2, v3, :cond_4

    .line 37
    return v1

    .line 38
    :cond_4
    iget-short v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 40
    iget-short v3, p1, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 42
    if-eq v2, v3, :cond_5

    .line 44
    return v1

    .line 45
    :cond_5
    iget-short v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 47
    iget-short v3, p1, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 49
    if-eq v2, v3, :cond_6

    .line 51
    return v1

    .line 52
    :cond_6
    iget-object p0, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 54
    iget-object p1, p1, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 56
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_7

    .line 62
    return v1

    .line 63
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 13
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    iget-short v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 27
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v2

    .line 39
    iget-short v3, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 41
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 48
    move-result v3

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v3

    .line 53
    iget-object p0, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 55
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 58
    move-result p0

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p0

    .line 63
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 70
    move-result p0

    .line 71
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.attr = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .eol = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", .lifetimeA = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", .lifetimeB = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", .version = "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object p0, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "}"

    .line 54
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
