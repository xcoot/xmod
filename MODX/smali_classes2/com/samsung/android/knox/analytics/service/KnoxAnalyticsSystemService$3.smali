.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

.field public final synthetic val$isForceShutdown:Z

.field public final synthetic val$status:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->val$status:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->val$isForceShutdown:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserManager:Landroid/os/UserManager;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "broadcastAnalyticsStatus(): after wait"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 36
    :catch_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "broadcastAnalyticsStatus(): Interrupted exception"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "broadcastAnalyticsStatus(): after while"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->val$status:Z

    .line 56
    .line 57
    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->val$isForceShutdown:Z

    .line 58
    .line 59
    invoke-static {v0, v1, p0}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastAnalyticsStatus(Landroid/content/Context;ZZ)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
