.class public final synthetic Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServiceManager;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$2:Lcom/android/server/SystemService$TargetUser;

.field public final synthetic f$3:Lcom/android/server/SystemService$UserCompletedEventType;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/android/server/SystemService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/SystemServiceManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 8
    iput-object p3, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/SystemService$TargetUser;

    .line 10
    iput-object p4, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/SystemService$UserCompletedEventType;

    .line 12
    iput-object p5, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/SystemService;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/SystemServiceManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 5
    iget-object v2, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/SystemService$TargetUser;

    .line 7
    iget-object v3, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/SystemService$UserCompletedEventType;

    .line 9
    iget-object v4, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 11
    iget-object p0, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/SystemService;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo v0, "onCompletedEventUser-"

    .line 19
    new-instance v5, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 21
    invoke-direct {v5, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 24
    invoke-virtual {v2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 27
    move-result v1

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v7, "ssm.onCompletedEventUser-"

    .line 33
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v7, "_"

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    move-result-wide v6

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemService;->onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 70
    move-result-wide v8

    .line 71
    sub-long/2addr v8, v6

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-static {v8, v9, p0, v0, v1}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    :try_start_1
    const-string v0, "CompletedEvent"

    .line 97
    invoke-static {v0, v2, v4, p0}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 100
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_0
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 104
    throw p0
.end method
