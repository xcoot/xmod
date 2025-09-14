.class Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBugreportFiles:Landroid/util/ArrayMap;

.field final mBugreportFilesToPersist:Ljava/util/Set;

.field public final mConsentGranted:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mMappingFile:Landroid/util/AtomicFile;

.field public mReadBugreportMapping:Z


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    .line 36
    .line 37
    return-void
.end method

.method public static throwInvalidBugreportFileForCallerException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    const-string v1, "File "

    .line 4
    .line 5
    const-string v2, " was not generated on behalf of calling package "

    .line 6
    .line 7
    invoke-static {v1, p0, v2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method


# virtual methods
.method public final addBugreportMapping(Landroid/util/Pair;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 13
    .line 14
    new-instance v2, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final canSkipConsentScreen(Ljava/lang/String;Z)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/app/admin/flags/Flags;->onboardingConsentlessBugreports()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 17
    .line 18
    check-cast v2, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iget-object v4, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 35
    .line 36
    check-cast v4, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/util/Pair;

    .line 43
    .line 44
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    sget-wide v6, Lcom/android/server/os/BugreportManagerServiceImpl;->DEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS:J

    .line 53
    .line 54
    add-long/2addr v4, v6

    .line 55
    cmp-long v2, v4, v2

    .line 56
    .line 57
    if-gez v2, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 60
    .line 61
    check-cast p0, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return v1

    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 69
    .line 70
    check-cast p0, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroid/util/Pair;

    .line 77
    .line 78
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    if-nez p0, :cond_3

    .line 89
    .line 90
    monitor-exit v0

    .line 91
    return v1

    .line 92
    :cond_3
    monitor-exit v0

    .line 93
    const/4 p0, 0x1

    .line 94
    return p0

    .line 95
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_4
    :goto_1
    return v1
.end method

.method public final ensureCallerPreviouslyGeneratedFile(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/app/admin/flags/Flags;->onboardingBugreportV2Enabled()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v1, p2, p3, p4, p5}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq p4, v1, :cond_1

    .line 35
    .line 36
    const-string p4, "android.permission.INTERACT_ACROSS_USERS"

    .line 37
    .line 38
    invoke-virtual {p1, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p2, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, " does not hold the INTERACT_ACROSS_USERS permission to access cross-user bugreports."

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_4

    .line 74
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->readBugreportMappingLocked()V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 83
    .line 84
    new-instance p4, Landroid/util/Pair;

    .line 85
    .line 86
    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {p4, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/util/ArraySet;

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    invoke-static {}, Landroid/app/admin/flags/Flags;->onboardingBugreportV2Enabled()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_3

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    .line 114
    .line 115
    invoke-interface {p0, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const/4 p0, 0x0

    .line 121
    :goto_2
    if-nez p0, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    iget-object p0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p0, Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p5, p0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->throwInvalidBugreportFileForCallerException(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v2

    .line 135
    :cond_5
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 136
    .line 137
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroid/util/ArraySet;

    .line 142
    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_7

    .line 150
    .line 151
    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_6

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_3
    monitor-exit v0

    .line 166
    return-void

    .line 167
    :cond_7
    iget-object p0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p0, Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {p5, p0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->throwInvalidBugreportFileForCallerException(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v2

    .line 175
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    throw p0
.end method

.method public final readBugreportMappingLocked()V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "bugreport-data"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v3, :cond_5

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const v6, -0x6735730e

    .line 43
    .line 44
    .line 45
    if-eq v5, v6, :cond_1

    .line 46
    .line 47
    const v6, 0x2d69b2b7

    .line 48
    .line 49
    .line 50
    if-eq v5, v6, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const-string v5, "bugreport-map"

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    goto :goto_3

    .line 65
    :cond_1
    const-string/jumbo v5, "persistent-bugreport"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    move v5, v4

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    const/4 v5, -0x1

    .line 77
    :goto_2
    const/4 v6, 0x0

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    if-eq v5, v4, :cond_3

    .line 81
    .line 82
    const-string v4, "BugreportManagerService"

    .line 83
    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v6, "Unknown tag while reading bugreport mapping file: "

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const-string v3, "bugreport-file"

    .line 106
    .line 107
    invoke-interface {v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    iget-object v5, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    .line 115
    .line 116
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    monitor-exit v4

    .line 120
    goto :goto_0

    .line 121
    :catchall_1
    move-exception v1

    .line 122
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :try_start_3
    throw v1

    .line 124
    :cond_4
    const-string v3, "calling-uid"

    .line 125
    .line 126
    invoke-interface {v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const-string v4, "calling-package"

    .line 131
    .line 132
    invoke-interface {v1, v6, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    const-string v5, "bugreport-file"

    .line 137
    .line 138
    invoke-interface {v1, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    new-instance v6, Landroid/util/Pair;

    .line 143
    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-direct {v6, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v6, v5}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->addBugreportMapping(Landroid/util/Pair;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :goto_3
    if-eqz v0, :cond_6

    .line 164
    .line 165
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :catchall_2
    move-exception v0

    .line 170
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_4
    throw v1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 174
    :catch_0
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :catch_1
    const-string p0, "BugreportManagerService"

    .line 181
    .line 182
    const-string v0, "Bugreport mapping file does not exist"

    .line 183
    .line 184
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_5
    return-void
.end method

.method public final writeBugreportDataLocked()V
    .locals 12

    .line 1
    const-string v0, "bugreport-data"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    const-string v6, "bugreport-file"

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Ljava/util/Map$Entry;

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Landroid/util/Pair;

    .line 68
    .line 69
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Landroid/util/ArraySet;

    .line 74
    .line 75
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_1

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    check-cast v8, Ljava/lang/String;

    .line 90
    .line 91
    const-string v9, "bugreport-map"

    .line 92
    .line 93
    invoke-interface {v2, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    .line 95
    .line 96
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v10, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    const-string v11, "calling-uid"

    .line 105
    .line 106
    invoke-interface {v2, v4, v11, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    .line 108
    .line 109
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v10, Ljava/lang/String;

    .line 112
    .line 113
    const-string v11, "calling-package"

    .line 114
    .line 115
    invoke-interface {v2, v4, v11, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    .line 117
    .line 118
    invoke-interface {v2, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    .line 120
    .line 121
    invoke-interface {v2, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    iget-object v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_3

    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Ljava/lang/String;

    .line 144
    .line 145
    const-string/jumbo v7, "persistent-bugreport"

    .line 146
    .line 147
    .line 148
    invoke-interface {v2, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    .line 150
    .line 151
    invoke-interface {v2, v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    .line 153
    .line 154
    invoke-interface {v2, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    .line 160
    .line 161
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :catch_0
    move-exception p0

    .line 176
    goto :goto_4

    .line 177
    :goto_2
    if-eqz v1, :cond_4

    .line 178
    .line 179
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :catchall_1
    move-exception v0

    .line 184
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 188
    :goto_4
    const-string v0, "BugreportManagerService"

    .line 189
    .line 190
    const-string v1, "Failed to write bugreport mapping file"

    .line 191
    .line 192
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .line 194
    .line 195
    :cond_5
    :goto_5
    return-void
.end method
