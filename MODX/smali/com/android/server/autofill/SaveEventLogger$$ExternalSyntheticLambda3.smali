.class public final synthetic Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;->f$0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 1

    .line 2
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iget-boolean p0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;->f$0:Z

    .line 5
    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    .line 12
    return-void

    .line 13
    :pswitch_0
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    .line 15
    return-void

    .line 16
    :pswitch_1
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    .line 18
    return-void

    .line 19
    :pswitch_2
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    .line 21
    return-void

    .line 22
    :pswitch_3
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    .line 24
    return-void

    .line 25
    :pswitch_4
    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
