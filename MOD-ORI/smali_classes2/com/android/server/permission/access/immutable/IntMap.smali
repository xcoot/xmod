.class public abstract Lcom/android/server/permission/access/immutable/IntMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final array:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final toMutable()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/IntMap;-><init>(Landroid/util/SparseArray;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

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
