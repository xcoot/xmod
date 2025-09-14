.class public final synthetic Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/IdmapDaemon$Connection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon$Connection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/IdmapDaemon$Connection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/IdmapDaemon$Connection;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :try_start_1
    const-string v1, "idmap2d"

    .line 26
    .line 27
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    const-string v2, "OverlayManager"

    .line 33
    .line 34
    const-string v3, "Failed to disable idmap2 daemon"

    .line 35
    .line 36
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    :goto_1
    monitor-exit v0

    .line 49
    :goto_2
    return-void

    .line 50
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p0
.end method
