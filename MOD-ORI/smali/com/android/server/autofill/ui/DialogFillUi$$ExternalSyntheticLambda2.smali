.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 6
    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p2

    .line 26
    :try_start_0
    iget-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    iget-object p3, p3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 31
    .line 32
    new-instance p4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 p5, 0x5

    .line 35
    invoke-direct {p4, p5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 43
    .line 44
    iget-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 45
    .line 46
    invoke-virtual {p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 50
    .line 51
    iget-object p2, p2, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 66
    .line 67
    iget-object p3, p3, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/4 p4, 0x3

    .line 76
    check-cast p3, Lcom/android/server/autofill/Session;

    .line 77
    .line 78
    invoke-virtual {p3, p0, p2, p1, p4}, Lcom/android/server/autofill/Session;->fill(IILandroid/service/autofill/Dataset;I)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p0
.end method
