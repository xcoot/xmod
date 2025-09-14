.class public final Lcom/android/server/utils/WatchedArraySet;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/WatchedArraySet$1;

.field public final mStorage:Landroid/util/ArraySet;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 3
    new-instance v1, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v1, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    .line 4
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArraySet;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 7
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    .line 8
    new-instance v0, Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    instance-of v1, p1, Lcom/android/server/utils/Watchable;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/android/server/utils/Watchable;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 23
    .line 24
    .line 25
    return v0
.end method

.method public final clear()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

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
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-boolean v3, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

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
    iget-object v3, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

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
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

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
    instance-of v0, p1, Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/utils/WatchedArraySet;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArraySet;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
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
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

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
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean v2, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

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
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

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

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

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
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final snapshot()Lcom/android/server/utils/WatchedArraySet;
    .locals 5

    .line 2
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    .line 3
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    iget-object v3, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-static {v3}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    iget-object v4, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "snapshot destination is not empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

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
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-boolean v3, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

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
    iget-object v3, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

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
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 47
    .line 48
    :cond_2
    return-void
.end method
