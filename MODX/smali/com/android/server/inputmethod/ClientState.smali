.class public final Lcom/android/server/inputmethod/ClientState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAccessibilitySessions:Landroid/util/SparseArray;

.field public final mBinding:Landroid/view/inputmethod/InputBinding;

.field public final mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final mClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field public final mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final mPid:I

.field public final mSelfReportedDisplayId:I

.field public mSessionRequested:Z

.field public mSessionRequestedForAccessibility:Z

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;IIILcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 11
    iput-object p1, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 13
    iput-object p2, p0, Lcom/android/server/inputmethod/ClientState;->mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 15
    iput p3, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 17
    iput p4, p0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 19
    iput p5, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 21
    new-instance p1, Landroid/view/inputmethod/InputBinding;

    .line 23
    const/4 p5, 0x0

    .line 24
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p5, p2, p3, p4}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V

    .line 31
    iput-object p1, p0, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    .line 33
    iput-object p6, p0, Lcom/android/server/inputmethod/ClientState;->mClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 35
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ClientState{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " mUid="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " mPid="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v1, p0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, " mSelfReportedDisplayId="

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 46
    const-string/jumbo v1, "}"

    .line 49
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
