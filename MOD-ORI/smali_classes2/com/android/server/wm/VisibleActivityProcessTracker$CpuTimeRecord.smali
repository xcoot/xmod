.class public final Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCpuTime:J

.field public mHasStartCpuTime:Z

.field public final mProc:Lcom/android/server/wm/WindowProcessController;

.field public mShouldGetCpuTime:Z

.field public final synthetic this$0:Lcom/android/server/wm/VisibleActivityProcessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/VisibleActivityProcessTracker;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->this$0:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mHasStartCpuTime:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mHasStartCpuTime:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 22
    .line 23
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mCpuTime:J

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 41
    .line 42
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iget-wide v2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mCpuTime:J

    .line 51
    .line 52
    sub-long/2addr v0, v2

    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    cmp-long v2, v0, v2

    .line 56
    .line 57
    if-lez v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->this$0:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/wm/VisibleActivityProcessTracker;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    .line 69
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 72
    .line 73
    invoke-virtual {v2, v3, p0, v0, v1}, Landroid/app/ActivityManagerInternal;->updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method
