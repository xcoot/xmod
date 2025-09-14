.class public Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 5
    .line 6
    const-class v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 14
    .line 15
    const-string/jumbo v2, "enterprise.db"

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/16 v4, 0x9

    .line 20
    .line 21
    invoke-direct {v1, p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    sput-object v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    sget-object p1, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    const-string p0, "EdmStorageProvider"

    .line 45
    .line 46
    const-string p1, "Failed to OPEN/CREATE the database"

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void

    .line 52
    :goto_2
    monitor-exit v0

    .line 53
    throw p0
.end method

.method public static convertAdminIdToLUID(Landroid/content/ContentValues;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "containerID"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "adminUid"

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public static formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;
    .locals 8

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v4, "#SelectClause#"

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    const-string v5, "="

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_0

    .line 64
    .line 65
    const-string v5, "=?"

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    const-string v5, ""

    .line 69
    .line 70
    :goto_1
    if-nez v1, :cond_1

    .line 71
    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v7, " AND "

    .line 94
    .line 95
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :goto_2
    if-nez v4, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-lez p0, :cond_4

    .line 124
    .line 125
    new-array p0, p0, [Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, [Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    const/4 p0, 0x0

    .line 135
    :goto_3
    return-object p0
.end method

.method public static getAdminLUIDWhereIn(II)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "adminUid IN ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-eq p0, v1, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "SELECT adminUid FROM ADMIN WHERE containerID="

    .line 21
    .line 22
    const-string v3, " AND userID="

    .line 23
    .line 24
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, ")"

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p1, "Invalid container id!!"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public static parseContentValues(Landroid/content/ContentValues;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "containerID"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "userID"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 61
    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "#SelectClause#"

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public static translateToAdminLUID(II)J
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-lez p1, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    int-to-long v0, p1

    .line 13
    const/16 p1, 0x20

    .line 14
    .line 15
    shl-long/2addr v0, p1

    .line 16
    int-to-long p0, p0

    .line 17
    or-long/2addr p0, v0

    .line 18
    return-wide p0

    .line 19
    :cond_1
    :goto_0
    int-to-long p0, p0

    .line 20
    return-wide p0
.end method


# virtual methods
.method public final addAdmin(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "adminUid"

    .line 7
    .line 8
    const-string v2, "adminName"

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    const-string/jumbo p2, "canRemove"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "ADMIN_INFO"

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final addMUMContainer(II)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "containerID"

    .line 7
    .line 8
    .line 9
    const-string v2, "adminUid"

    .line 10
    .line 11
    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "MUMCONTAINER"

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    cmp-long p0, p0, v0

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final addorUpdateAdmin(ILjava/lang/String;Z)Z
    .locals 2

    .line 1
    const-string v0, "adminName"

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    const-string/jumbo v0, "canRemove"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 15
    .line 16
    .line 17
    new-instance p3, Landroid/content/ContentValues;

    .line 18
    .line 19
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "adminUid"

    .line 27
    .line 28
    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "ADMIN_INFO"

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-lez v0, :cond_0

    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    const-wide/16 p2, -0x1

    .line 49
    .line 50
    cmp-long p0, p0, p2

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final addorUpdateAdminWithPseudo(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "adminName"

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    const-string/jumbo v1, "canRemove"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    const-string/jumbo v1, "isPseudoAdmin"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "adminUid"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "ADMIN_INFO"

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-lez v1, :cond_0

    .line 45
    .line 46
    return v2

    .line 47
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    const-wide/16 v0, -0x1

    .line 55
    .line 56
    cmp-long p0, p0, v0

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    return v2

    .line 61
    :cond_1
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final canRemoveAdmin(I)Z
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "ADMIN_INFO"

    .line 2
    .line 3
    const-string/jumbo v1, "canRemove"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const-string p0, "EdmStorageProvider"

    .line 13
    .line 14
    const-string p1, "Admin not in database, something went wrong"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    :goto_0
    return p0
.end method

.method public final checkPseudoAdminForUid(I)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "adminUid"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "ADMIN_INFO"

    .line 16
    .line 17
    const-string/jumbo v1, "isPseudoAdmin"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lez p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_0
    new-instance p0, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    .line 45
    .line 46
    const-string p1, "Admin data is null"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final getAdminUidList()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "adminUid!=?"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    const-string v2, "ADMIN_INFO"

    .line 19
    .line 20
    const-string v3, "adminUid"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final getAdminUidListAsUser(I)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "adminUid!=?"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string/jumbo v1, "userID"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    const-string v1, "ADMIN"

    .line 29
    .line 30
    const-string v2, "adminUid"

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public final getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlobList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, [B

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

.method public final getBlobList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    filled-new-array {p3}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_3

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :goto_2
    :try_start_1
    const-string p2, "EdmStorageProvider"

    .line 46
    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "Exception occurred accessing Enterprise db "

    .line 53
    .line 54
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    :goto_4
    return-object v0
.end method

.method public final getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "adminUid"

    .line 15
    .line 16
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    new-instance p0, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    .line 44
    .line 45
    const-string p1, "Admin data is null"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final getBooleanList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    filled-new-array {p3}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_3

    .line 15
    .line 16
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 p3, 0x1

    .line 34
    if-ne p2, p3, :cond_1

    .line 35
    .line 36
    move p1, p3

    .line 37
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 50
    .line 51
    .line 52
    goto :goto_4

    .line 53
    :goto_2
    :try_start_1
    const-string p2, "EdmStorageProvider"

    .line 54
    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "Exception occurred accessing Enterprise db "

    .line 61
    .line 62
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_3
    :goto_4
    return-object v0
.end method

.method public final getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "#SelectClause#"

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public final getComponentNameForUid(I)Landroid/content/ComponentName;
    .locals 3

    .line 1
    const-string v0, "ADMIN_INFO"

    .line 2
    .line 3
    const-string v1, "adminName"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-lez p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    :goto_0
    move-object v4, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 p3, 0x0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v2, p1

    .line 34
    move-object v3, p2

    .line 35
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "adminUid"

    .line 15
    .line 16
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "name"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo p1, "generic"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "value"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string/jumbo v0, "name"

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x0

    .line 9
    const-string/jumbo v1, "containerID"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "userID"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p2, v1, p1, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p1, "generic"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "value"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final getInt(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "adminUid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 9
    :cond_0
    new-instance p0, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    const-string p1, "Admin data is null"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInt(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getIntList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    filled-new-array {p3}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_3

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 46
    .line 47
    .line 48
    goto :goto_4

    .line 49
    :goto_2
    :try_start_1
    const-string p2, "EdmStorageProvider"

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "Exception occurred accessing Enterprise db "

    .line 57
    .line 58
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    :goto_4
    return-object v0
.end method

.method public final getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "#SelectClause#"

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public final getLongList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    filled-new-array {p3}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_3

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 46
    .line 47
    .line 48
    goto :goto_4

    .line 49
    :goto_2
    :try_start_1
    const-string p2, "EdmStorageProvider"

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "Exception occurred accessing Enterprise db "

    .line 57
    .line 58
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    :goto_4
    return-object v0
.end method

.method public final getLongListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "#SelectClause#"

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public final getMUMContainerOwnerUid(I)I
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v1, "containerID"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "MUMCONTAINER"

    .line 17
    .line 18
    const-string v1, "adminUid"

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "adminUid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getStringList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    filled-new-array {p3}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_3

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :goto_2
    :try_start_1
    const-string p2, "EdmStorageProvider"

    .line 46
    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "Exception occurred accessing Enterprise db "

    .line 53
    .line 54
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    :goto_4
    return-object v0
.end method

.method public final getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "#SelectClause#"

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_7

    .line 12
    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-lez p0, :cond_7

    .line 21
    .line 22
    :cond_0
    new-instance p0, Landroid/content/ContentValues;

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-ge p1, p2, :cond_5

    .line 33
    .line 34
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getType(I)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 p3, 0x3

    .line 39
    if-ne p2, p3, :cond_1

    .line 40
    .line 41
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :cond_1
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getType(I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    const/4 p3, 0x1

    .line 63
    if-ne p2, p3, :cond_2

    .line 64
    .line 65
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getType(I)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    const/4 p3, 0x2

    .line 86
    if-ne p2, p3, :cond_3

    .line 87
    .line 88
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getFloat(I)F

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getType(I)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    const/4 p3, 0x4

    .line 109
    if-ne p2, p3, :cond_4

    .line 110
    .line 111
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-lez p1, :cond_6

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 135
    .line 136
    .line 137
    move-result p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-nez p0, :cond_0

    .line 139
    .line 140
    :cond_7
    if-eqz v1, :cond_8

    .line 141
    .line 142
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :goto_3
    :try_start_1
    const-string p1, "EdmStorageProvider"

    .line 147
    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string p3, "Exception occurred accessing Enterprise db "

    .line 154
    .line 155
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .line 171
    .line 172
    if-eqz v1, :cond_8

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_8
    :goto_4
    return-object v0

    .line 176
    :goto_5
    if-eqz v1, :cond_9

    .line 177
    .line 178
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 179
    .line 180
    .line 181
    :cond_9
    throw p0
.end method

.method public final getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "#SelectClause#"

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "EdmStorageProvider"

    .line 15
    .line 16
    const-string/jumbo p2, "insert()"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const-wide/16 p0, -0x1

    .line 23
    .line 24
    :goto_0
    return-wide p0
.end method

.method public final put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    const-wide/16 p2, -0x1

    .line 38
    .line 39
    cmp-long p0, p0, p2

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :goto_1
    return v1
.end method

.method public final putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {v0, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    const-wide/16 p4, 0x0

    .line 18
    .line 19
    cmp-long p4, p2, p4

    .line 20
    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    new-instance p4, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string p3, "adminUid"

    .line 33
    .line 34
    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p4, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "name"

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v1, "containerID"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string/jumbo v0, "userID"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroid/content/ContentValues;

    .line 30
    .line 31
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v0, "value"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p3, "generic"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {v0, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    cmp-long p3, p1, v1

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    new-instance p3, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "adminUid"

    .line 33
    .line 34
    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p3, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0, p4, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p4, p5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long p5, p1, v0

    .line 12
    .line 13
    if-eqz p5, :cond_0

    .line 14
    .line 15
    new-instance p5, Landroid/content/ContentValues;

    .line 16
    .line 17
    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "adminUid"

    .line 25
    .line 26
    invoke-virtual {p5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p5, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "adminUid"

    .line 15
    .line 16
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final removeAdminFromDatabase(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "adminUid"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const-string/jumbo v3, "canRemove"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "ADMIN_INFO"

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final removeByAdmin(IILjava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "adminUid"

    .line 15
    .line 16
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-lez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final removeByFieldsAsUser(ILjava/lang/String;Ljava/util/HashMap;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p3, 0x0

    .line 49
    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p3, "#SelectClause#"

    .line 54
    .line 55
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0
.end method

.method public final resetControlStateBits(I)V
    .locals 4

    .line 1
    const-string v0, "UPDATE APPLICATION SET controlState = (controlState & -15329266) WHERE adminUid = "

    .line 2
    .line 3
    const-string v1, "EdmStorageProvider"

    .line 4
    .line 5
    const-string/jumbo v2, "resetControlStateBits: query -> "

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string/jumbo p1, "resetControlStateBits()"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    const-string p1, "EdmStorageProvider"

    const-string/jumbo p2, "update()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method
