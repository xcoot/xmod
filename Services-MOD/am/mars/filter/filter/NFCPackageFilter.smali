.class public final Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mOnRoleHoldersChangedListener:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

.field public mPaymentDefaultPackage:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mPaymentDefaultPackage:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "role"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/role/RoleManager;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mOnRoleHoldersChangedListener:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

    .line 16
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->userId:I

    .line 18
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, v1, p0}, Landroid/app/role/RoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 25
    :cond_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mPaymentDefaultPackage:Ljava/lang/String;

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    const/16 p0, 0x1f

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method

.method public final getPaymentDefaultPackageFromRoleManager()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "NFCFilter"

    .line 3
    const-string v1, "android.app.role.WALLET"

    .line 5
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v3, "role"

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/app/role/RoleManager;

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 19
    return-object v3

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_1

    .line 26
    const-string p0, "ROLE_WALLET is not available"

    .line 28
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-object v3

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->userId:I

    .line 36
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v2, v1, p0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    move-object v3, p0

    .line 59
    :goto_0
    return-object v3

    .line 60
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "Exception "

    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    return-object v3
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->userId:I

    .line 9
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->getPaymentDefaultPackageFromRoleManager()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->setPaymentDefaultPackage(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;)V

    .line 21
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mOnRoleHoldersChangedListener:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

    .line 23
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mContext:Landroid/content/Context;

    .line 25
    const-string/jumbo v1, "role"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/app/role/RoleManager;

    .line 34
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 39
    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mOnRoleHoldersChangedListener:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

    .line 42
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->userId:I

    .line 44
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p1, v1, p0}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final setPaymentDefaultPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mPaymentDefaultPackage:Ljava/lang/String;

    .line 6
    const-string p0, "FILTER 31"

    .line 8
    if-nez p1, :cond_0

    .line 10
    const-string/jumbo p1, "null"

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method
