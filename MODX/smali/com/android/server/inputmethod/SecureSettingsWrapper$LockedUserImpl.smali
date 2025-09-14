.class public final Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;
.super Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mNonPersistentKeyValues:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 11
    return-void
.end method


# virtual methods
.method public final getInt(ILjava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return p1

    .line 31
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->getInt(ILjava/lang/String;)I

    .line 34
    move-result p0

    .line 35
    monitor-exit v0

    .line 36
    return p0

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    move-object p2, p0

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    return-object p2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final putInt(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
