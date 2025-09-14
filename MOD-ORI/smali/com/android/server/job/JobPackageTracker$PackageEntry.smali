.class public final Lcom/android/server/job/JobPackageTracker$PackageEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public activeCount:I

.field public activeNesting:I

.field public activeStartTime:J

.field public activeTopCount:I

.field public activeTopNesting:I

.field public activeTopStartTime:J

.field public hadActive:Z

.field public hadActiveTop:Z

.field public hadPending:Z

.field public pastActiveTime:J

.field public pastActiveTopTime:J

.field public pastPendingTime:J

.field public pendingCount:I

.field public pendingNesting:I

.field public pendingStartTime:J

.field public final stopReasons:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getActiveTime(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 8
    .line 9
    sub-long/2addr p1, v2

    .line 10
    add-long/2addr v0, p1

    .line 11
    :cond_0
    return-wide v0
.end method

.method public final getPendingTime(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 8
    .line 9
    sub-long/2addr p1, v2

    .line 10
    add-long/2addr v0, p1

    .line 11
    :cond_0
    return-wide v0
.end method
