.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
