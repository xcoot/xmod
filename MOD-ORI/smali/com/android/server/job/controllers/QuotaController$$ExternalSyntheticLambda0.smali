.class public final synthetic Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v0, "TopAppTimer{"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "} "

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p1, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-lez v1, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, v2

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const-string/jumbo v0, "started at "

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 60
    .line 61
    .line 62
    const-string v0, " ("

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    iget-wide v3, p1, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 77
    .line 78
    sub-long/2addr v0, v3

    .line 79
    invoke-virtual {p0, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo v0, "ms ago)"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const-string v0, "NOT active"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object v0, p1, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-ge v2, v0, :cond_2

    .line 107
    .line 108
    iget-object v0, p1, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    throw p0

    .line 133
    :pswitch_0
    check-cast p0, Lcom/android/server/job/controllers/QuotaController;

    .line 134
    .line 135
    check-cast p1, Ljava/util/List;

    .line 136
    .line 137
    if-eqz p1, :cond_3

    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 140
    .line 141
    invoke-interface {p1, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    :goto_3
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
