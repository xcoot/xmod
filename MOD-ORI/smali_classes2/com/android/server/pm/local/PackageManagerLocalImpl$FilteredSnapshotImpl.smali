.class public final Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
.super Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;


# instance fields
.field public final mCallingUid:I

.field public mFilteredPackageStates:Ljava/util/Map;

.field public final mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    .line 11
    .line 12
    iput-object p4, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final checkClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->close()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    .line 6
    .line 7
    return-void
.end method

.method public final getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->checkClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    .line 9
    .line 10
    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getPackageStates()Ljava/util/Map;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->checkClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    .line 5
    .line 6
    if-nez v0, :cond_2

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
    new-instance v1, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 33
    .line 34
    iget v6, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    .line 35
    .line 36
    iget v7, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    .line 37
    .line 38
    invoke-interface {v5, v4, v6, v7}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    .line 61
    .line 62
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    .line 63
    .line 64
    return-object p0
.end method
