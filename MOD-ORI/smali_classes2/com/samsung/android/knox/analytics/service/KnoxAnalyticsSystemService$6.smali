.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$status:Z

.field public final synthetic val$trigger:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->val$trigger:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->val$status:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->val$packageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "logStatusChangedEventAfterStart(): run"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

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
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

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
    const-string v1, "logStatusChangedEventAfterStart(): after wait"

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
    const-string v1, "logStatusChangedEventAfterStart(): Interrupted exception"

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
    const-string v1, "logStatusChangedEventAfterStart(): after while"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 55
    .line 56
    iget v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->val$trigger:I

    .line 57
    .line 58
    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->val$status:Z

    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->val$packageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEvent(IZLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
