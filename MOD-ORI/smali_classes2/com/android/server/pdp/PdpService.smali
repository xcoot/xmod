.class public final Lcom/android/server/pdp/PdpService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

.field public final mSvcPdpThread:Lcom/android/server/pdp/PdpService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/pdp/PdpService$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/pdp/PdpService$1;-><init>(Lcom/android/server/pdp/PdpService;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Lcom/android/server/pdp/PdpService$1;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final handleDisplayPDPToast(ILjava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "PdpService"

    .line 2
    .line 3
    const-string v1, "[PDP] displayPDPToast start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-gt v2, p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v3, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/16 v4, 0x10

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "[PDP] Toast exception"

    .line 32
    .line 33
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    const-string p0, "[PDP] displayPDPToast end"

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "[PDP] PHASE_BOOT_COMPLETED"

    .line 6
    .line 7
    const-string v0, "PdpService"

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string p1, "[PDP] pdpServiceReady >"

    .line 13
    .line 14
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    .line 30
    .line 31
    const-wide/16 v1, 0x1770

    .line 32
    .line 33
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    .line 35
    .line 36
    const-string p0, "[PDP] pdpServiceReady <"

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const-string p0, "PdpService"

    .line 2
    .line 3
    const-string v0, "[PDP] onStart"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
