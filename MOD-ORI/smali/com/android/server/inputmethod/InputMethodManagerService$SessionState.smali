.class public final Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChannel:Landroid/view/InputChannel;

.field public final mClient:Lcom/android/server/inputmethod/ClientState;

.field public final mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public mSession:Lcom/android/internal/inputmethod/IInputMethodSession;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mClient:Lcom/android/server/inputmethod/ClientState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SessionState{uid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mClient:Lcom/android/server/inputmethod/ClientState;

    .line 9
    .line 10
    iget v2, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " pid="

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, v1, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " method="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, v1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    const-string v2, " session="

    .line 43
    .line 44
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " channel="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string/jumbo p0, "}"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
