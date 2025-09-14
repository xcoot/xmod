.class public final Lcom/samsung/android/server/audio/AudioSettingsHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# instance fields
.field public mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field public mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v5, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const-string v2, "audioservice_sec.db"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/16 v4, 0xe

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string p2, "add error "

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "AudioService.DB"

    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final enableSyncParentSound()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "user"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/UserManager;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string/jumbo v0, "sync_parent_sounds"

    .line 52
    .line 53
    .line 54
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catch_0
    move-exception p0

    .line 62
    const-string v0, "AudioService.DB"

    .line 63
    .line 64
    const-string v1, "Enable sync sound error "

    .line 65
    .line 66
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public final getAppList()Ljava/util/Hashtable;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    const-string v3, "category_packages"

    .line 17
    .line 18
    const-string v1, "_package"

    .line 19
    .line 20
    const-string v4, "_category"

    .line 21
    .line 22
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v4, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    .line 53
    new-instance v5, Landroid/util/Pair;

    .line 54
    .line 55
    invoke-direct {v5, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catch_0
    move-exception v1

    .line 75
    goto :goto_3

    .line 76
    :goto_1
    if-eqz v1, :cond_2

    .line 77
    .line 78
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_1
    move-exception v1

    .line 83
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 87
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v3, "getAllSoundAppPolicyAllowAppList error "

    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v3, "AudioService.DB"

    .line 95
    .line 96
    invoke-static {v1, v2, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Landroid/util/Pair;

    .line 116
    .line 117
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_4
    return-object v0
.end method

.method public final getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 p2, 0x1

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 25
    .line 26
    .line 27
    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_4

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :goto_1
    if-eqz p0, :cond_1

    .line 38
    .line 39
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p2, "getInt error "

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p2, "AudioService.DB"

    .line 56
    .line 57
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_4
    return p4
.end method

.method public final getIntValue(ILjava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "_key=\'"

    .line 2
    .line 3
    const-string v1, "\'"

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "_key"

    .line 10
    .line 11
    const-string v1, "_value"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "audio_settings"

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final getPackageList()Ljava/util/Hashtable;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    const-string/jumbo v2, "selectedpkg"

    .line 9
    .line 10
    .line 11
    const-string p0, "_uid"

    .line 12
    .line 13
    const-string v3, "_package"

    .line 14
    .line 15
    filled-new-array {p0, v3}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_3

    .line 66
    :goto_1
    if-eqz p0, :cond_2

    .line 67
    .line 68
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "getPackageList error "

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v2, "AudioService.DB"

    .line 85
    .line 86
    invoke-static {p0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_4
    return-object v0
.end method

.method public final initSystemVibration(ILjava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "content://settings/system/"

    .line 2
    .line 3
    const-string v1, "initSystemVibration error "

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v9, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v2, p0

    .line 26
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    if-eqz v9, :cond_0

    .line 31
    .line 32
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    const-string/jumbo v0, "value"

    .line 45
    .line 46
    .line 47
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    const-string/jumbo v0, "package"

    .line 55
    .line 56
    .line 57
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "android"

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_0

    .line 72
    .line 73
    const-string v2, "com.android.providers.settings"

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-nez v0, :cond_0

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :catch_0
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 88
    .line 89
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :goto_2
    :try_start_1
    const-string v2, "AudioService.DB"

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    if-eqz v9, :cond_1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    .line 118
    .line 119
    const/4 v0, -0x2

    .line 120
    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 121
    .line 122
    .line 123
    :cond_2
    return-void

    .line 124
    :goto_4
    if-eqz v9, :cond_3

    .line 125
    .line 126
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 127
    .line 128
    .line 129
    :cond_3
    throw p0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    :try_start_0
    const-string p0, "CREATE TABLE audio_settings (_id INTEGER PRIMARY KEY AUTOINCREMENT, _key TEXT UNIQUE, _value INTEGER);"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "CREATE TABLE device_addr (_id INTEGER PRIMARY KEY AUTOINCREMENT, _addr TEXT UNIQUE, _index INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "CREATE TABLE app_volume (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER UNIQUE, _index INTEGER);"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "CREATE TABLE selectedpkg (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTERGER, _package TEXT);"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "CREATE TABLE call_policy_category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "AudioService.DB"

    .line 34
    .line 35
    const-string v0, "Create DB Create failed "

    .line 36
    .line 37
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo p2, "onDowngrade error "

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p2, "AudioService.DB"

    .line 15
    .line 16
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    const-string/jumbo v3, "sync_vibration_with_notification"

    .line 8
    .line 9
    .line 10
    const-string v4, "adjust_media_volume_only"

    .line 11
    .line 12
    const-string/jumbo v5, "volumelimit_secure_password"

    .line 13
    .line 14
    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v7, "Upgrading settings database from version "

    .line 18
    .line 19
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v7, " to "

    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move/from16 v7, p3

    .line 31
    .line 32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const-string v7, "AudioService.DB"

    .line 40
    .line 41
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 v6, 0x2

    .line 45
    const/4 v8, 0x1

    .line 46
    if-ne v0, v8, :cond_0

    .line 47
    .line 48
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS category_packages"

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "CREATE TABLE selectedpkg (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER, _package TEXT);"

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move v0, v6

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_0
    :goto_0
    const/4 v9, 0x3

    .line 64
    if-ne v0, v6, :cond_1

    .line 65
    .line 66
    const-string v0, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move v0, v9

    .line 72
    :cond_1
    const/4 v10, 0x4

    .line 73
    if-ne v0, v9, :cond_2

    .line 74
    .line 75
    const-string v0, "delete from device_addr"

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move v0, v10

    .line 81
    :cond_2
    const/4 v9, 0x5

    .line 82
    if-ne v0, v10, :cond_3

    .line 83
    .line 84
    move v0, v9

    .line 85
    :cond_3
    const/4 v11, 0x6

    .line 86
    const/4 v12, 0x0

    .line 87
    if-ne v0, v9, :cond_5

    .line 88
    .line 89
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v9, -0x2

    .line 96
    const/4 v13, -0x1

    .line 97
    invoke-static {v0, v4, v13, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ne v0, v13, :cond_4

    .line 102
    .line 103
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0, v4, v12, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    :cond_4
    move v0, v11

    .line 113
    :cond_5
    const/4 v4, 0x7

    .line 114
    const-string/jumbo v9, "update audio_settings set _value = 0 where _key = \'APP_LIST_VERSION\'"

    .line 115
    .line 116
    .line 117
    if-ne v0, v11, :cond_6

    .line 118
    .line 119
    :try_start_1
    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move v0, v4

    .line 123
    :cond_6
    const/16 v11, 0x8

    .line 124
    .line 125
    if-ne v0, v4, :cond_7

    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->enableSyncParentSound()V

    .line 128
    .line 129
    .line 130
    move v0, v11

    .line 131
    :cond_7
    const/16 v4, 0x9

    .line 132
    .line 133
    if-ne v0, v11, :cond_a

    .line 134
    .line 135
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    const-string/jumbo v11, "vibrator"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/os/Vibrator;

    .line 145
    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_9

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-ne v0, v8, :cond_9

    .line 159
    .line 160
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 161
    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    const-string v0, "haptic_feedback_enabled"

    .line 165
    .line 166
    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_8
    const-string/jumbo v0, "sip_key_feedback_vibration"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v0, "dialing_keypad_vibrate"

    .line 176
    .line 177
    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v0, "navigation_gestures_vibrate"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    .line 187
    .line 188
    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_9
    move v0, v4

    .line 192
    :cond_a
    const/16 v11, 0xa

    .line 193
    .line 194
    if-ne v0, v4, :cond_c

    .line 195
    .line 196
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-eqz v0, :cond_b

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-nez v4, :cond_b

    .line 213
    .line 214
    const-string v4, "encrypt_password"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    .line 216
    :try_start_2
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 217
    .line 218
    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    const-string v14, "SHA-1"

    .line 223
    .line 224
    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    invoke-virtual {v14, v4}, Ljava/security/MessageDigest;->digest([B)[B

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    const/16 v14, 0x10

    .line 233
    .line 234
    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    const-string v14, "AES/ECB/PKCS5PADDING"

    .line 239
    .line 240
    invoke-static {v14}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 241
    .line 242
    .line 243
    move-result-object v14

    .line 244
    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    .line 245
    .line 246
    const-string v10, "AES"

    .line 247
    .line 248
    invoke-direct {v15, v4, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14, v6, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 252
    .line 253
    .line 254
    new-instance v4, Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-virtual {v10, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v14, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-direct {v4, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 269
    .line 270
    .line 271
    const-string v0, "SHA-256"

    .line 272
    .line 273
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 282
    .line 283
    .line 284
    const-string v4, "%064x"

    .line 285
    .line 286
    new-instance v10, Ljava/math/BigInteger;

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-direct {v10, v8, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 293
    .line 294
    .line 295
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v4, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 304
    .line 305
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :catch_1
    move-exception v0

    .line 314
    :try_start_3
    const-string v4, "Change of volume limiter pin encryption failed. Pin is initialized."

    .line 315
    .line 316
    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .line 318
    .line 319
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 320
    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const-string v4, ""

    .line 326
    .line 327
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const-string/jumbo v4, "volumelimit_set_password"

    .line 337
    .line 338
    .line 339
    invoke-static {v0, v4, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    .line 341
    .line 342
    :cond_b
    :goto_1
    move v0, v11

    .line 343
    :cond_c
    const/16 v4, 0xb

    .line 344
    .line 345
    if-ne v0, v11, :cond_d

    .line 346
    .line 347
    move v0, v4

    .line 348
    :cond_d
    const/16 v5, 0xc

    .line 349
    .line 350
    if-ne v0, v4, :cond_11

    .line 351
    .line 352
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 353
    .line 354
    if-eqz v0, :cond_10

    .line 355
    .line 356
    const/16 v0, 0x100

    .line 357
    .line 358
    const/16 v4, 0x80

    .line 359
    .line 360
    filled-new-array {v8, v4, v6, v0}, [I

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    const-string/jumbo v0, "ringtone_CONSTANT_PATH"

    .line 365
    .line 366
    .line 367
    const-string/jumbo v6, "ringtone_2_CONSTANT_PATH"

    .line 368
    .line 369
    .line 370
    const-string/jumbo v8, "notification_sound_CONSTANT_PATH"

    .line 371
    .line 372
    .line 373
    const-string/jumbo v10, "notification_sound_2_CONSTANT_PATH"

    .line 374
    .line 375
    .line 376
    filled-new-array {v0, v6, v8, v10}, [Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    const-string/jumbo v0, "sync_vibration_with_ringtone"

    .line 381
    .line 382
    .line 383
    const-string/jumbo v8, "sync_vibration_with_ringtone_2"

    .line 384
    .line 385
    .line 386
    filled-new-array {v0, v8, v3, v3}, [Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    move v10, v12

    .line 391
    const/4 v8, 0x4

    .line 392
    :goto_2
    if-ge v10, v8, :cond_10

    .line 393
    .line 394
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 395
    .line 396
    aget v11, v4, v10

    .line 397
    .line 398
    invoke-static {v0, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-nez v0, :cond_e

    .line 407
    .line 408
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    aget-object v11, v3, v10

    .line 415
    .line 416
    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 417
    .line 418
    .line 419
    goto :goto_3

    .line 420
    :cond_e
    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 421
    .line 422
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    aget-object v11, v6, v10

    .line 427
    .line 428
    iget-object v13, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 429
    .line 430
    invoke-virtual {v13}, Landroid/content/Context;->getUserId()I

    .line 431
    .line 432
    .line 433
    move-result v13

    .line 434
    invoke-static {v0, v11, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    const-string/jumbo v11, "path"

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    iget-object v11, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 450
    .line 451
    new-instance v13, Ljava/io/File;

    .line 452
    .line 453
    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-static {v11, v0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-nez v0, :cond_f

    .line 465
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    aget-object v11, v6, v10

    .line 472
    .line 473
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v11, " has not haptic channels"

    .line 477
    .line 478
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 489
    .line 490
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    aget-object v11, v3, v10

    .line 495
    .line 496
    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 497
    .line 498
    .line 499
    goto :goto_3

    .line 500
    :catch_2
    move-exception v0

    .line 501
    :try_start_5
    const-string v11, "Uri error "

    .line 502
    .line 503
    invoke-static {v7, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .line 505
    .line 506
    :cond_f
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 507
    .line 508
    goto :goto_2

    .line 509
    :cond_10
    move v0, v5

    .line 510
    :cond_11
    const/16 v1, 0xd

    .line 511
    .line 512
    if-ne v0, v5, :cond_12

    .line 513
    .line 514
    const-string v0, "DELETE FROM selectedpkg"

    .line 515
    .line 516
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    const-string v0, "DELETE FROM category_packages"

    .line 520
    .line 521
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    move v0, v1

    .line 528
    :cond_12
    if-ne v0, v1, :cond_13

    .line 529
    .line 530
    const-string v0, "CREATE TABLE IF NOT EXISTS call_policy_category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    .line 531
    .line 532
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 533
    .line 534
    .line 535
    goto :goto_5

    .line 536
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string/jumbo v2, "onUpgrade error "

    .line 539
    .line 540
    .line 541
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-static {v0, v1, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    :cond_13
    :goto_5
    return-void
.end method

.method public final putCallPolicyAllowList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_package"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "_category"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "call_policy_category_packages"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    new-instance v0, Landroid/util/Pair;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final remove(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo p2, "remove error "

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p2, "AudioService.DB"

    .line 19
    .line 20
    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final removeValue(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "_key=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "\'"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "audio_settings"

    .line 21
    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final resetAllowedListTable()V
    .locals 4

    .line 1
    const-string/jumbo v0, "resetAllowedListTable error "

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x100

    .line 5
    .line 6
    const-string/jumbo v3, "resetAllowedListTable"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    .line 14
    const-string v2, "delete from category_packages"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-exception p0

    .line 33
    :try_start_1
    const-string v1, "AudioService.DB"

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    return-void

    .line 56
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final resetCallPolicyTable()V
    .locals 4

    .line 1
    const-string/jumbo v0, "resetCallPolicyTable error "

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x100

    .line 5
    .line 6
    const-string/jumbo v3, "resetCallPolicyTable"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    .line 14
    const-string v2, "delete from call_policy_category_packages"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-exception p0

    .line 33
    :try_start_1
    const-string v1, "AudioService.DB"

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    return-void

    .line 56
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final set(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p2, p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    if-gtz p3, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    invoke-virtual {p0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo p2, "set error "

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "AudioService.DB"

    .line 26
    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final setIntValue(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "_key"

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "_value"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "_key=\'"

    .line 19
    .line 20
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, "\'"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "audio_settings"

    .line 36
    .line 37
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
