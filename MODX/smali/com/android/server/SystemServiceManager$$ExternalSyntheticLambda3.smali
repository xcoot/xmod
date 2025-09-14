.class public final synthetic Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServiceManager;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$2:Lcom/android/server/SystemService;

.field public final synthetic f$3:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SystemServiceManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 8
    iput-object p3, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/SystemService;

    .line 10
    iput-object p4, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/SystemService$TargetUser;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SystemServiceManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 5
    iget-object v2, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/SystemService;

    .line 7
    iget-object p0, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/SystemService$TargetUser;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string/jumbo v0, "onStartUser-"

    .line 15
    new-instance v3, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 17
    invoke-direct {v3, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 31
    move-result v4

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v6, "ssm.onStartUser-"

    .line 37
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v6, "_"

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v3, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 58
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    move-result-wide v5

    .line 62
    invoke-virtual {v2, p0}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    move-result-wide v7

    .line 69
    sub-long/2addr v7, v5

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    const/4 v4, 0x0

    .line 83
    invoke-static {v7, v8, v2, v0, v4}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_1
    const-string v2, "Start"

    .line 95
    invoke-static {v2, p0, v1, v0}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :goto_1
    return-void

    .line 100
    :goto_2
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 103
    throw p0
.end method
