.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 6
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 5
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 7
    iget-object p1, p1, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 9
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 11
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    move-result p0

    .line 19
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p1, v0, p0}, Lcom/android/server/autofill/Session;->onShown(II)V

    .line 25
    return-void
.end method
