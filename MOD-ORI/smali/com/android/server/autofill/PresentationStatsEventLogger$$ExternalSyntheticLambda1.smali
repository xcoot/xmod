.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;->f$0:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_0
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :pswitch_1
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_3
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_4
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 43
    .line 44
    const/4 v1, -0x1

    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 48
    .line 49
    :cond_2
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_6
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_7
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_8
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_9
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_a
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_b
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 76
    .line 77
    :cond_3
    return-void

    .line 78
    :pswitch_c
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_d
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_e
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
