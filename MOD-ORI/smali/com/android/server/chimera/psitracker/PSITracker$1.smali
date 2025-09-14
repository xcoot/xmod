.class public final Lcom/android/server/chimera/psitracker/PSITracker$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/psitracker/PSITracker;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/psitracker/PSITracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 2
    .line 3
    const-string v1, "240 Alarm fired"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/chimera/psitracker/PSITracker;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
