.class public final Lcom/android/server/utils/WatchedArrayList;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/WatchedArrayList$1;

.field public final mStorage:Ljava/util/ArrayList;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/utils/WatchedArrayList$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayList$1;-><init>(Lcom/android/server/utils/WatchedArrayList;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/WatchedArrayList$1;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-boolean v3, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    instance-of v3, v2, Lcom/android/server/utils/Watchable;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    check-cast v2, Lcom/android/server/utils/Watchable;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/WatchedArrayList$1;

    .line 31
    .line 32
    invoke-interface {v2, v3}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/utils/WatchedArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/utils/WatchedArrayList;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

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
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final registerChild(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

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
    check-cast p1, Lcom/android/server/utils/Watchable;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/WatchedArrayList$1;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 2

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
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-ge v0, p1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p2, p1, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    check-cast p1, Lcom/android/server/utils/Watchable;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/WatchedArrayList$1;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v1, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string/jumbo v0, "snapshot destination is not empty"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
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
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

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
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-boolean v3, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

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
    iget-object v3, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/WatchedArrayList$1;

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
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 47
    .line 48
    :cond_2
    return-void
.end method
