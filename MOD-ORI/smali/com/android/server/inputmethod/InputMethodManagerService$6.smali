.class public final Lcom/android/server/inputmethod/InputMethodManagerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic val$isImeTraceEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$6;->val$isImeTraceEnabled:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/inputmethod/ClientState;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$6;->val$isImeTraceEnabled:Z

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
