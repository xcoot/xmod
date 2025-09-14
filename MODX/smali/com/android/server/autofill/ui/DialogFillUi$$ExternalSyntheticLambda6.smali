.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;

.field public final synthetic f$1:Landroid/service/autofill/FillResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 5
    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$1:Landroid/service/autofill/FillResponse;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 8
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$1:Landroid/service/autofill/FillResponse;

    .line 10
    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 18
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$1:Landroid/service/autofill/FillResponse;

    .line 20
    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
