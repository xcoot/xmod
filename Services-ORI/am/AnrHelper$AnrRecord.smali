.class public final Lcom/android/server/am/AnrHelper$AnrRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAboveSystem:Z

.field public final mActivityShortComponentName:Ljava/lang/String;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public final mFirstPidFilePromise:Ljava/util/concurrent/Future;

.field public final mIsContinuousAnr:Z

.field public final mParentProcess:Lcom/android/server/wm/WindowProcessController;

.field public final mParentShortComponentName:Ljava/lang/String;

.field public final mPid:I

.field public final mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

.field public final mTimestamp:J

.field public final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->this$0:Lcom/android/server/am/AnrHelper;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 13
    .line 14
    iget p1, p2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p8, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    .line 27
    .line 28
    iput-boolean p7, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    .line 29
    .line 30
    iput-boolean p9, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mIsContinuousAnr:Z

    .line 31
    .line 32
    iput-object p10, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mFirstPidFilePromise:Ljava/util/concurrent/Future;

    .line 33
    .line 34
    return-void
.end method
