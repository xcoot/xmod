.class public final Lcom/android/server/wm/Letterbox$TapEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDoubleTapDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Landroid/view/InputChannel;Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/android/server/wm/Letterbox$DoubleTapListener;

    .line 9
    .line 10
    invoke-direct {p2, p1, p3}, Lcom/android/server/wm/Letterbox$DoubleTapListener;-><init>(Lcom/android/server/wm/Letterbox;Lcom/android/server/wm/WindowManagerService;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Landroid/view/GestureDetector;

    .line 14
    .line 15
    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p1, p3, p2, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$TapEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroid/view/MotionEvent;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$TapEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
