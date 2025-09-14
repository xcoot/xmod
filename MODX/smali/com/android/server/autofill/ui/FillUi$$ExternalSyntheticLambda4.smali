.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/FillUi;

    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/FillUi;

    .line 3
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 5
    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .line 15
    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    .line 17
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 19
    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 21
    const/4 p3, 0x4

    .line 22
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 25
    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 27
    iget-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 29
    const/4 p4, 0x1

    .line 30
    invoke-virtual {p2, p3, p4}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 33
    iget-object p3, p2, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 35
    if-eqz p3, :cond_0

    .line 37
    iget-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Ljava/lang/Object;

    .line 39
    check-cast p3, Landroid/service/autofill/FillResponse;

    .line 41
    invoke-virtual {p3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 44
    move-result-object p3

    .line 45
    invoke-interface {p3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 48
    move-result p3

    .line 49
    iget-object p2, p2, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 51
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Ljava/lang/Object;

    .line 53
    check-cast p0, Landroid/service/autofill/FillResponse;

    .line 55
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 58
    move-result p0

    .line 59
    check-cast p2, Lcom/android/server/autofill/Session;

    .line 61
    invoke-virtual {p2, p0, p3, p1, p4}, Lcom/android/server/autofill/Session;->fill(IILandroid/service/autofill/Dataset;I)V

    .line 64
    :cond_0
    return-void
.end method
