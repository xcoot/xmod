.class final Lcom/android/server/people/PeopleService$LocalService;
.super Lcom/android/server/people/PeopleServiceInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mSessions:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method public constructor <init>(Lcom/android/server/people/PeopleService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/appprediction/IPredictionService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getBackupPayload(I)[B
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/io/DataOutputStream;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 26
    .line 27
    check-cast p0, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string v3, "UserData"

    .line 42
    .line 43
    const/4 v4, -0x1

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/people/data/PackageData;

    .line 51
    .line 52
    :try_start_0
    iget-object v5, v2, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v7, Ljava/io/DataOutputStream;

    .line 63
    .line 64
    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .line 66
    .line 67
    new-instance v8, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    invoke-direct {v8, v7}, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;-><init>(Ljava/io/DataOutputStream;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v8}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception v4

    .line 84
    const-string v5, "ConversationStore"

    .line 85
    .line 86
    const-string v6, "Failed to write conversation infos end token to backup payload."

    .line 87
    .line 88
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    move-object v4, p1

    .line 92
    :goto_1
    array-length v5, v4

    .line 93
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_1
    move-exception p0

    .line 106
    const-string v0, "Failed to write conversations to backup payload."

    .line 107
    .line 108
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_1
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_2

    .line 120
    :catch_2
    move-exception p0

    .line 121
    const-string v0, "Failed to write conversations end token to backup payload."

    .line 122
    .line 123
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    :goto_2
    return-object p1
.end method

.method public getSessionInfo(Landroid/app/prediction/AppPredictionSessionId;)Lcom/android/server/people/SessionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/people/SessionInfo;

    .line 10
    .line 11
    return-object p0
.end method

.method public final notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;-><init>(Landroid/app/prediction/AppTargetEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/people/SessionInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionSessionId;->getUserId()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/server/people/SessionInfo;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/PeopleService$LocalService;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 26
    .line 27
    new-instance v3, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;

    .line 28
    .line 29
    invoke-direct {v3, v1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;-><init>(Ljava/util/Set;)V

    .line 30
    .line 31
    .line 32
    iget v4, v0, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 33
    .line 34
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(ILjava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;

    .line 72
    .line 73
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    return-void
.end method

.method public final registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p2, v1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/IPredictionCallback;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final requestServiceFeatures(Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final restore(I[B)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    new-instance p1, Ljava/io/DataInputStream;

    .line 15
    .line 16
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    :goto_0
    const/4 v0, -0x1

    .line 29
    if-eq p2, v0, :cond_3

    .line 30
    .line 31
    new-array v1, p2, [B

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1, v1, v2, p2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object v3, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v4, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {v4, p0, p2}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, p2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lcom/android/server/people/data/PackageData;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v3, Ljava/io/DataInputStream;

    .line 60
    .line 61
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 62
    .line 63
    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_1
    if-eq v1, v0, :cond_2

    .line 74
    .line 75
    new-array v4, v1, [B

    .line 76
    .line 77
    invoke-virtual {v3, v4, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 78
    .line 79
    .line 80
    invoke-static {v4}, Lcom/android/server/people/data/ConversationInfo;->readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p2, v1}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception p2

    .line 98
    :try_start_2
    const-string v0, "ConversationStore"

    .line 99
    .line 100
    const-string v1, "Failed to read conversation info from payload."

    .line 101
    .line 102
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    goto :goto_0

    .line 110
    :catch_1
    move-exception p0

    .line 111
    const-string p1, "UserData"

    .line 112
    .line 113
    const-string p2, "Failed to restore conversations from backup payload."

    .line 114
    .line 115
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_2
    return-void
.end method

.method public final runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/people/SessionInfo;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "Failed to find the session: "

    .line 16
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "PeopleService"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p2, v1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/IPredictionCallback;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
