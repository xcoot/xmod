.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 5
    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 8
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 10
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 12
    if-ne v1, p0, :cond_0

    .line 14
    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 17
    const/4 p0, 0x0

    .line 18
    iput-object p0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 23
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, p0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 32
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 37
    return-void

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 40
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 42
    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 45
    return-void

    .line 46
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 48
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 50
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 52
    if-eq v1, p0, :cond_4

    .line 54
    if-eqz v1, :cond_3

    .line 56
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 58
    if-nez v1, :cond_1

    .line 60
    const/4 v1, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, v1, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 64
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 67
    move-result v1

    .line 68
    :goto_0
    if-eqz v1, :cond_2

    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, p0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 80
    :cond_3
    :goto_1
    iput-object p0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 82
    :cond_4
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
