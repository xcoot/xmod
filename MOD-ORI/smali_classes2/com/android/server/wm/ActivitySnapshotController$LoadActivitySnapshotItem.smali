.class public final Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivities:[Lcom/android/server/wm/ActivityRecord;

.field public final mCode:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivitySnapshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;[Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2
    .line 3
    invoke-direct {p0, p5, p4}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-class v2, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    .line 9
    .line 10
    if-eq v2, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    .line 16
    .line 17
    iget v2, p1, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 22
    .line 23
    iget v2, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 30
    .line 31
    if-ne p0, p1, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    :cond_1
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LoadActivitySnapshotItem{code="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

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
    .locals 9

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    :try_start_0
    const-string v2, "load_activity_snapshot"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    .line 11
    .line 12
    iget v3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    .line 13
    .line 14
    iget v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 32
    .line 33
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    .line 35
    .line 36
    iget-object v6, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    aget-object v6, v6, v5

    .line 39
    .line 40
    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivitySnapshotController;->hasRecord(Lcom/android/server/wm/ActivityRecord;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 54
    .line 55
    array-length v6, v4

    .line 56
    :goto_0
    if-ge v5, v6, :cond_2

    .line 57
    .line 58
    aget-object v7, v4, v5

    .line 59
    .line 60
    iget-object v8, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    .line 61
    .line 62
    iget-object v8, v8, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 63
    .line 64
    check-cast v8, Lcom/android/server/wm/ActivitySnapshotCache;

    .line 65
    .line 66
    invoke-virtual {v8, v2, v7}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method
