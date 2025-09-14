.class public final Lcom/android/server/powerstats/TimerTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const-class p2, Landroid/app/AlarmManager;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/app/AlarmManager;

    .line 17
    .line 18
    new-instance p1, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    const-string v2, "PowerStatsLowFreqLog"

    .line 22
    .line 23
    const-wide/32 v3, 0x36ee80

    .line 24
    .line 25
    .line 26
    move-object v0, p1

    .line 27
    move-object v1, p0

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;-><init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;

    .line 32
    .line 33
    const/4 v11, 0x2

    .line 34
    const-string v8, "PowerStatsHighFreqLog"

    .line 35
    .line 36
    const-wide/32 v9, 0x1d4c0

    .line 37
    .line 38
    .line 39
    move-object v6, p2

    .line 40
    move-object v7, p0

    .line 41
    invoke-direct/range {v6 .. v11}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;-><init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
