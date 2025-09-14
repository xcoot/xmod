.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/smartspace/SmartspacePerUserService;

.field public final synthetic f$1:Landroid/app/smartspace/SmartspaceSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;->f$1:Landroid/app/smartspace/SmartspaceSessionId;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;->f$1:Landroid/app/smartspace/SmartspaceSessionId;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
