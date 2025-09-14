.class public final Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;
.super Landroid/widget/Filter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/List;

    .line 27
    .line 28
    new-instance p1, Landroid/widget/Filter$FilterResults;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 40
    .line 41
    return-object p1
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p2, Ljava/util/List;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 31
    .line 32
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 40
    .line 41
    check-cast p2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eq p1, p2, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 52
    .line 53
    iget-object p2, p1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    iget-object p2, p1, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    new-instance p2, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 70
    .line 71
    invoke-direct {p2, p1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p1, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 75
    .line 76
    :cond_1
    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 77
    .line 78
    iget-object p2, p1, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 79
    .line 80
    iget-object p2, p2, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    iget-object p2, p1, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 86
    .line 87
    iget-object p2, p2, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 88
    .line 89
    const-wide/16 v0, 0x3e8

    .line 90
    .line 91
    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 97
    .line 98
    .line 99
    return-void
.end method
