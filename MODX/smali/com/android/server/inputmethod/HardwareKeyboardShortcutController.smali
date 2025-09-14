.class public final Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSubtypeHandles:Ljava/util/ArrayList;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodMap;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mSubtypeHandles:Ljava/util/ArrayList;

    .line 11
    iput p2, p0, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mUserId:I

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->reset(Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final reset(Lcom/android/server/inputmethod/InputMethodMap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mSubtypeHandles:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSettings;

    .line 8
    iget v1, p0, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mUserId:I

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_4

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 31
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->shouldShowInInputMethodPicker()Z

    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v0, v3, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 49
    iget-object v4, p0, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mSubtypeHandles:Ljava/util/ArrayList;

    .line 51
    invoke-static {v3, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v4

    .line 63
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_3

    .line 69
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 75
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_2

    .line 81
    iget-object v6, p0, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mSubtypeHandles:Ljava/util/ArrayList;

    .line 83
    invoke-static {v3, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    return-void
.end method
