.class public final Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
.super Landroid/os/ResultReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAsSystemService:Z

.field public mHandled:Z

.field public final mKeyEvent:Landroid/view/KeyEvent;

.field public final mNeedWakeLock:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 3
    iget-object v0, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 5
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 7
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 10
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 12
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 14
    const-wide/16 v0, 0x3e8

    .line 16
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    .line 23
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    .line 25
    iput-boolean p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    .line 27
    iput-object p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    .line 29
    iput-boolean p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    .line 31
    return-void
.end method


# virtual methods
.method public final dispatchMediaKeyEvent()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    .line 9
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 11
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 13
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 20
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 22
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 27
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 29
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 35
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 37
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    .line 39
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    .line 41
    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    .line 43
    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    .line 45
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    .line 47
    iget-boolean v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    .line 49
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 57
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 59
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    .line 61
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    .line 63
    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    .line 65
    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    .line 67
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    .line 69
    iget-boolean v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 77
    :goto_0
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 4
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    .line 6
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 8
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 10
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 12
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->dispatchMediaKeyEvent()V

    .line 19
    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "The media key listener is timed-out for "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "MediaSessionService"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->dispatchMediaKeyEvent()V

    .line 25
    return-void
.end method
