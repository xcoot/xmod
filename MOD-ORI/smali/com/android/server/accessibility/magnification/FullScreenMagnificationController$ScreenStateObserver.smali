.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-static {p1, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
