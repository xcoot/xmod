.class public final Lcom/android/server/job/controllers/TimeController$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/TimeController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/job/controllers/TimeController$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/TimeController$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "JobScheduler.Time"

    .line 11
    .line 12
    const-string v1, "Delay-expired alarm fired"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 18
    .line 19
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Lcom/android/server/job/controllers/TimeController;->mLastFiredDelayExpiredElapsedMillis:J

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v0, "JobScheduler.Time"

    .line 41
    .line 42
    const-string v1, "Deadline-expired alarm fired"

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
