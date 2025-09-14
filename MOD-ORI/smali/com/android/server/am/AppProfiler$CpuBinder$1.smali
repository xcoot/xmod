.class public final Lcom/android/server/am/AppProfiler$CpuBinder$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/AppProfiler$CpuBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler$CpuBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    .line 4
    .line 5
    iget-object p3, p3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string/jumbo v0, "cpuinfo"

    .line 10
    .line 11
    .line 12
    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p3, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 20
    .line 21
    iget-object p3, p3, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    .line 22
    .line 23
    iget-object p3, p3, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 24
    .line 25
    monitor-enter p3

    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProto(Ljava/io/FileDescriptor;)V

    .line 35
    .line 36
    .line 37
    monitor-exit p3

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    monitor-exit p3

    .line 72
    return-void

    .line 73
    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method
