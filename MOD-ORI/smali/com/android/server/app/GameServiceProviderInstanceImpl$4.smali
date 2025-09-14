.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$4;
.super Landroid/app/TaskStackListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;ILandroid/content/ComponentName;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onTaskFocusChanged(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;IZ)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onTaskRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
