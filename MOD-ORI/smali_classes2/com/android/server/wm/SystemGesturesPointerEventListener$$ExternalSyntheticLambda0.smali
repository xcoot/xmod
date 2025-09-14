.class public final synthetic Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Cannot create GestureDetector, display removed:"

    .line 20
    .line 21
    const-string v1, "SystemGestures"

    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    .line 42
    .line 43
    :goto_0
    return-void
.end method
