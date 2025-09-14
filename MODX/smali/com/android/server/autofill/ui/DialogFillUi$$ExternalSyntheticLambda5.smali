.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 8
    if-eqz p2, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 12
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 18
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 20
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :pswitch_0
    if-eqz p2, :cond_1

    .line 34
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 36
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 42
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 44
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    :goto_1
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :pswitch_1
    if-eqz p2, :cond_2

    .line 58
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 60
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 63
    move-result-object p1

    .line 64
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 66
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 68
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    :goto_2
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
