.class public final Lcom/android/server/dreams/DreamManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityInterceptorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x2

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p1, p3, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x5

    .line 11
    if-eq p1, p3, :cond_1

    .line 12
    .line 13
    const/4 p3, 0x4

    .line 14
    if-ne p1, p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move p1, v0

    .line 20
    :goto_1
    iget-object p3, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 21
    .line 22
    iget-object p3, p3, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p3

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    iget-boolean v2, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    move v0, v1

    .line 45
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo p3, "stopping dream due to activity start: "

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide p2

    .line 69
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 70
    .line 71
    invoke-virtual {v0, p2, p3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void

    .line 78
    :goto_3
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public final onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
