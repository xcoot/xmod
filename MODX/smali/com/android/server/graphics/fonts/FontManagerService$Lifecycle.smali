.class public final Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/graphics/fonts/FontManagerService;

.field public final mServiceStarted:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mServiceStarted:Ljava/util/concurrent/CompletableFuture;

    .line 11
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService;

    .line 13
    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/graphics/fonts/FontManagerService;-><init>(Landroid/content/Context;ZLjava/util/concurrent/CompletableFuture;)V

    .line 16
    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 18
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/text/flags/Flags;->completeFontLoadInSystemServicesReady()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/16 v0, 0x1e0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x226

    .line 12
    :goto_0
    if-ne p1, v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mServiceStarted:Ljava/util/concurrent/CompletableFuture;

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 19
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;-><init>(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)V

    .line 6
    const-class v1, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;

    .line 8
    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 11
    const-string/jumbo v0, "font"

    .line 14
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 19
    return-void
.end method
