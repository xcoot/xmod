.class public final synthetic Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 3
    const-string v0, "SuplInitHandler"

    .line 5
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 14
    move-result-wide v2

    .line 15
    long-to-int v2, v2

    .line 16
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 19
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 21
    if-eqz v2, :cond_2

    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    .line 26
    const/16 v4, 0x1c6b

    .line 28
    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 v4, 0x1

    .line 32
    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    .line 34
    const/16 v4, 0x5dc

    .line 36
    new-array v5, v4, [B

    .line 38
    new-instance v6, Ljava/net/DatagramPacket;

    .line 40
    invoke-direct {v6, v5, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 43
    const v4, 0xea60

    .line 46
    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 49
    invoke-virtual {v3, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 52
    const-string/jumbo v4, "received data through 7275 UDP port"

    .line 55
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    .line 61
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-gtz v4, :cond_0

    .line 64
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 69
    goto :goto_5

    .line 70
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 72
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_1

    .line 81
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanSoftbank()Z

    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_1

    .line 87
    const-string/jumbo v4, "udp e-ni for KDI on All Japan market"

    .line 90
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v4, "KDI"

    .line 95
    iput-object v4, v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 100
    move-result-object v4

    .line 101
    iput-object v4, v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 103
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 105
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    .line 108
    move-result-object v5

    .line 109
    invoke-static {v5}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->convertHashMapToStringBuilder(Ljava/util/HashMap;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 120
    goto :goto_2

    .line 121
    :catchall_0
    move-exception v4

    .line 122
    goto :goto_3

    .line 123
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 126
    move-result-object v4

    .line 127
    new-instance v5, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;

    .line 129
    const/4 v7, 0x2

    .line 130
    invoke-direct {v5, p0, v6, v7}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/lang/Object;I)V

    .line 133
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    goto :goto_1

    .line 139
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    goto :goto_4

    .line 143
    :catchall_1
    move-exception v3

    .line 144
    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 147
    :goto_4
    throw v4
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 148
    :goto_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    .line 153
    goto/16 :goto_0

    .line 155
    :catch_1
    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    .line 157
    goto/16 :goto_0

    .line 159
    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 162
    return-void
.end method
