.class public final Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;->this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;->this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/cpu/CpuMonitorService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    sget-boolean p3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 8
    .line 9
    const-string p3, "CpuMonitorService"

    .line 10
    .line 11
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$mdoDump(Lcom/android/server/cpu/CpuMonitorService;Landroid/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    throw p0

    .line 44
    :cond_1
    :goto_1
    return-void
.end method
