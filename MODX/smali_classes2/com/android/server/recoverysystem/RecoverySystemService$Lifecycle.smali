.class public final Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->onSystemServicesReady()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 16
    .line 17
    const-string/jumbo v1, "recovery"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
