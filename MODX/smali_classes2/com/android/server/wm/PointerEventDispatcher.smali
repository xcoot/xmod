.class public final Lcom/android/server/wm/PointerEventDispatcher;
.super Landroid/view/InputEventReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mListeners:Ljava/util/ArrayList;

.field public mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, p1, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    new-array p1, p1, [Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    and-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Landroid/view/MotionEvent;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    new-array v3, v3, [Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 31
    .line 32
    iput-object v3, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 43
    .line 44
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    move v2, v0

    .line 46
    :goto_1
    :try_start_2
    array-length v4, v3

    .line 47
    if-ge v2, v4, :cond_1

    .line 48
    .line 49
    aget-object v4, v3, v2

    .line 50
    .line 51
    invoke-interface {v4, v1}, Landroid/view/WindowManagerPolicyConstants$PointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception v1

    .line 58
    goto :goto_3

    .line 59
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method
