.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Landroid/view/inputmethod/ImeTracker$Token;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/ResultReceiver;

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    .line 10
    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$3:Landroid/view/inputmethod/ImeTracker$Token;

    .line 12
    iput p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$4:I

    .line 14
    iput-object p6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$5:Landroid/os/ResultReceiver;

    .line 16
    iput p7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$6:I

    .line 18
    iput-boolean p8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$7:Z

    .line 20
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 3
    iget-object v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 5
    iget-object v3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    .line 7
    iget-object v4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$3:Landroid/view/inputmethod/ImeTracker$Token;

    .line 9
    iget v5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$4:I

    .line 11
    iget-object v9, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$5:Landroid/os/ResultReceiver;

    .line 13
    iget v7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$6:I

    .line 15
    iget-boolean v8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$7:Z

    .line 17
    iget-object p0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 19
    move-object v1, p0

    .line 20
    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 22
    move-object v6, v9

    .line 23
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 29
    invoke-virtual {v0, v9}, Lcom/android/server/inputmethod/ZeroJankProxy;->sendResultReceiverFailure(Landroid/os/ResultReceiver;)V

    .line 32
    :cond_0
    return-void
.end method
