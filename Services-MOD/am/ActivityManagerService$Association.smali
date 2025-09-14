.class public final Lcom/android/server/am/ActivityManagerService$Association;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCount:I

.field public mLastState:I

.field public mLastStateUptime:J

.field public mNesting:I

.field public final mSourceProcess:Ljava/lang/String;

.field public final mSourceUid:I

.field public mStartTime:J

.field public final mStateTimes:[J

.field public final mTargetComponent:Landroid/content/ComponentName;

.field public final mTargetProcess:Ljava/lang/String;

.field public final mTargetUid:I

.field public mTime:J


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x15

    .line 6
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$Association;->mLastState:I

    .line 8
    new-array v0, v0, [J

    .line 10
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Association;->mStateTimes:[J

    .line 12
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceUid:I

    .line 14
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceProcess:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetUid:I

    .line 18
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetComponent:Landroid/content/ComponentName;

    .line 20
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetProcess:Ljava/lang/String;

    .line 22
    return-void
.end method
