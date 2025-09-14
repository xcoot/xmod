.class public final Lcom/android/server/pm/DataLoaderManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mServiceConnections:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string p1, "DataLoaderManager"

    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance p1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;-><init>(Lcom/android/server/pm/DataLoaderManagerService;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "dataloader_manager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
