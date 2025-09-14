.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Landroid/view/inputmethod/ImeTracker$Token;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/ResultReceiver;

.field public final synthetic f$7:I

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$3:Landroid/view/inputmethod/ImeTracker$Token;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$4:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$6:Landroid/os/ResultReceiver;

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$7:I

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$8:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$2:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$3:Landroid/view/inputmethod/ImeTracker$Token;

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$4:I

    .line 10
    .line 11
    iget v6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$5:I

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$6:Landroid/os/ResultReceiver;

    .line 14
    .line 15
    iget v8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$7:I

    .line 16
    .line 17
    iget-boolean v9, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;->f$8:Z

    .line 18
    .line 19
    iget-object p0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
