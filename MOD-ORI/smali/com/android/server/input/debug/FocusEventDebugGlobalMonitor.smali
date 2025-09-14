.class public final Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;
.super Landroid/view/InputEventReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;


# direct methods
.method public constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;Lcom/android/server/input/InputManagerService;)V
    .locals 3

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    const-string v1, "FocusEventDebugGlobalMonitor"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p2, v1, v2, v0}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;->mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
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
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;->mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    check-cast v2, Landroid/view/MotionEvent;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/high16 v4, 0x400000

    .line 19
    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    invoke-direct {v3, v1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/MotionEvent;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method
