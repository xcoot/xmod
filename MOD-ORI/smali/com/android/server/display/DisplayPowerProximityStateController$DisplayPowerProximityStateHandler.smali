.class public final Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerProximityStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "Ignoring proximity"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->debounceProximitySensor()V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method
