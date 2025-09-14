.class public final Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 3
    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    if-gtz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 17
    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 19
    const v1, 0x1040209

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 29
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    const-string/jumbo v2, "count"

    .line 39
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 44
    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 50
    const v2, 0x104020a

    .line 53
    invoke-static {v0, v1, v2}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 59
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
