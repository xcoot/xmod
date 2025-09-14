.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;
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
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

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
    const-string v1, "logActivationEventAfterStart(): run"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mSystemServiceRunningLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mSystemServiceRunningLock:Ljava/lang/Object;

    .line 20
    .line 21
    const-wide/32 v2, 0xea60

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "logActivationEventAfterStart(): after wait"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 39
    :catch_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "logActivationEventAfterStart(): Interrupted exception"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "logActivationEventAfterStart(): after while"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationUpdateEvent(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
