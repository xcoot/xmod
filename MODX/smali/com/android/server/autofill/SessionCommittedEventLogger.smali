.class public final Lcom/android/server/autofill/SessionCommittedEventLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    .line 6
    new-instance p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    .line 17
    iput v1, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    .line 19
    const-wide/16 v2, 0x0

    .line 21
    iput-wide v2, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    .line 23
    iput v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    .line 25
    iput v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    .line 27
    iput-boolean v1, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    .line 29
    iput v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    .line 31
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 37
    return-void
.end method
