.class public final Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPriorityDumper:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

.field public final synthetic this$0:Lcom/android/server/cpu/CpuMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/cpu/CpuMonitorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;-><init>(Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->mPriorityDumper:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->mPriorityDumper:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
