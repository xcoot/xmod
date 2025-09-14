.class public final Lcom/android/server/utils/AlarmQueue$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/AlarmQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AlarmQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-class v1, Landroid/app/AlarmManager;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Landroid/app/AlarmManager;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    const-wide/16 v1, 0x7530

    .line 28
    .line 29
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v8, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    .line 39
    .line 40
    iget-wide v3, v8, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 41
    .line 42
    const-wide/16 v5, -0x1

    .line 43
    .line 44
    cmp-long p0, v3, v5

    .line 45
    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-wide v5, v8, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 53
    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-boolean p0, v8, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    iget-object v5, v8, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v7, v8, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    move-object v6, v8

    .line 65
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-wide/16 v9, 0x2

    .line 70
    .line 71
    div-long/2addr v5, v9

    .line 72
    iget-object v7, v8, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v9, v8, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    const/4 v2, 0x3

    .line 77
    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p0
.end method
