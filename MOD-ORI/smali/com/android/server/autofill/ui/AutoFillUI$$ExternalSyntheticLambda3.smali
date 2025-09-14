.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/PendingUi;

.field public final synthetic f$2:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/autofill/ui/PendingUi;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/autofill/ui/PendingUi;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;->f$3:Z

    .line 8
    .line 9
    invoke-virtual {v0, v2, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
