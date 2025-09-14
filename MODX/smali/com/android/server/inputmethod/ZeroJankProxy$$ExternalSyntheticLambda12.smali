.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$2:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;->f$2:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 10
    iput p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 3
    iget-object v1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 5
    iget-object v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;->f$2:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 7
    iget p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;->f$3:I

    .line 9
    iget-object v0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 11
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 13
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 16
    return-void
.end method
