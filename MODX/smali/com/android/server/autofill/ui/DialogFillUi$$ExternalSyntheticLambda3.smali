.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/autofill/ui/DialogFillUi;

    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 12
    const/4 p1, 0x5

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 16
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 25
    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-direct {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 34
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 37
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 42
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 44
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 46
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 51
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 53
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 55
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->requestFallbackFromFillDialog()V

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0

    .line 62
    :pswitch_0
    move-object v0, p0

    .line 63
    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    .line 65
    const/4 v3, 0x0

    .line 66
    const-wide/16 v4, 0x0

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
