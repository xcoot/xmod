.class public final Lcom/android/server/utils/WatchedSparseSetArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mStorage:Landroid/util/SparseSetArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseSetArray;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseSetArray;

    .line 5
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 6
    invoke-direct {v0, p1}, Landroid/util/SparseSetArray;-><init>(Landroid/util/SparseSetArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 8
    .line 9
    .line 10
    return p1
.end method

.method public final remove(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 4
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final remove(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_0
    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>(Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
