.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 8
    iput p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$3:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    .line 14
    iput p6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$5:I

    .line 16
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 3
    iget-object v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 5
    iget v3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$2:I

    .line 7
    iget-object v4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$3:Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    .line 11
    iget v6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;->f$5:I

    .line 13
    iget-object p0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 15
    move-object v1, p0

    .line 16
    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
