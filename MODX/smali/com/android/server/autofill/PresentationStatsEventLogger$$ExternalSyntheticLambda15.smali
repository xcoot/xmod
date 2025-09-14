.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public final synthetic f$1:Lcom/android/server/autofill/ViewState;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/ViewState;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;->f$1:Lcom/android/server/autofill/ViewState;

    .line 8
    iput p3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;->f$1:Lcom/android/server/autofill/ViewState;

    .line 5
    iget p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;->f$2:I

    .line 7
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-wide v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 18
    sub-long/2addr v2, v4

    .line 19
    long-to-int v0, v2

    .line 20
    if-eqz v1, :cond_4

    .line 22
    iget-object v2, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 24
    if-eqz v2, :cond_4

    .line 26
    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->getViewId()I

    .line 29
    move-result v2

    .line 30
    iget v3, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 32
    if-eq v2, v3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v1, v1, Lcom/android/server/autofill/ViewState;->mState:I

    .line 37
    and-int/lit8 v1, v1, 0x4

    .line 39
    if-eqz v1, :cond_1

    .line 41
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 46
    const/4 v2, -0x1

    .line 47
    if-ne v1, v2, :cond_2

    .line 49
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 51
    :cond_2
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 53
    iget p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 55
    if-ne p0, v2, :cond_3

    .line 57
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 59
    :cond_3
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "Bad view state for: "

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget p1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 71
    const-string v0, "PresentationStatsEventLogger"

    .line 73
    invoke-static {p0, p1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 76
    :goto_1
    return-void
.end method
