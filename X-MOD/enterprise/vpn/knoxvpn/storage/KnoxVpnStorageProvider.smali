.class public final Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field public static mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static final mSynObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mSynObj:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 6
    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mSynObj:Ljava/lang/Object;

    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    if-nez v3, :cond_0

    .line 20
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 22
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 25
    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    goto :goto_2

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    goto :goto_3

    .line 36
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    :try_start_4
    throw p0

    .line 38
    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    monitor-exit v0

    .line 41
    return-object p0

    .line 42
    :goto_3
    monitor-exit v0

    .line 43
    throw p0
.end method

.method public static getProfileId()I
    .locals 12

    .line 1
    const-string v0, "Exception = "

    .line 3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    const-string v2, "KnoxVpnStorageProvider"

    .line 7
    const/4 v3, -0x1

    .line 8
    if-eqz v1, :cond_4

    .line 10
    iget-object v1, v1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    move-result-object v4

    .line 16
    const-string/jumbo v1, "profileCount"

    .line 19
    filled-new-array {v1}, [Ljava/lang/String;

    .line 22
    move-result-object v6

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    const-string v5, "VpnAnalyticsTable"

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    move-result-object v4

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v4, :cond_1

    .line 37
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 40
    move-result v6

    .line 41
    if-gtz v6, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 47
    move-result v1

    .line 48
    if-lez v1, :cond_2

    .line 50
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 56
    move-result v3

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_4

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    .line 64
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "VpnAnalyticsTable"

    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-static {v1, v7, v7, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    move v3, v5

    .line 81
    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    .line 83
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 86
    goto :goto_5

    .line 87
    :goto_3
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    if-eqz v4, :cond_4

    .line 108
    goto :goto_2

    .line 109
    :goto_4
    if-eqz v4, :cond_3

    .line 111
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_3
    throw v0

    .line 115
    :cond_4
    :goto_5
    const-string/jumbo v0, "profile id : "

    .line 118
    invoke-static {v3, v0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return v3
.end method

.method public static putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 6
    return-void
.end method
