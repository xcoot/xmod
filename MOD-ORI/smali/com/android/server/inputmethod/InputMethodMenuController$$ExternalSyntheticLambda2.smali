.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final synthetic f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    if-le v2, p2, :cond_4

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-gt v3, p2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    aget-object v1, v1, p2

    .line 27
    .line 28
    aget v2, v2, p2

    .line 29
    .line 30
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 33
    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    if-ltz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-lt v2, p0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 49
    :cond_2
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    :goto_1
    monitor-exit v0

    .line 65
    :goto_2
    return-void

    .line 66
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method
