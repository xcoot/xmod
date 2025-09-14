.class public final Lcom/android/server/display/DisplayManagerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string p0, "CustomFrequencyManagerService"

    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-static {p0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    move-result v0

    .line 19
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-interface {p0, v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendTid(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 36
    :cond_0
    :goto_0
    return-void
.end method
