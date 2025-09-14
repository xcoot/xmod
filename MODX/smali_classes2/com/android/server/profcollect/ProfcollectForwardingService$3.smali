.class public final Lcom/android/server/profcollect/ProfcollectForwardingService$3;
.super Landroid/os/UpdateEngineCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onPayloadApplicationComplete(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStatusUpdate(IF)V
    .locals 1

    .line 1
    const/4 p0, 0x6

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p2, v0, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
