.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x9

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    if-nez v0, :cond_2

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 18
    iget-boolean v0, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mSpenLastUsed:Z

    .line 20
    const-string v1, "InputMethodManagerService"

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 29
    move-result v0

    .line 30
    if-ne v0, v2, :cond_1

    .line 32
    const-string p1, "PointerEventListener set true"

    .line 34
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mSpenLastUsed:Z

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 45
    iget-boolean v0, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mSpenLastUsed:Z

    .line 47
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 52
    move-result p1

    .line 53
    if-eq p1, v2, :cond_2

    .line 55
    const-string p1, "PointerEventListener set false"

    .line 57
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 62
    iput-boolean v3, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mSpenLastUsed:Z

    .line 64
    :cond_2
    :goto_0
    return-void
.end method
