.class public Landroid/net/util/NetdService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final BASE_TIMEOUT_MS:J = 0x64L

.field private static final MAX_TIMEOUT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "NetdService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static get()Landroid/net/INetd;
    .locals 2

    const-wide/16 v0, -0x1

    .line 8
    invoke-static {v0, v1}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public static get(J)Landroid/net/INetd;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v2, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p0

    goto :goto_0

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    move-wide p0, v0

    .line 3
    :catch_0
    :goto_1
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    .line 4
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const-wide/16 v6, 0x64

    add-long/2addr p0, v6

    const-wide/16 v6, 0x3e8

    .line 5
    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 6
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 7
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static getInstance()Landroid/net/INetd;
    .locals 3

    .line 1
    const-string/jumbo v0, "netd"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "WARNING: returning null INetd instance."

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public static run(Landroid/net/util/NetdService$NetdCommand;)V
    .locals 3

    .line 1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Landroid/net/util/NetdService$NetdCommand;->run(Landroid/net/INetd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v2, "error communicating with netd: "

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0
.end method
