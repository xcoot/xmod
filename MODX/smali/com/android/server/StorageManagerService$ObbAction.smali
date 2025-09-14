.class public abstract Lcom/android/server/StorageManagerService$ObbAction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mObbState:Lcom/android/server/StorageManagerService$ObbState;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract handleExecute()V
.end method

.method public final notifyObbStateChange(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 3
    if-eqz p0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 12
    iget p0, p0, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    .line 14
    invoke-interface {v0, v1, p0, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p0, "StorageManagerService"

    .line 20
    const-string p1, "StorageEventListener went away while calling onObbStateChanged"

    .line 22
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1
    :goto_0
    return-void
.end method
