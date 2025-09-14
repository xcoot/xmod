.class public final Lcom/android/server/people/data/UserData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDefaultDialer:Ljava/lang/String;

.field public mDefaultSmsApp:Ljava/lang/String;

.field public mIsUnlocked:Z

.field public final mPackageDataMap:Ljava/util/Map;

.field public final mPerUserPeopleDataDir:Ljava/io/File;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string/jumbo v1, "people"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final deletePackageData(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/people/data/PackageData;

    .line 10
    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v0, p1, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/server/people/data/EventHistoryImpl;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    monitor-exit p1

    .line 63
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    :try_start_1
    iget-object p1, v0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 67
    .line 68
    check-cast p1, Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 74
    .line 75
    check-cast p1, Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 81
    .line 82
    check-cast p1, Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 85
    .line 86
    .line 87
    iget-object p1, v0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    .line 88
    .line 89
    check-cast p1, Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 95
    .line 96
    check-cast p1, Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 99
    .line 100
    .line 101
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    iget-object v0, p1, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    .line 114
    .line 115
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    throw p0

    .line 122
    :goto_1
    monitor-exit p1

    .line 123
    throw p0

    .line 124
    :cond_3
    :goto_2
    return-void
.end method

.method public final forAllPackages(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/people/data/PackageData;

    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final loadUserData()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 9
    .line 10
    new-instance v9, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v9, v0, v2}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;I)V

    .line 14
    .line 15
    .line 16
    new-instance v10, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v10, v0, v2}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;I)V

    .line 20
    .line 21
    .line 22
    iget-object v11, v0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    iget-object v12, v0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    .line 25
    .line 26
    new-instance v13, Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-direct {v2, v3}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v12, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v14

    .line 41
    if-nez v14, :cond_0

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    array-length v15, v14

    .line 46
    const/16 v16, 0x0

    .line 47
    .line 48
    move/from16 v8, v16

    .line 49
    .line 50
    :goto_0
    if-ge v8, v15, :cond_5

    .line 51
    .line 52
    aget-object v17, v14, v8

    .line 53
    .line 54
    new-instance v7, Lcom/android/server/people/data/PackageData;

    .line 55
    .line 56
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move-object v2, v7

    .line 61
    move v4, v1

    .line 62
    move-object v5, v9

    .line 63
    move-object v6, v10

    .line 64
    move/from16 v18, v1

    .line 65
    .line 66
    move-object v1, v7

    .line 67
    move-object v7, v11

    .line 68
    move/from16 v19, v8

    .line 69
    .line 70
    move-object v8, v12

    .line 71
    invoke-direct/range {v2 .. v8}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    const-string v4, "conversations"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/util/List;

    .line 90
    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/android/server/people/data/ConversationInfo;

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :goto_2
    iget-object v2, v1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 115
    .line 116
    monitor-enter v2

    .line 117
    move/from16 v3, v16

    .line 118
    .line 119
    :goto_3
    :try_start_0
    iget-object v4, v2, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 120
    .line 121
    check-cast v4, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-ge v3, v4, :cond_4

    .line 128
    .line 129
    iget-object v4, v2, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 130
    .line 131
    check-cast v4, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Ljava/io/File;

    .line 138
    .line 139
    iget-object v5, v2, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 140
    .line 141
    new-instance v6, Lcom/android/server/people/data/EventHistoryImpl$Injector;

    .line 142
    .line 143
    invoke-direct {v6}, Lcom/android/server/people/data/EventHistoryImpl$Injector;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-static {v6, v4, v5}, Lcom/android/server/people/data/EventHistoryImpl;->eventHistoriesImplFromDisk(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget-object v5, v2, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    .line 151
    .line 152
    check-cast v5, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Ljava/util/Map;

    .line 159
    .line 160
    invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    goto :goto_4

    .line 168
    :cond_4
    monitor-exit v2

    .line 169
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v13, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    add-int/lit8 v8, v19, 0x1

    .line 177
    .line 178
    move/from16 v1, v18

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :goto_4
    monitor-exit v2

    .line 183
    throw v0

    .line 184
    :cond_5
    :goto_5
    iget-object v0, v0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 185
    .line 186
    check-cast v0, Landroid/util/ArrayMap;

    .line 187
    .line 188
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method
