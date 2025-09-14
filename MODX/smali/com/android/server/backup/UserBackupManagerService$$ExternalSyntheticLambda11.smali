.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 3
    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/backup/UserBackupManagerService$2;

    .line 10
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 14
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 22
    check-cast v0, Lcom/android/server/backup/UserBackupManagerService$2;

    .line 24
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 26
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 28
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v1, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {v0, p0, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 44
    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 46
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 48
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 50
    iget-object v2, v1, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 52
    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v1, v1, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    .line 55
    check-cast v1, Ljava/util/HashMap;

    .line 57
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/util/Set;

    .line 63
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    .line 66
    move-result-object v1

    .line 67
    if-eqz p0, :cond_0

    .line 69
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p0

    .line 80
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/Integer;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result v1

    .line 96
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-direct {v2, v3, v0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 102
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 104
    const/4 v4, 0x1

    .line 105
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    return-void

    .line 110
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
