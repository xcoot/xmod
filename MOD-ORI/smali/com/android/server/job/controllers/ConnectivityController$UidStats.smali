.class public final Lcom/android/server/job/controllers/ConnectivityController$UidStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public baseBias:I

.field public earliestEJEnqueueTime:J

.field public earliestEnqueueTime:J

.field public earliestUIJEnqueueTime:J

.field public lastUpdatedElapsed:J

.field public numEJs:I

.field public numReadyWithConnectivity:I

.field public numRegular:I

.field public numRequestedNetworkAvailable:I

.field public numUIJs:I

.field public final runningJobs:Landroid/util/ArraySet;

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 12
    .line 13
    return-void
.end method
