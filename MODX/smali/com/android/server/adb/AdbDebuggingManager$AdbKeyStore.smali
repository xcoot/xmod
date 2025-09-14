.class public final Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAtomicKeyFile:Landroid/util/AtomicFile;

.field public final mKeyMap:Ljava/util/Map;

.field public final mSystemKeys:Ljava/util/Set;

.field public final mTrustedNetworks:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 20
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Landroid/util/AtomicFile;

    .line 26
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 28
    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 31
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->readTempKeysFile()V

    .line 36
    new-instance p1, Ljava/util/HashSet;

    .line 38
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 41
    new-instance v0, Ljava/io/File;

    .line 43
    const-string v1, "/adb_keys"

    .line 45
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 51
    move-result v1

    .line 52
    const-string v2, "AdbDebuggingManager"

    .line 54
    if-eqz v1, :cond_3

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 58
    new-instance v3, Ljava/io/FileReader;

    .line 60
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 63
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 79
    move-result v3

    .line 80
    if-lez v3, :cond_1

    .line 82
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-exception v0

    .line 93
    goto :goto_3

    .line 94
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    goto :goto_2

    .line 98
    :catchall_1
    move-exception v1

    .line 99
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 103
    :goto_3
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "Caught an exception reading /adb_keys: "

    .line 109
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3
    :goto_4
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    .line 124
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 126
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 128
    if-eqz v0, :cond_7

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_4

    .line 136
    goto :goto_a

    .line 137
    :cond_4
    const/4 v0, 0x0

    .line 138
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    .line 140
    new-instance v3, Ljava/io/FileReader;

    .line 142
    iget-object v4, p1, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 144
    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 147
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 150
    :cond_5
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 153
    move-result-object v3

    .line 154
    if-eqz v3, :cond_6

    .line 156
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 158
    check-cast v4, Ljava/util/HashMap;

    .line 160
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_5

    .line 166
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 168
    iget-object v5, p1, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 170
    invoke-interface {v5}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 173
    move-result-wide v5

    .line 174
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    move-result-object v5

    .line 178
    check-cast v4, Ljava/util/HashMap;

    .line 180
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 183
    const/4 v0, 0x1

    .line 184
    goto :goto_5

    .line 185
    :catchall_2
    move-exception p0

    .line 186
    goto :goto_6

    .line 187
    :cond_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 190
    goto :goto_9

    .line 191
    :catch_1
    move-exception p0

    .line 192
    goto :goto_8

    .line 193
    :goto_6
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 196
    goto :goto_7

    .line 197
    :catchall_3
    move-exception v1

    .line 198
    :try_start_9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 201
    :goto_7
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 202
    :goto_8
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    const-string v3, "Caught an exception reading "

    .line 208
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v3, p1, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string v3, ": "

    .line 218
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p0

    .line 228
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_9
    if-eqz v0, :cond_7

    .line 233
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 236
    :cond_7
    :goto_a
    return-void
.end method


# virtual methods
.method public final deleteKeyStore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 17
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 26
    if-nez p0, :cond_1

    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 32
    return-void
.end method

.method public final filterOutOldKeys()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 3
    iget-object v1, v0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "adb_allowed_connection_time"

    .line 11
    const-wide/32 v3, 0x240c8400

    .line 14
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, 0x0

    .line 20
    cmp-long v3, v1, v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v3, :cond_0

    .line 25
    return v4

    .line 26
    :cond_0
    iget-object v3, v0, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 28
    invoke-interface {v3}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 31
    move-result-wide v5

    .line 32
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 34
    check-cast v3, Ljava/util/HashMap;

    .line 36
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v3

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Ljava/lang/Long;

    .line 62
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 65
    move-result-wide v7

    .line 66
    add-long/2addr v7, v1

    .line 67
    cmp-long v7, v5, v7

    .line 69
    if-lez v7, :cond_1

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 74
    const/4 v4, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    if-eqz v4, :cond_3

    .line 78
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 80
    check-cast p0, Ljava/util/HashMap;

    .line 82
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mwriteKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V

    .line 89
    :cond_3
    return v4
.end method

