.class public final synthetic Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/chimera/SystemRepository;

    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/chimera/SystemRepository;

    .line 3
    monitor-enter p0

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method
