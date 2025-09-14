.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 3
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;->initializeGlobalHibernationStates(Ljava/util/List;)V

    .line 15
    monitor-exit v1

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method
