.class public final Lcom/samsung/android/knoxguard/service/KGEventQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HANDLER_THREAD_NAME:Ljava/lang/String; = "KG_EVENT_HANDLER_THREAD"

.field public static final TAG:Ljava/lang/String; = "KG.KGEventQueue"

.field public static kgEventQueue:Lcom/samsung/android/knoxguard/service/KGEventQueue;


# instance fields
.field public eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

.field public eventHandlerThread:Landroid/os/HandlerThread;

.field public idleHandler:Landroid/os/MessageQueue$IdleHandler;

.field public final mEventLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->mEventLock:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->kgEventQueue:Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->kgEventQueue:Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->kgEventQueue:Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final addIdleHandler()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventQueue$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/samsung/android/knoxguard/service/KGEventQueue$1;-><init>(Lcom/samsung/android/knoxguard/service/KGEventQueue;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    return-void
.end method

.method public final enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->mEventLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->startThread()V

    .line 4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iput p2, v1, Landroid/os/Message;->what:I

    .line 6
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->addIdleHandler()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    .line 6
    .line 7
    const-string v1, "KG_EVENT_HANDLER_THREAD"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final stopThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->mEventLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method
