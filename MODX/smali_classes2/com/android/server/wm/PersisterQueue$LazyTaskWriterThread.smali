.class public final Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    .line 2
    .line 3
    const-string p1, "LazyTaskWriterThread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    .line 7
    .line 8
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    :goto_1
    if-ltz v0, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/wm/PersisterQueue$Listener;

    .line 39
    .line 40
    check-cast v2, Lcom/android/server/wm/TaskPersister;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskPersister;->onPreProcessItem(Z)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/android/server/wm/PersisterQueue;->-$$Nest$mprocessNextItem(Lcom/android/server/wm/PersisterQueue;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 57
    :catch_0
    const-string p0, "PersisterQueue"

    .line 58
    .line 59
    const-string v0, "Persister thread is exiting. Should never happen in prod, butit\'s OK in tests."

    .line 60
    .line 61
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void
.end method
