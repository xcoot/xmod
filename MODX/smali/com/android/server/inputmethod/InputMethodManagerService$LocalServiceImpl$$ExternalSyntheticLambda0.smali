.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    .line 6
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    .line 3
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    check-cast p1, Lcom/android/server/inputmethod/ClientState;

    .line 7
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 25
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 30
    :cond_0
    return-void
.end method
