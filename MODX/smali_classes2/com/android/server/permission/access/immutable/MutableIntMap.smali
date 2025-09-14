.class public final Lcom/android/server/permission/access/immutable/MutableIntMap;
.super Lcom/android/server/permission/access/immutable/IntMap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/IntMap;-><init>(Landroid/util/SparseArray;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
