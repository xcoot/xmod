.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    invoke-virtual {v0, v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskFocusChangedLocked(IZ)V

    .line 13
    .line 14
    .line 15
    monitor-exit v2

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method
