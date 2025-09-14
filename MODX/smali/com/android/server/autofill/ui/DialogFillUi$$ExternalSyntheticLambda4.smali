.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 6
    iput p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 3
    iget p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;->f$1:I

    .line 5
    iget-boolean v1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    if-gtz p1, :cond_3

    .line 13
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 15
    if-eqz p0, :cond_2

    .line 17
    iget-object p0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 19
    if-nez p0, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    move-result v1

    .line 26
    :goto_0
    const-string p0, "No dataset matches filter with "

    .line 28
    const-string p1, " chars"

    .line 30
    const-string v2, "DialogFillUi"

    .line 32
    invoke-static {v1, p0, p1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_2
    iget-object p0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onCanceled()V

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-object p1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 43
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    .line 46
    move-result v2

    .line 47
    iget v3, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    .line 49
    if-le v2, v3, :cond_4

    .line 51
    iget-object v1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 57
    iget-object v1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 68
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    .line 71
    move-result p1

    .line 72
    if-eq p1, p0, :cond_5

    .line 74
    iget-object p0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 76
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 79
    :cond_5
    :goto_2
    return-void
.end method
