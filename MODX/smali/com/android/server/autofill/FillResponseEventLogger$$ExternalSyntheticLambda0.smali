.class public final synthetic Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;
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
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    check-cast p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    .line 12
    return-void

    .line 13
    :pswitch_0
    iget v0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 18
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_1
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    .line 23
    return-void

    .line 24
    :pswitch_2
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    .line 26
    return-void

    .line 27
    :pswitch_3
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    .line 29
    return-void

    .line 30
    :pswitch_4
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    .line 32
    return-void

    .line 33
    :pswitch_5
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 35
    return-void

    .line 36
    :pswitch_6
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
