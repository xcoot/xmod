.class public final synthetic Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 5
    iput-boolean p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$1:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 8
    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$1:Z

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 15
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 23
    :goto_0
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 26
    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$1:Z

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    :try_start_1
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 33
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    move-exception p0

    .line 38
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 41
    :goto_1
    return-void

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 44
    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$1:Z

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    :try_start_2
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 51
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 54
    goto :goto_2

    .line 55
    :catch_2
    move-exception p0

    .line 56
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 59
    :goto_2
    return-void

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 62
    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;->f$1:Z

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    :try_start_3
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 69
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeVisibility(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 72
    goto :goto_3

    .line 73
    :catch_3
    move-exception p0

    .line 74
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 77
    :goto_3
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
