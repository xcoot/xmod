.class public abstract Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mClosed:Z

.field public mSnapshot:Lcom/android/server/pm/Computer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/android/server/pm/Computer;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public checkClosed()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mClosed:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Snapshot already closed"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mClosed:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    return-void
.end method
