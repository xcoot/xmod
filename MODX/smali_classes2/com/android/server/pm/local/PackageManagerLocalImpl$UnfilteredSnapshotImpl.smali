.class public final Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;
.super Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;


# instance fields
.field public mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

.field public mCachedUnmodifiablePackageStates:Ljava/util/Map;

.field public mCachedUnmodifiableSharedUsers:Ljava/util/Map;


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->close()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    .line 8
    .line 9
    return-void
.end method

.method public final filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getDisabledSystemPackageStates()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getDisabledSystemPackageStates()Landroid/util/ArrayMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getPackageStates()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getSharedUsers()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getSharedUsers()Landroid/util/ArrayMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    .line 21
    .line 22
    return-object p0
.end method
