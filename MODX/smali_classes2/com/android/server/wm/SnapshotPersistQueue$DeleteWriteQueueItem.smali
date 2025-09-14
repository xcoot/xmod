.class public final Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mId:I

.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 2
    .line 3
    invoke-direct {p0, p4, p3}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->mId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DeleteWriteQueueItem{ID="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->mId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", UserId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 19
    .line 20
    const-string/jumbo v1, "}"

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final write()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    const-string v2, "DeleteWriteQueueItem"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->mId:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 18
    .line 19
    invoke-static {v2, v3, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
