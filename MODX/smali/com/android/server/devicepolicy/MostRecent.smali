.class public final Lcom/android/server/devicepolicy/MostRecent;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .locals 0

    .line 1
    new-instance p0, Landroid/app/admin/MostRecent;

    .line 3
    invoke-direct {p0}, Landroid/app/admin/MostRecent;-><init>()V

    .line 6
    return-object p0
.end method

.method public final resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result p1

    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroid/app/admin/PolicyValue;

    .line 36
    :goto_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MostRecent {}"

    .line 3
    return-object p0
.end method
