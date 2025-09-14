.class public final synthetic Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ClientController;

.field public final synthetic f$1:Lcom/android/server/inputmethod/IInputMethodClientInvoker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ClientController;Lcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/ClientController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/ClientController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ClientController;->removeClientAsBinder(Landroid/os/IBinder;)Z

    .line 18
    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method
