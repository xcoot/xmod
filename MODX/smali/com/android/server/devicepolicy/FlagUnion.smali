.class public final Lcom/android/server/devicepolicy/FlagUnion;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .locals 0

    .line 1
    sget-object p0, Landroid/app/admin/FlagUnion;->FLAG_UNION:Landroid/app/admin/FlagUnion;

    .line 3
    return-object p0
.end method

.method public final resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/admin/PolicyValue;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result p0

    .line 41
    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v0

    .line 51
    or-int/2addr p0, v0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p1, Landroid/app/admin/IntegerPolicyValue;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result p0

    .line 63
    invoke-direct {p1, p0}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 66
    move-object p0, p1

    .line 67
    :goto_1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "IntegerUnion {}"

    .line 3
    return-object p0
.end method
