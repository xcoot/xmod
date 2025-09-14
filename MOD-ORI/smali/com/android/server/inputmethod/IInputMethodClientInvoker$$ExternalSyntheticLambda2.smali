.class public final synthetic Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$1:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$2:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$1:Z

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$2:Z

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 16
    .line 17
    invoke-interface {v0, v1, p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->setActive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$1:Z

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$2:Z

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :try_start_1
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 36
    .line 37
    invoke-interface {v0, v1, p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->setInteractive(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
