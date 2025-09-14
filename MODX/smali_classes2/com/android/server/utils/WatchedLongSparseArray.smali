.class public final Lcom/android/server/utils/WatchedLongSparseArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

.field public final mStorage:Landroid/util/LongSparseArray;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 3
    new-instance v0, Lcom/android/server/utils/WatchedLongSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedLongSparseArray$1;-><init>(Lcom/android/server/utils/WatchedLongSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    .line 4
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 7
    new-instance v0, Lcom/android/server/utils/WatchedLongSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedLongSparseArray$1;-><init>(Lcom/android/server/utils/WatchedLongSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    .line 8
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, p1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
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
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

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
    iget-object v1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean v2, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

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
    iget-object v2, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

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
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_0

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iget-object v6, v0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 46
    .line 47
    invoke-virtual {v6, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string/jumbo v0, "snapshot destination is not empty"

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
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
    iget-object p1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

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
    iget-object v2, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-boolean v3, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

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
    iget-object v3, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

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
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 47
    .line 48
    :cond_2
    return-void
.end method
