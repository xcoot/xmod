.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/FillUi;

    .line 6
    return-void
.end method


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/FillUi;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 14
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 16
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method
