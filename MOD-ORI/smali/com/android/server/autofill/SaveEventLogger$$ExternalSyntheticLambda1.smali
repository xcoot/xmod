.class public final synthetic Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;
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
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    iput p1, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;->f$0:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_2
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_3
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mRequestId:I

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_4
    int-to-long v0, p0

    .line 26
    iput-wide v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_5
    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
