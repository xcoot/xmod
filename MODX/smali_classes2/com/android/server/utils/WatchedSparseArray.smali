.class public final Lcom/android/server/utils/WatchedSparseArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/WatchedSparseArray$1;

.field public final mStorage:Landroid/util/SparseArray;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 3
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/WatchedSparseArray$1;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 7
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/WatchedSparseArray$1;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseArray;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 11
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/WatchedSparseArray$1;

    .line 12
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    iget-object v3, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final delete(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf$4(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseArray;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf$4(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    instance-of p1, p2, Lcom/android/server/utils/Watchable;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    check-cast p2, Lcom/android/server/utils/Watchable;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/WatchedSparseArray$1;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-ge v0, p1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    instance-of v2, v1, Lcom/android/server/utils/Watchable;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    check-cast v1, Lcom/android/server/utils/Watchable;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/WatchedSparseArray$1;

    .line 41
    .line 42
    invoke-interface {v1, v2}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 2

    .line 11
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    .line 12
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>(I)V

    .line 14
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

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

.method public final unregisterChildIf$4(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    check-cast p1, Lcom/android/server/utils/Watchable;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/WatchedSparseArray$1;

    .line 21
    .line 22
    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    move v1, v0

    .line 20
    :goto_0
    if-ge v1, p1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-boolean v3, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    instance-of v3, v2, Lcom/android/server/utils/Watchable;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    check-cast v2, Lcom/android/server/utils/Watchable;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/WatchedSparseArray$1;

    .line 39
    .line 40
    invoke-interface {v2, v3}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 47
    .line 48
    :cond_2
    return-void
.end method
