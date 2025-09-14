.class public abstract Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static final minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V
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
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