.method public final getPairedDevices()Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 36
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 38
    invoke-static {v4, v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/String;

    .line 48
    const-string v6, "\\s+"

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    array-length v6, v5

    .line 55
    const/4 v7, 0x1

    .line 56
    if-le v6, v7, :cond_0

    .line 58
    aget-object v5, v5, v7

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const-string/jumbo v5, "nouser@nohostname"

    .line 64
    :goto_1
    new-instance v6, Landroid/debug/PairDevice;

    .line 66
    invoke-direct {v6}, Landroid/debug/PairDevice;-><init>()V

    .line 69
    iput-object v5, v6, Landroid/debug/PairDevice;->name:Ljava/lang/String;

    .line 71
    iput-object v3, v6, Landroid/debug/PairDevice;->guid:Ljava/lang/String;

    .line 73
    iget-object v3, v4, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    move-result-object v4

    .line 79
    check-cast v3, Ljava/util/HashSet;

    .line 81
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result v3

    .line 85
    iput-boolean v3, v6, Landroid/debug/PairDevice;->connected:Z

    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    return-object v0
.end method

.method public final readKeyStoreContents(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 5

    .line 1
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "adbKey"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    const-string v2, "AdbDebuggingManager"

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const-string/jumbo v0, "key"

    .line 26
    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    :try_start_0
    const-string/jumbo v1, "lastConnection"

    .line 33
    invoke-interface {p1, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 36
    move-result-wide v3

    .line 37
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 50
    const-string v1, "Error reading adbKey attributes"

    .line 52
    invoke-static {v2, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const-string/jumbo v1, "wifiAP"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v0, "bssid"

    .line 68
    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    const-string v3, "Ignoring tag \'"

    .line 84
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "\'. Not recognized."

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method

.method public final readTempKeysFile()V
    .locals 7

    .line 1
    const-string v0, " not supported (max_supported=1)"

    .line 3
    const-string v1, "Keystore version="

    .line 5
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 12
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 19
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 21
    const-string v3, "AdbDebuggingManager"

    .line 23
    if-nez v2, :cond_1

    .line 25
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 27
    iget-object v4, v2, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 29
    if-eqz v4, :cond_0

    .line 31
    new-instance v4, Landroid/util/AtomicFile;

    .line 33
    iget-object v5, v2, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 35
    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 38
    iput-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 40
    :cond_0
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 42
    if-nez v4, :cond_1

    .line 44
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    const-string v0, "Unable to obtain the key file, "

    .line 50
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v0, v2, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, ", for reading"

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 73
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 79
    return-void

    .line 80
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 82
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 85
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 89
    move-result-object v4

    .line 90
    const-string/jumbo v5, "keyStore"

    .line 93
    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v5, "version"

    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-result v5

    .line 104
    const/4 v6, 0x1

    .line 105
    if-le v5, v6, :cond_4

    .line 107
    sget-object v4, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-eqz v2, :cond_3

    .line 129
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception p0

    .line 134
    goto :goto_3

    .line 135
    :catch_1
    move-exception p0

    .line 136
    goto :goto_4

    .line 137
    :cond_3
    :goto_0
    return-void

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_1

    .line 140
    :catch_2
    :try_start_3
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 143
    move-result-object v4

    .line 144
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->readKeyStoreContents(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    if-eqz v2, :cond_6

    .line 149
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 152
    goto :goto_5

    .line 153
    :goto_1
    if-eqz v2, :cond_5

    .line 155
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 158
    goto :goto_2

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 163
    :cond_5
    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 164
    :goto_3
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 166
    const-string v0, "Caught XmlPullParserException parsing the XML key file: "

    .line 168
    invoke-static {v3, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    goto :goto_5

    .line 172
    :goto_4
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 174
    const-string v0, "Caught an IOException parsing the XML key file: "

    .line 176
    invoke-static {v3, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_6
    :goto_5
    return-void
.end method

.method public setLastConnectionTime(Ljava/lang/String;JZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 13
    check-cast v0, Ljava/util/HashMap;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Long;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 24
    move-result-wide v0

    .line 25
    cmp-long v0, v0, p2

    .line 27
    if-ltz v0, :cond_0

    .line 29
    if-nez p4, :cond_0

    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    .line 34
    check-cast p4, Ljava/util/HashSet;

    .line 36
    invoke-virtual {p4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result p4

    .line 40
    if-eqz p4, :cond_1

    .line 42
    return-void

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object p2

    .line 49
    check-cast p0, Ljava/util/HashMap;

    .line 51
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
