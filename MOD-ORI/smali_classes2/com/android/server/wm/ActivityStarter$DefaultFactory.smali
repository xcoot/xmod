.class public final Lcom/android/server/wm/ActivityStarter$DefaultFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityStarter$Factory;


# instance fields
.field public mController:Lcom/android/server/wm/ActivityStartController;

.field public mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field public mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mStarterPool:Landroid/util/Pools$SynchronizedPool;

.field public mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# virtual methods
.method public final obtain()Lcom/android/server/wm/ActivityStarter;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/ActivityStarter;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/wm/ActivityStarter;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 24
    .line 25
    invoke-direct {v1, v2, v0, v3, p0}, Lcom/android/server/wm/ActivityStarter;-><init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Too early to start activity."

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final recycle(Lcom/android/server/wm/ActivityStarter;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setController(Lcom/android/server/wm/ActivityStartController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 2
    .line 3
    return-void
.end method
