.class public final Lcom/android/server/alarm/AlarmManagerService$2;
.super Landroid/app/IAlarmListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 5
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$2;Landroid/app/IAlarmCompleteListener;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 15
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 20
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v1

    .line 29
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    .line 31
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 34
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method
