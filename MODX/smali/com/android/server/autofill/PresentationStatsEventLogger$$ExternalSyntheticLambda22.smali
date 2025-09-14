.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 5
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-boolean v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    .line 20
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 22
    :cond_0
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 24
    if-nez v0, :cond_1

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v0

    .line 30
    iget-wide v2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 32
    sub-long/2addr v0, v2

    .line 33
    long-to-int v0, v0

    .line 34
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 36
    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 38
    const/16 v2, 0x9

    .line 40
    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 43
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 46
    :cond_1
    iget p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 48
    add-int/lit8 p0, p0, 0x1

    .line 50
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 52
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    move-result-wide v0

    .line 60
    iget-wide v2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 62
    sub-long/2addr v0, v2

    .line 63
    long-to-int p0, v0

    .line 64
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
