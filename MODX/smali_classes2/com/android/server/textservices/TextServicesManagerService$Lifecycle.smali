.class public final Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;-><init>(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/android/server/textservices/TextServicesManagerInternal;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "textservices"

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v1, v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    :goto_1
    return-void

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v1, v2, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$minitializeTextServicesData(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1, v1}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, v1}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method
