.class public final Lcom/android/server/am/InstrumentationReporter$MyThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/InstrumentationReporter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 2
    .line 3
    const-string p1, "InstrumentationReporter"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    .line 4
    .line 5
    :cond_0
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 12
    .line 13
    iget-object v4, v3, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    iput-object v5, v3, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    move v1, v0

    .line 29
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v1, v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/am/InstrumentationReporter$Report;

    .line 40
    .line 41
    :try_start_1
    iget v3, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    iget-object v3, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 46
    .line 47
    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    .line 48
    .line 49
    iget v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    .line 50
    .line 51
    iget-object v7, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-interface {v3, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 58
    .line 59
    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    .line 60
    .line 61
    iget v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    .line 62
    .line 63
    iget-object v7, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-interface {v3, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_0
    const-string v3, "ActivityManager"

    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v6, "Failure reporting to instrumentation watcher: comp="

    .line 74
    .line 75
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v6, " results="

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_4

    .line 105
    :cond_3
    :goto_3
    if-nez v1, :cond_4

    .line 106
    .line 107
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    .line 110
    .line 111
    const-wide/16 v3, 0x2710

    .line 112
    .line 113
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    :catch_1
    :try_start_3
    monitor-exit v2

    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 120
    .line 121
    iput-object v5, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Lcom/android/server/am/InstrumentationReporter$MyThread;

    .line 122
    .line 123
    monitor-exit v2

    .line 124
    return-void

    .line 125
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    throw p0
.end method
