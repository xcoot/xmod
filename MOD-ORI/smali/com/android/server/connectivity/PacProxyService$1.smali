.class public final Lcom/android/server/connectivity/PacProxyService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const-string v0, "Failed to load PAC file: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 6
    .line 7
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/16 v2, -0xbb

    .line 17
    .line 18
    invoke-static {v2}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :try_start_0
    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_4

    .line 32
    :catch_0
    move-exception v1

    .line 33
    :try_start_1
    const-string v3, "PacProxyService"

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    const/4 v1, 0x1

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v2

    .line 62
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 73
    .line 74
    iget-object v4, v3, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    .line 75
    .line 76
    const-string v5, "PacProxyService"

    .line 77
    .line 78
    if-nez v4, :cond_1

    .line 79
    .line 80
    const-string/jumbo v0, "setCurrentProxyScript: no proxy service"

    .line 81
    .line 82
    .line 83
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :try_start_3
    invoke-interface {v4, v0}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, v3, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    :try_start_4
    const-string v3, "Unable to set PAC file"

    .line 95
    .line 96
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 104
    .line 105
    iput-boolean v1, v0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 116
    .line 117
    const/4 v0, 0x4

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    throw p0

    .line 124
    :cond_3
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 125
    .line 126
    iget v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 127
    .line 128
    add-int/2addr v0, v1

    .line 129
    const/4 v1, 0x3

    .line 130
    if-le v0, v1, :cond_4

    .line 131
    .line 132
    move v0, v1

    .line 133
    :cond_4
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    .line 136
    .line 137
    .line 138
    :goto_3
    return-void

    .line 139
    :goto_4
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 140
    .line 141
    .line 142
    throw p0
.end method
