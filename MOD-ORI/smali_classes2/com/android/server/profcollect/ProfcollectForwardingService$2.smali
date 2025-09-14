.class public final Lcom/android/server/profcollect/ProfcollectForwardingService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p0, "com.android.server.profcollect.UPLOAD_PROFILES"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string p0, "ProfcollectForwardingService"

    .line 14
    .line 15
    const-string p1, "Received broadcast to pack and upload reports"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-direct {p2, v0, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
