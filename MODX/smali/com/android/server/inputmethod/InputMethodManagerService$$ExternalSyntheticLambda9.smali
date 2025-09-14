.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Lcom/android/server/inputmethod/ClientState;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 18
    const/4 p0, 0x0

    .line 19
    iput-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 21
    const/4 p0, 0x0

    .line 22
    iput-boolean p0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 24
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 27
    return-void

    .line 28
    :pswitch_0
    check-cast p1, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 38
    if-ne p1, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
