.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/SystemServer;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/SystemServer;

    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;->f$1:Z

    .line 5
    .line 6
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "SystemServer"

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "VideoTranscodingService"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    const-string v3, "SemVideoTranscodingService"

    .line 23
    .line 24
    const-class v4, Lcom/samsung/android/media/codec/VideoTranscodingService;

    .line 25
    .line 26
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v3

    .line 31
    const-string v4, "Failed to start VideoTranscodingService "

    .line 32
    .line 33
    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v3, v2, v0}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V

    .line 41
    .line 42
    .line 43
    if-nez p0, :cond_0

    .line 44
    .line 45
    const-string p0, "DsmsService"

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_1
    const-string/jumbo v3, "dsms"

    .line 51
    .line 52
    .line 53
    const-class v4, Lcom/samsung/android/jdsms/DsmsService;

    .line 54
    .line 55
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_1
    move-exception v3

    .line 60
    invoke-static {p0, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 64
    .line 65
    .line 66
    :cond_0
    const-string p0, "Email Keystore Service"

    .line 67
    .line 68
    invoke-virtual {v2, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :try_start_2
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const-string/jumbo p0, "emailksproxy"

    .line 75
    .line 76
    .line 77
    new-instance v3, Lcom/android/server/SystemServer$4;

    .line 78
    .line 79
    invoke-direct {v3, v0}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    const-string v0, "Failure starting Email Keystore Service"

    .line 88
    .line 89
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 93
    .line 94
    .line 95
    const-string p0, "SemSsdidManagerService"

    .line 96
    .line 97
    invoke-virtual {v2, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :try_start_3
    const-string/jumbo p0, "sem_ssdid"

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda11;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catchall_3
    move-exception p0

    .line 113
    const-string v0, "Failure starting SemSsdidManagerService"

    .line 114
    .line 115
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 119
    .line 120
    .line 121
    return-void
.end method
