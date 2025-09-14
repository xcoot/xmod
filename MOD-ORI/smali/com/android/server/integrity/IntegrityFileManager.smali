.class public final Lcom/android/server/integrity/IntegrityFileManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final RULES_LOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/integrity/IntegrityFileManager;


# instance fields
.field public final mDataDir:Ljava/io/File;

.field public mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

.field public mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

.field public final mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

.field public final mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

.field public final mRulesDir:Ljava/io/File;

.field public final mStagingDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    .line 9
    .line 10
    new-instance p1, Ljava/io/File;

    .line 11
    .line 12
    const-string/jumbo p2, "integrity_rules"

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 19
    .line 20
    new-instance p2, Ljava/io/File;

    .line 21
    .line 22
    const-string/jumbo v0, "integrity_staging"

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const-string p3, "IntegrityFileManager"

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    :cond_0
    const-string p2, "Error creating staging and rules directory"

    .line 45
    .line 46
    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    new-instance p2, Ljava/io/File;

    .line 50
    .line 51
    const-string/jumbo v0, "metadata"

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v0, ""

    .line 73
    .line 74
    move-object v1, v0

    .line 75
    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x1

    .line 80
    if-eq v2, v3, :cond_5

    .line 81
    .line 82
    const/4 v3, 0x2

    .line 83
    if-ne v2, v3, :cond_2

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    const-string v3, "P"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_4

    .line 99
    .line 100
    const-string v1, "V"

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    :try_start_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v0, "Unknown tag in metadata: "

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :cond_4
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    new-instance p2, Lcom/android/server/integrity/model/RuleMetadata;

    .line 131
    .line 132
    invoke-direct {p2, v0, v1}, Lcom/android/server/integrity/model/RuleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_0
    move-exception p1

    .line 142
    goto :goto_2

    .line 143
    :catchall_0
    move-exception p2

    .line 144
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catchall_1
    move-exception p1

    .line 149
    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 153
    :goto_2
    const-string p2, "Error reading metadata file."

    .line 154
    .line 155
    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/integrity/IntegrityFileManager;
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/integrity/IntegrityFileManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/integrity/IntegrityFileManager;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/integrity/parser/RuleBinaryParser;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/android/server/integrity/serializer/RuleBinarySerializer;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/integrity/IntegrityFileManager;-><init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :goto_1
    monitor-exit v0

    .line 37
    throw v1
.end method


# virtual methods
.method public final readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/server/integrity/parser/RuleIndexingController;->identifyRulesToEvaluate(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_3

    .line 22
    :catch_0
    move-exception p1

    .line 23
    :try_start_2
    const-string v2, "IntegrityFileManager"

    .line 24
    .line 25
    const-string v3, "Error identifying the rule indexes. Trying unindexed."

    .line 26
    .line 27
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    new-instance p1, Ljava/io/File;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 33
    .line 34
    const-string/jumbo v3, "rules"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    .line 41
    .line 42
    new-instance v2, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    .line 43
    .line 44
    invoke-direct {v2, p1}, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;-><init>(Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    check-cast p0, Lcom/android/server/integrity/parser/RuleBinaryParser;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_3
    new-instance p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;

    .line 53
    .line 54
    invoke-direct {p0, v2}, Lcom/android/server/integrity/parser/RandomAccessInputStream;-><init>(Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_4
    invoke-static {p0, v1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 65
    return-object p1

    .line 66
    :catch_1
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_2
    move-exception p0

    .line 74
    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 78
    :goto_2
    :try_start_9
    new-instance p1, Lcom/android/server/integrity/parser/RuleParseException;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {p1, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :goto_3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 89
    throw p0
.end method

.method public final updateRuleIndexingController()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 4
    .line 5
    const-string/jumbo v2, "indexing"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    new-instance v0, Lcom/android/server/integrity/parser/RuleIndexingController;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/android/server/integrity/model/BitInputStream;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sput-object v3, Lcom/android/server/integrity/parser/RuleIndexingController;->sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    sput-object v3, Lcom/android/server/integrity/parser/RuleIndexingController;->sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sput-object v2, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 68
    :goto_1
    const-string v0, "IntegrityFileManager"

    .line 69
    .line 70
    const-string v1, "Error parsing the rule indexing file."

    .line 71
    .line 72
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_2
    return-void
.end method

.method public final writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/integrity/model/RuleMetadata;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lcom/android/server/integrity/model/RuleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    .line 7
    .line 8
    new-instance p2, Ljava/io/File;

    .line 9
    .line 10
    const-string/jumbo p3, "metadata"

    .line 11
    .line 12
    .line 13
    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/io/FileOutputStream;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object p3, p0, Lcom/android/server/integrity/model/RuleMetadata;->mRuleProvider:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "P"

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    .line 40
    .line 41
    const-string p3, "V"

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mVersion:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    throw p0
.end method

.method public final writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/integrity/IntegrityFileManager;->writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string p2, "IntegrityFileManager"

    .line 9
    .line 10
    const-string v0, "Error writing metadata."

    .line 11
    .line 12
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    new-instance p2, Ljava/io/File;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 20
    .line 21
    const-string/jumbo v1, "rules"

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    .line 31
    .line 32
    new-instance v0, Ljava/io/File;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 35
    .line 36
    const-string/jumbo v2, "indexing"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_2
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    .line 46
    .line 47
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v0, Lcom/android/server/integrity/serializer/RuleBinarySerializer;

    .line 52
    .line 53
    invoke-virtual {v0, p3, v1, p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    .line 55
    .line 56
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 60
    .line 61
    .line 62
    sget-object p2, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p2

    .line 65
    :try_start_4
    new-instance p1, Ljava/io/File;

    .line 66
    .line 67
    iget-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    .line 68
    .line 69
    const-string/jumbo v0, "temp"

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 76
    .line 77
    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_1

    .line 82
    .line 83
    iget-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 86
    .line 87
    invoke-virtual {p3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_1

    .line 92
    .line 93
    iget-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    array-length p3, p1

    .line 108
    const/4 v0, 0x0

    .line 109
    :goto_1
    if-ge v0, p3, :cond_0

    .line 110
    .line 111
    aget-object v1, p1, v0

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 114
    .line 115
    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_2

    .line 121
    :cond_0
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_1
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    .line 127
    .line 128
    const-string p1, "Error switching staging/rules directory"

    .line 129
    .line 130
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :goto_2
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    throw p0

    .line 136
    :catchall_1
    move-exception p0

    .line 137
    goto :goto_4

    .line 138
    :catchall_2
    move-exception p0

    .line 139
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :catchall_3
    move-exception p2

    .line 144
    :try_start_7
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :goto_3
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 148
    :goto_4
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :catchall_4
    move-exception p1

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    :goto_5
    throw p0
.end method
