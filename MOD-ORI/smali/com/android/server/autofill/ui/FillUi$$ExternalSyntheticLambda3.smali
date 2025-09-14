.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;

.field public final synthetic f$1:Landroid/service/autofill/FillResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/FillUi;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$1:Landroid/service/autofill/FillResponse;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/FillUi;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$1:Landroid/service/autofill/FillResponse;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v2, p0, v1}, Lcom/android/server/autofill/Session;->authenticate(ILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
