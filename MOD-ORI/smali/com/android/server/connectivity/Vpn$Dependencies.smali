.class public Lcom/android/server/connectivity/Vpn$Dependencies;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


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

.method public static resolve(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10

    .line 1
    const-string v0, "Vpn"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    new-instance v8, Landroid/os/CancellationSignal;

    .line 9
    .line 10
    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v9, Ljava/util/concurrent/CompletableFuture;

    .line 18
    .line 19
    invoke-direct {v9}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v7, Lcom/android/server/connectivity/Vpn$Dependencies$1;

    .line 23
    .line 24
    invoke-direct {v7, v9, p0}, Lcom/android/server/connectivity/Vpn$Dependencies$1;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/android/server/connectivity/Vpn$Dependencies$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    move-object v3, p0

    .line 35
    move-object v6, v8

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .line 45
    return-object v1

    .line 46
    :catch_1
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :catch_2
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :goto_0
    const-string v1, "Legacy VPN was interrupted while resolving the endpoint"

    .line 51
    .line 52
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "Cannot resolve VPN endpoint : "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p0, "."

    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method public static sendArgumentsToDaemon(Landroid/net/LocalSocket;[Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V
    .locals 6

    .line 1
    iget-object p2, p2, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 4
    .line 5
    new-instance v0, Landroid/net/LocalSocketAddress;

    .line 6
    .line 7
    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 8
    .line 9
    const-string/jumbo v2, "charon"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x1f4

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    array-length v0, p1

    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    :goto_1
    if-ge v2, v0, :cond_1

    .line 31
    .line 32
    aget-object v3, p1, v2

    .line 33
    .line 34
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    array-length v4, v3

    .line 41
    const v5, 0xffff

    .line 42
    .line 43
    .line 44
    if-ge v4, v5, :cond_0

    .line 45
    .line 46
    array-length v4, v3

    .line 47
    shr-int/lit8 v4, v4, 0x8

    .line 48
    .line 49
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 50
    .line 51
    .line 52
    array-length v4, v3

    .line 53
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p1, "Argument is too large"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_1
    const/16 p1, 0xff

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p2, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_0
.end method

.method public static setBlocking(Ljava/io/FileDescriptor;Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Cannot set tunnel\'s fd as blocking="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method
