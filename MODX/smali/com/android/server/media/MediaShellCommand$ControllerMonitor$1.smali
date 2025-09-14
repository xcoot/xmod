.class public final Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;
.super Landroid/os/HandlerThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    .line 3
    const-string p1, "MediaCb"

    .line 5
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    .line 3
    iget-object v1, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 5
    iget-object v0, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    .line 7
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    .line 13
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 15
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 17
    const-string v0, "Error registering monitor callback"

    .line 19
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method
