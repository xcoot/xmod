.class public final Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final map:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 4
    .line 5
    invoke-direct {v0, p2, p2}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 13
    .line 14
    return-void
.end method

.method public final remove$1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 8
    .line 9
    return-void
.end method

.method public final toMutable()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>(Landroid/util/ArrayMap;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 10
    .line 11
    return-object p0
.end method
