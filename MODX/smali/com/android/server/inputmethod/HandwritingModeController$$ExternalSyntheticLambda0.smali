.class public final synthetic Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/HandwritingModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/HandwritingModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "HandwritingModeController"

    .line 8
    const-string v1, "Stylus handwriting delegation idle timed-out."

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 16
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    new-instance v1, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 28
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 38
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    .line 43
    move-result p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 47
    :cond_0
    return-void
.end method
