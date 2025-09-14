.class public abstract Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static final varargs indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v2, "asList(...)"

    .line 10
    .line 11
    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
