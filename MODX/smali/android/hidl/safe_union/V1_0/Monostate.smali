.class public final Landroid/hidl/safe_union/V1_0/Monostate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return p0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    const-class v2, Landroid/hidl/safe_union/V1_0/Monostate;

    .line 15
    if-eq v1, v2, :cond_2

    .line 17
    return p0

    .line 18
    :cond_2
    check-cast p1, Landroid/hidl/safe_union/V1_0/Monostate;

    .line 20
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "{}"

    .line 4
    return-object p0
.end method
