.class public final synthetic Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;->f$0:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iput-boolean p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iput-boolean p0, p1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
