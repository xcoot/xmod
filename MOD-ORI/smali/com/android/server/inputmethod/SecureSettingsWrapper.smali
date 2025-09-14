.class public abstract Lcom/android/server/inputmethod/SecureSettingsWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

.field public static final NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

.field public static volatile sContentResolver:Landroid/content/ContentResolver;

.field public static final sUserMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

    .line 24
    .line 25
    return-void
.end method

.method public static createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    .line 16
    .line 17
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p0
.end method

.method public static get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    sget-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-static {v0, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public static getInt(IILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p0, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getInt(ILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static onStart(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    .line 6
    .line 7
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 26
    .line 27
    invoke-static {v0, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$2;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$2;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v2, v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p1

    .line 28
    :cond_1
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
