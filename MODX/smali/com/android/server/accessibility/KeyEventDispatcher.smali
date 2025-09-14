.class public final Lcom/android/server/accessibility/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

.field public final mKeyEventTimeoutHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mMessageTypeForSendKeyEvent:I

.field public final mPendingEventPool:Landroid/util/Pools$Pool;

.field public final mPendingEventsMap:Ljava/util/Map;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;Landroid/os/PowerManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 6
    const/16 v1, 0xa

    .line 8
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 20
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    .line 28
    const-class v1, Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 30
    const-string v1, "KeyEventDispatcher"

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, p0, v2, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 36
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 42
    :goto_0
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    .line 44
    const/16 v0, 0x8

    .line 46
    iput v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    .line 48
    new-instance v0, Landroid/os/Handler;

    .line 50
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 57
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    .line 61
    iput-object p3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    .line 63
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    const-string p0, "KeyEventDispatcher"

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "Unknown message: "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget p1, p1, Landroid/os/Message;->what:I

    .line 17
    invoke-static {v0, p1, p0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    const-string v0, "KeyEventDispatcher"

    .line 24
    const-string v2, "KeyEventDispatcher handleMessage cannot receive setOnKeyEventResult"

    .line 26
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    check-cast p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 33
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 38
    check-cast v2, Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v2

    .line 48
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    monitor-exit v0

    .line 76
    return v1

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z
    .locals 7

    .line 1
    const-string v0, "KeyEventDispatcher"

    .line 3
    const-string v1, "KeyEventDispatcher notifyKeyEventLocked"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    move-object v3, p3

    .line 16
    check-cast v3, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x1

    .line 23
    if-ge v2, v4, :cond_4

    .line 25
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;

    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    .line 34
    move-result v4

    .line 35
    invoke-interface {v3, p1, v4}, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;->onKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3

    .line 41
    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 45
    check-cast v0, Landroid/util/Pools$SimplePool;

    .line 47
    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 53
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    :cond_0
    iput-object p1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 62
    iput p2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    .line 64
    iput v1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 66
    iput-boolean v1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 70
    check-cast v4, Landroid/util/ArrayMap;

    .line 72
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/util/ArrayList;

    .line 78
    if-nez v4, :cond_2

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    .line 82
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v6, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 87
    check-cast v6, Landroid/util/ArrayMap;

    .line 89
    invoke-virtual {v6, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget v3, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 97
    add-int/2addr v3, v5

    .line 98
    iput v3, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 100
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    if-nez v0, :cond_5

    .line 105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    .line 108
    return v1

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 111
    invoke-virtual {p1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 114
    move-result-object p1

    .line 115
    iget-object p0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 117
    const-wide/16 p2, 0x1f4

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    return v5
.end method

.method public final removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 10
    return v2

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 16
    iget-boolean v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 18
    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object v3, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 26
    invoke-virtual {v0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 29
    :cond_1
    iget v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    .line 31
    const/high16 v3, 0x40000000    # 2.0f

    .line 33
    or-int/2addr v0, v3

    .line 34
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    .line 36
    iget v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    .line 38
    iget-object v5, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 40
    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 50
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 55
    check-cast p0, Landroid/util/Pools$SimplePool;

    .line 57
    invoke-virtual {p0, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 60
    return v1
.end method

.method public final setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V
    .locals 6

    .line 1
    const-string v0, "KeyEventDispatcher"

    .line 3
    const-string v1, "KeyEventDispatcher setOnKeyEventResult"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 13
    check-cast v1, Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_1

    .line 29
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 35
    iget-object v4, v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 37
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getSequenceNumber()I

    .line 40
    move-result v4

    .line 41
    if-ne v4, p3, :cond_0

    .line 43
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v3, 0x0

    .line 51
    :goto_1
    if-eqz v3, :cond_3

    .line 53
    if-eqz p2, :cond_2

    .line 55
    iget-boolean p1, v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 57
    if-nez p1, :cond_2

    .line 59
    iput-boolean p2, v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 64
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    iget-object p3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    .line 67
    iget-object v2, v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 69
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 72
    move-result-wide v4

    .line 73
    const/4 v2, 0x3

    .line 74
    invoke-virtual {p3, v4, v5, v2, v1}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :try_start_2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_3

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw p0

    .line 88
    :cond_2
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    .line 91
    :cond_3
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p0
.end method
