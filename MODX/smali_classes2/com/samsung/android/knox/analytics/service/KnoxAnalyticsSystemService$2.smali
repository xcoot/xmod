.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkVersioningBlobWhenBootCompleted(): run"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 9
    .line 10
    iget v1, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    .line 11
    .line 12
    const/16 v2, 0x3e8

    .line 13
    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    .line 22
    .line 23
    const-wide/32 v2, 0xea60

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "checkVersioningBlobWhenBootCompleted(): after wait"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :catch_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "checkVersioningBlobWhenBootCompleted(): Interrupted exception"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "checkVersioningBlobWhenBootCompleted(): after while"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsVersionCollector;->checkVersioningBlob(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->callNotifyVersioningCompleted(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 73
    .line 74
    if-eqz p0, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->notifyVersioningCompleted()V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method
