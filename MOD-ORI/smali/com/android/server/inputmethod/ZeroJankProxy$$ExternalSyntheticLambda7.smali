.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 4
    .line 5
    iget-object p0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
