.class public final synthetic Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;

.field public final synthetic f$1:Landroid/service/autofill/SaveInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 5
    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/SaveInfo;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 8
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/SaveInfo;

    .line 10
    iget-object p1, p1, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 12
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 22
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/SaveInfo;

    .line 24
    iget-object p1, p1, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 26
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
