.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 22
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->discardHandwritingDelegationText()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    :try_start_2
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw p0

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 37
    if-eqz v0, :cond_1

    .line 39
    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 47
    :goto_1
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
