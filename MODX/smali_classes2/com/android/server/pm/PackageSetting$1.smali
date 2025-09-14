.class public final Lcom/android/server/pm/PackageSetting$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
