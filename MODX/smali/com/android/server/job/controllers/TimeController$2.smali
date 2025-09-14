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

    .line 3
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/TimeController$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "JobScheduler.Time"

    .line 12
    const-string v1, "Delay-expired alarm fired"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 19
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Lcom/android/server/job/controllers/TimeController;->mLastFiredDelayExpiredElapsedMillis:J

    .line 30
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 35
    return-void

    .line 36
    :pswitch_0
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const-string v0, "JobScheduler.Time"

    .line 42
    const-string v1, "Deadline-expired alarm fired"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 49
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
