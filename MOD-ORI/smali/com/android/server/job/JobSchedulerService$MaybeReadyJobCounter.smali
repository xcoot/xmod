.class public final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBeginTime:J

.field public mDeferedCount:I

.field public mNetworkJobGroupCount:I

.field public mOperationCount:I

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mBeginTime:J

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    .line 14
    .line 15
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    .line 16
    .line 17
    return-void
.end method
