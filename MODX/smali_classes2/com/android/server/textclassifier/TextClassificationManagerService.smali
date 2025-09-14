.class public final Lcom/android/server/textclassifier/TextClassificationManagerService;
.super Landroid/service/textclassifier/ITextClassifierService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public final mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

.field public final mSettings:Landroid/view/textclassifier/TextClassificationConstants;

.field public final mSettingsListener:Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

.field public final mSystemTextClassifierPackage:Ljava/lang/String;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v1, Landroid/view/textclassifier/TextClassificationConstants;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/view/textclassifier/TextClassificationConstants;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettingsListener:Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultTextClassifierPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    .line 52
    .line 53
    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;-><init>(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "TextClassificationManagerService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    const-string p3, "  "

    .line 15
    .line 16
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-direct {p2, p3, p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 26
    .line 27
    .line 28
    const-string p2, "context"

    .line 29
    .line 30
    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 36
    .line 37
    .line 38
    const-string p2, "defaultTextClassifierPackage"

    .line 39
    .line 40
    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 46
    .line 47
    .line 48
    const-string/jumbo p2, "systemTextClassifierPackage"

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter p2

    .line 62
    :try_start_0
    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    const-string v0, "Number user states: "

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 74
    .line 75
    .line 76
    if-lez p3, :cond_1

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    :goto_0
    if-ge v0, p3, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 91
    .line 92
    const-string v2, "User"

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 114
    .line 115
    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v0, "Number of active sessions: "

    .line 127
    .line 128
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :try_start_2
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    return-void

    .line 155
    :catchall_1
    move-exception p0

    .line 156
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    :try_start_4
    throw p0

    .line 158
    :goto_1
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    throw p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p4

    .line 3
    .line 4
    move-object/from16 v2, p5

    .line 5
    .line 6
    const-string v3, "Unable to bind TextClassifierService at "

    .line 7
    .line 8
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getUserId()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    :goto_1
    const/4 v6, 0x1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    move v7, v6

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->useDefaultTextClassifier()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    :goto_2
    const/4 v8, 0x0

    .line 40
    if-eqz p2, :cond_5

    .line 41
    .line 42
    if-eqz v5, :cond_5

    .line 43
    .line 44
    :try_start_0
    iget-object v9, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eq v10, v9, :cond_4

    .line 63
    .line 64
    const/16 v9, 0x3e8

    .line 65
    .line 66
    if-ne v10, v9, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move v9, v8

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    :goto_3
    move v9, v6

    .line 72
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v12, "Invalid package name. callingPackage="

    .line 75
    .line 76
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v5, ", callingUid="

    .line 83
    .line 84
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v9, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_5

    .line 98
    :catch_0
    move-exception v0

    .line 99
    goto/16 :goto_9

    .line 100
    .line 101
    :cond_5
    :goto_5
    const/16 v5, -0x2710

    .line 102
    .line 103
    if-eq v4, v5, :cond_6

    .line 104
    .line 105
    move v8, v6

    .line 106
    :cond_6
    const-string v5, "Null userId"

    .line 107
    .line 108
    invoke-static {v8, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eq v5, v4, :cond_7

    .line 116
    .line 117
    iget-object v8, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v10, "Invalid userId. UserId="

    .line 122
    .line 123
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v10, ", CallingUserId="

    .line 130
    .line 131
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const-string v9, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 142
    .line 143
    invoke-virtual {v8, v9, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    :cond_7
    iget-object v9, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 147
    .line 148
    monitor-enter v9

    .line 149
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4, v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getServiceStateLocked(Z)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    if-nez v7, :cond_8

    .line 158
    .line 159
    const-string v0, "TextClassificationManagerService"

    .line 160
    .line 161
    const-string v1, "No configured system TextClassifierService"

    .line 162
    .line 163
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :catchall_0
    move-exception v0

    .line 172
    goto/16 :goto_8

    .line 173
    .line 174
    :cond_8
    iget-boolean v4, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 175
    .line 176
    if-eqz v4, :cond_9

    .line 177
    .line 178
    iget-boolean v4, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    .line 179
    .line 180
    if-nez v4, :cond_a

    .line 181
    .line 182
    :cond_9
    move-object/from16 v1, p6

    .line 183
    .line 184
    goto/16 :goto_6

    .line 185
    .line 186
    :cond_a
    if-eqz p3, :cond_b

    .line 187
    .line 188
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindLocked()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_b

    .line 193
    .line 194
    const-string v0, "TextClassificationManagerService"

    .line 195
    .line 196
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_b
    iget-object v3, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    .line 208
    .line 209
    if-eqz v3, :cond_d

    .line 210
    .line 211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    invoke-virtual {v7, v0, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_c

    .line 220
    .line 221
    const-string v0, "TextClassificationManagerService"

    .line 222
    .line 223
    const-string v1, "UID %d is not allowed to see the %s request"

    .line 224
    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    .line 245
    .line 246
    .line 247
    monitor-exit v9

    .line 248
    return-void

    .line 249
    :cond_c
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    .line 251
    :try_start_2
    invoke-interface {v1, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    .line 253
    .line 254
    goto :goto_7

    .line 255
    :catch_1
    move-exception v0

    .line 256
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v2, "Exception when consume textClassifierService: "

    .line 259
    .line 260
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v1, "TextClassificationManagerService"

    .line 271
    .line 272
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_d
    iget-object v10, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    .line 277
    .line 278
    new-instance v11, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 279
    .line 280
    new-instance v3, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;

    .line 281
    .line 282
    const/4 v4, 0x1

    .line 283
    invoke-direct {v3, v4, v1, v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    new-instance v4, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;

    .line 287
    .line 288
    move-object/from16 v1, p6

    .line 289
    .line 290
    invoke-direct {v4, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 291
    .line 292
    .line 293
    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->asBinder()Landroid/os/IBinder;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    move-object v1, v11

    .line 302
    move-object/from16 v2, p5

    .line 303
    .line 304
    move-object v6, p0

    .line 305
    invoke-direct/range {v1 .. v8}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Ljava/lang/String;Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v10, v11}, Lcom/android/server/textclassifier/FixedSizeQueue;->add(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V

    .line 309
    .line 310
    .line 311
    goto :goto_7

    .line 312
    :goto_6
    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    .line 313
    .line 314
    .line 315
    :goto_7
    monitor-exit v9

    .line 316
    return-void

    .line 317
    :goto_8
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    throw v0

    .line 319
    :goto_9
    new-instance v1, Landroid/os/RemoteException;

    .line 320
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v3, "Invalid request: "

    .line 324
    .line 325
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-direct {v1, v2, v0, v6, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 340
    .line 341
    .line 342
    throw v1
.end method

.method public final onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v6, "onClassifyText"

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x1

    .line 25
    move-object v1, p0

    .line 26
    move-object v7, p3

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onConnectedStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 9

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 18
    .line 19
    invoke-virtual {v1, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->put(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v6, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-direct {v6, p1, p2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassificationSessionId;I)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v7, "onCreateTextClassificationSession"

    .line 34
    .line 35
    .line 36
    sget-object v8, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v2, p0

    .line 41
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method public final onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 10

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v3, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    .line 29
    .line 30
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    :try_start_2
    iget v2, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->userId:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_0
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-boolean v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->useDefaultTextClassifier:Z

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 52
    :goto_2
    new-instance v4, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 53
    .line 54
    const-string v3, ""

    .line 55
    .line 56
    invoke-direct {v4, v3, v2, v1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;-><init>(Ljava/lang/String;IZ)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    invoke-direct {v7, p0, p1, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassificationSessionId;I)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v8, "onDestroyTextClassificationSession"

    .line 66
    .line 67
    .line 68
    sget-object v9, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v3, p0

    .line 73
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    return-void

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    :try_start_4
    throw p0

    .line 81
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    throw p0
.end method

.method public final onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLanguage$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLanguage$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v6, "onDetectLanguage"

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x1

    .line 25
    move-object v1, p0

    .line 26
    move-object v7, p3

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v6, "onGenerateLinks"

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x1

    .line 25
    move-object v1, p0

    .line 26
    move-object v7, p3

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;

    .line 16
    .line 17
    invoke-direct {v5, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    .line 18
    .line 19
    .line 20
    sget-object v7, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    const-string/jumbo v6, "onSelectionEvent"

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    move-object v1, p0

    .line 28
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/textclassifier/ConversationActions$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/textclassifier/ConversationActions$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v6, "onSuggestConversationActions"

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x1

    .line 25
    move-object v1, p0

    .line 26
    move-object v7, p3

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v6, "onSuggestSelection"

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x1

    .line 25
    move-object v1, p0

    .line 26
    move-object v7, p3

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    move-object v2, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    invoke-direct {v5, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 21
    .line 22
    .line 23
    sget-object v7, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    const-string/jumbo v6, "onTextClassifierEvent"

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    move-object v1, p0

    .line 31
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
