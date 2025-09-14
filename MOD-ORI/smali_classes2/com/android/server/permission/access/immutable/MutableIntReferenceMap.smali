.class public final Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final array:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final get(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

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

.method public final keyAt(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final mutate(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public final put(ILcom/android/server/permission/access/immutable/Immutable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 4
    .line 5
    invoke-direct {v0, p2, p2}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-ltz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :goto_0
    check-cast p1, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 27
    .line 28
    return-void
.end method

.method public final removeAt$1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8
    .line 9
    .line 10
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    iget-object p0, v1, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 18
    .line 19
    return-void
.end method

.method public final toMutable()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

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
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

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
