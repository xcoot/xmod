.class public final Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;


# instance fields
.field public signalStrength:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 6
    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    .line 9
    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 6

    .line 1
    const-string v0, "Signal strength changing from "

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 5
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    .line 11
    move-result v2

    .line 12
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 14
    if-eqz v3, :cond_0

    .line 16
    const-string v3, "JobScheduler.Connectivity"

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, " to "

    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p1

    .line 51
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/telephony/CellSignalStrength;

    .line 63
    const-string v3, "JobScheduler.Connectivity"

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v5, "CSS: "

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    .line 78
    move-result v5

    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v5, " "

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :cond_0
    iget p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    .line 102
    if-ne p1, v2, :cond_1

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 106
    :cond_1
    iput v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    .line 108
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 110
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 112
    const/4 p1, 0x0

    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 123
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method
