.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroid/os/IWakeLockCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIJLandroid/os/IWakeLockCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/Notifier;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput-wide p6, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$5:J

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$6:Landroid/os/IWakeLockCallback;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/Notifier;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object v9, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget v6, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    iget-wide v7, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$5:J

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;->f$6:Landroid/os/IWakeLockCallback;

    .line 14
    .line 15
    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v2, v0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    move-object v5, v9

    .line 36
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(IILjava/lang/String;IJ)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v2, v0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    const/4 v6, 0x0

    .line 46
    move-object v5, v9

    .line 47
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(IILjava/lang/String;IJ)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    invoke-interface {p0, v1}, Landroid/os/IWakeLockCallback;->onStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Wakelock.mCallback ["

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, "] is already dead."

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "PowerManagerNotifier"

    .line 74
    .line 75
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_2
    return-void
.end method
