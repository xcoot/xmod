.class public final Lcom/android/server/dreams/DreamManagerService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDreamStopped(Landroid/os/Binder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 13
    .line 14
    if-ne v2, p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p1, v0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda7;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/dreams/DreamManagerService;Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method
