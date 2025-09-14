.class public final Lcom/android/server/devicepolicy/PackageSetUnion;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .locals 0

    .line 1
    new-instance p0, Landroid/app/admin/StringSetUnion;

    .line 3
    invoke-direct {p0}, Landroid/app/admin/StringSetUnion;-><init>()V

    .line 6
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
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    .line 14
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

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
    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/Collection;

    .line 43
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Landroid/app/admin/PackageSetPolicyValue;

    .line 49
    invoke-direct {p1, p0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 52
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PackageSetUnion {}"

    .line 3
    return-object p0
.end method
