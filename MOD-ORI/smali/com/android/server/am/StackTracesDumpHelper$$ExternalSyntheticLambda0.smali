.class public final synthetic Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/ProcessCpuTracker;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;

.field public final synthetic f$2:Lcom/android/internal/os/anr/AnrLatencyTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/ProcessCpuTracker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->processCpuTrackerMethodsCalled()V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    const-wide/16 v3, 0xc8

    .line 23
    .line 24
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    .line 26
    .line 27
    :catch_0
    monitor-enter v0

    .line 28
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x2

    .line 43
    if-ge v5, v6, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 50
    .line 51
    invoke-virtual {v1, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-ltz v6, :cond_1

    .line 56
    .line 57
    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    const-string v6, "ActivityManager"

    .line 70
    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v8, "Skipping next CPU consuming process, not a java proc: "

    .line 77
    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 82
    .line 83
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    if-eqz p0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->processCpuTrackerMethodsReturned()V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-object v2

    .line 103
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    throw p0

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    throw p0
.end method
