.class public final Lcom/android/server/am/Pageboost$DaemonConnector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public sOutputStream:Ljava/io/OutputStream;

.field public sSocket:Landroid/net/LocalSocket;

.field public sSocketName:Ljava/lang/String;


# virtual methods
.method public final openSocket()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 10
    .line 11
    new-instance v2, Landroid/net/LocalSocketAddress;

    .line 12
    .line 13
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 14
    .line 15
    invoke-direct {v2, v0, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 31
    .line 32
    const-string/jumbo v1, "socket open failed for "

    .line 33
    .line 34
    .line 35
    const-string v2, "Pageboost"

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 42
    .line 43
    return-void
.end method

.method public final writeDaemon(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->openSocket()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    sget-boolean p1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "Error writing to socket "

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "Pageboost"

    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_1
    sget-boolean p1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 50
    .line 51
    const-string p1, "Error closing socket "

    .line 52
    .line 53
    invoke-static {p1, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 58
    .line 59
    :cond_1
    return-void
.end method
