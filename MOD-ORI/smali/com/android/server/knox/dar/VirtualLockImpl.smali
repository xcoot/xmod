.class public final Lcom/android/server/knox/dar/VirtualLockImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sSecureRandom:Ljava/security/SecureRandom;


# instance fields
.field public final mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

.field public mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/knox/dar/VirtualLockImpl;->sSecureRandom:Ljava/security/SecureRandom;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final clearResetPasswordTokenInternal(IJ)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    .line 9
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 16
    .line 17
    const-string/jumbo p2, "vl.rst.token.handle"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "dar_info"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "name=? AND user=?"

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    filled-new-array {p2, v2}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 64
    .line 65
    monitor-enter p2

    .line 66
    :try_start_1
    iget-object p3, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_0

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit p2

    .line 83
    goto :goto_2

    .line 84
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p0

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :catch_0
    move-exception p0

    .line 89
    :try_start_2
    const-string/jumbo p1, "del"

    .line 90
    .line 91
    .line 92
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->reportError(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    .line 94
    .line 95
    if-eqz p3, :cond_1

    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_2
    const/4 p0, 0x1

    .line 104
    return p0

    .line 105
    :goto_3
    if-eqz p3, :cond_2

    .line 106
    .line 107
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    .line 112
    .line 113
    :cond_2
    throw p0

    .line 114
    :cond_3
    const/4 p0, 0x0

    .line 115
    return p0
.end method

.method public final getAvailableUserId()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    :goto_0
    add-int/lit8 v2, v1, 0xa

    .line 8
    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2, v1}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_2
    sget-object p0, Lcom/android/server/knox/dar/VirtualLockImpl;->sSecureRandom:Ljava/security/SecureRandom;

    .line 37
    .line 38
    const/16 v0, 0x1f4

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    add-int/lit16 v1, p0, 0x5dc

    .line 45
    .line 46
    :goto_2
    return v1
.end method

.method public final declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_2
    new-instance v1, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;-><init>(Lcom/android/server/knox/dar/VirtualLockImpl;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_3
    const-string v2, "VirtualLockImpl"

    .line 30
    .line 31
    const-string v3, " Unable to register death recipient"

    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :cond_1
    :try_start_4
    const-string v0, "VirtualLockImpl"

    .line 45
    .line 46
    const-string v1, "Unable to acquire GateKeeperService"

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :goto_1
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public final getReservedUserIdForSystem()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "getReservedUserIdForSystem"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "vl.reserved.userid"

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/16 v2, -0x2710

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :cond_0
    return v2
.end method
