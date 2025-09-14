.class public final Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mMsgType:I

.field public final mPeriodMs:J

.field public final synthetic this$0:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mPeriodMs:J

    .line 7
    .line 8
    iput p5, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mMsgType:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/powerstats/Flags;->alarmBasedPowerstatsLogging()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mPeriodMs:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mMsgType:I

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
