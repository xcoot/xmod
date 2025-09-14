.class final Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public context:Lcom/android/server/job/JobServiceContext;

.field public newJob:Lcom/android/server/job/controllers/JobStatus;

.field public newWorkType:I

.field public preemptReason:Ljava/lang/String;

.field public preemptReasonCode:I

.field public preferredUid:I

.field public shouldStopJobReason:Ljava/lang/String;

.field public timeUntilStoppableMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 10
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 12
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 4
    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    .line 7
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    .line 16
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 20
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 22
    return-void
.end method
