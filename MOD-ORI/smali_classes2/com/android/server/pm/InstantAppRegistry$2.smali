.class public final Lcom/android/server/pm/InstantAppRegistry$2;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/pm/InstantAppRegistry;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, v0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
