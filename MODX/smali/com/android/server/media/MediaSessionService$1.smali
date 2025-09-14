.class public final Lcom/android/server/media/MediaSessionService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/MediaCommunicationManager$SessionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSession2TokenCreated(Landroid/media/Session2Token;I)V
    .locals 2

    .line 1
    sget p2, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 3
    const-string p2, "MediaSessionService"

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "Session2 is created "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance p2, Lcom/android/server/media/MediaSession2Record;

    .line 24
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 26
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    .line 28
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 31
    move-result-object v1

    .line 32
    invoke-direct {p2, p1, v0, v1}, Lcom/android/server/media/MediaSession2Record;-><init>(Landroid/media/Session2Token;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V

    .line 35
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter p1

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 42
    invoke-virtual {p2}, Lcom/android/server/media/MediaSession2Record;->getUserId()I

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit p1

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method
