.class public abstract Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public isReady(Lcom/android/server/pm/UserManagerInternal;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public onDequeuedLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public onQueuedLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract write()V
.end method
