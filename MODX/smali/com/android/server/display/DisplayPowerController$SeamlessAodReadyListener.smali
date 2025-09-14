.class public final Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/aod/AODManager$AODChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 6
    return-void
.end method


# virtual methods
.method public final readyToScreenTurningOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 5
    const-string v1, "[api] AODManager.AODChangeListener : Received readyToScreenTurningOn()."

    .line 7
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 12
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 14
    const/16 v1, 0x14

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 24
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 26
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    return-void
.end method
