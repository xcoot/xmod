.class public final Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$boolResId:I

.field public final synthetic val$callback:Ljava/util/function/Consumer;

.field public final synthetic val$object:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

.field public final synthetic val$userContext:Landroid/content/Context;

.field public final synthetic val$valueRef:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$userContext:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$valueRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$callback:Ljava/util/function/Consumer;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$object:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$userContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->evaluate(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$valueRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eq p1, p2, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$callback:Ljava/util/function/Consumer;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$object:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 18
    .line 19
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
