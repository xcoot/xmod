.class public final Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public final mAllItems:Ljava/util/List;

.field public final mFilteredItems:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V

    .line 6
    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .line 11
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .line 11
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 13
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ItemsAdapter: [all="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", filtered="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, "]"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
