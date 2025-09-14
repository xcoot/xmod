.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 2
    .line 3
    const-string/jumbo v0, "scheduled refresh"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
