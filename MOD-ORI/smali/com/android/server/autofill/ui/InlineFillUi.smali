.class public final Lcom/android/server/autofill/ui/InlineFillUi;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAutofillId:Landroid/view/autofill/AutofillId;

.field public final mDatasets:Ljava/util/ArrayList;

.field public mFilterMatchingDisabled:Z

.field public mFilterText:Ljava/lang/String;

.field public final mInlineSuggestions:Ljava/util/ArrayList;

.field public final mMaxInputLengthForAutofill:I


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 31
    iput v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    .line 32
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    .line 3
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 4
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 8
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;I)V
    .locals 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    .line 13
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 18
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/view/inputmethod/InlineSuggestion;I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 23
    iput v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    .line 24
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    return-void
.end method


# virtual methods
.method public final copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 25
    .line 26
    invoke-direct {v2, v3, v0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p2, v2}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    return-object p2
.end method
