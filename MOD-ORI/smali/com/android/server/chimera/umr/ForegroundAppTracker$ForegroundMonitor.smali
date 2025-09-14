.class public final Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;


# instance fields
.field public mAppLaunch:Z


# direct methods
.method public static setCameraLaunch(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "cameraLaunch = "

    .line 2
    .line 3
    .line 4
    const-string v1, "ForegroundAppTracker"

    .line 5
    .line 6
    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    sget-object p0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    .line 12
    .line 13
    sget v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->DELAYED_RESET_CAMERA_LAUNCH_MS:I

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x3

    .line 19
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    int-to-long v2, v0

    .line 29
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final setAppLaunch(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->IS_DEBUG_ENABLED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "appLaunch = "

    .line 6
    .line 7
    const-string v1, "ForegroundAppTracker"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mAppLaunch:Z

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    sget-object p0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    .line 17
    .line 18
    sget p1, Lcom/android/server/chimera/umr/ForegroundAppTracker;->DELAYED_RESET_APP_LAUNCH_MS:I

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x2

    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    int-to-long v1, p1

    .line 34
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void
.end method
