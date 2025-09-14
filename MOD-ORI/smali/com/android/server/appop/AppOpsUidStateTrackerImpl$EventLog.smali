.class public final Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCommitUidStateLog:[[I

.field public mCommitUidStateLogHead:I

.field public mCommitUidStateLogSize:I

.field public final mCommitUidStateLogTimestamps:[J

.field public final mEvalForegroundModeLog:[[I

.field public mEvalForegroundModeLogHead:I

.field public mEvalForegroundModeLogSize:I

.field public final mEvalForegroundModeLogTimestamps:[J

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public final mUpdateUidProcStateLog:[[I

.field public mUpdateUidProcStateLogHead:I

.field public mUpdateUidProcStateLogSize:I

.field public final mUpdateUidProcStateLogTimestamps:[J


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x1

    .line 9
    aput v2, v1, v3

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/16 v4, 0xc8

    .line 13
    .line 14
    aput v4, v1, v2

    .line 15
    .line 16
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [[I

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    .line 25
    .line 26
    new-array v1, v4, [J

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    .line 29
    .line 30
    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    .line 31
    .line 32
    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    .line 33
    .line 34
    new-array v1, v0, [I

    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    aput v6, v1, v3

    .line 38
    .line 39
    aput v4, v1, v2

    .line 40
    .line 41
    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, [[I

    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    .line 48
    .line 49
    new-array v1, v4, [J

    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    .line 52
    .line 53
    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 54
    .line 55
    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    .line 56
    .line 57
    new-array v0, v0, [I

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    aput v1, v0, v3

    .line 61
    .line 62
    aput v4, v0, v2

    .line 63
    .line 64
    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, [[I

    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    .line 71
    .line 72
    new-array v0, v4, [J

    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    .line 75
    .line 76
    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 77
    .line 78
    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    .line 79
    .line 80
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 81
    .line 82
    return-void
.end method
