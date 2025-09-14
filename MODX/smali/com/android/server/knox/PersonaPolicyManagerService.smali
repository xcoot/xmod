.class public final Lcom/android/server/knox/PersonaPolicyManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static volatile mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

.field public static sContext:Landroid/content/Context;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPersonaData:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Lcom/android/server/knox/PersonaPolicyManagerService$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/knox/PersonaPolicyManagerService$1;-><init>(Lcom/android/server/knox/PersonaPolicyManagerService;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    .line 18
    sput-object p1, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v1, "false"

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string/jumbo v1, "true"

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 16
    return-object v1

    .line 17
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo p1, "configuration value set by MDM : "

    .line 30
    const-string p2, "PersonaPolicyManagerService"

    .line 32
    invoke-static {p1, p0, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-eqz p0, :cond_2

    .line 37
    return-object p0

    .line 38
    :cond_2
    return-object v1
.end method

.method public static loadSettingsLocked(Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;I)V
    .locals 11

    .line 1
    const-string v0, " "

    .line 3
    const-string/jumbo v1, "failed parsing "

    .line 6
    const-string v2, "PersonaPolicyManagerService"

    .line 8
    invoke-static {p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    .line 15
    move-result-object p1

    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 19
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    .line 22
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 25
    move-result-object v5

    .line 26
    const-string v6, "UTF-8"

    .line 28
    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x2

    .line 36
    const/4 v8, 0x1

    .line 37
    if-eq v6, v8, :cond_0

    .line 39
    if-eq v6, v7, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 45
    move-result-object v6

    .line 46
    const-string/jumbo v9, "policies"

    .line 49
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_7

    .line 55
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 58
    move-result v6

    .line 59
    if-eq v6, v8, :cond_8

    .line 61
    if-eq v6, v7, :cond_1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    const-string/jumbo v9, "property"

    .line 71
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-string/jumbo v9, "managed-applications"

    .line 81
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_3

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const-string/jumbo v9, "secure-folder"

    .line 91
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_4

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const-string/jumbo v9, "name"

    .line 101
    invoke-interface {v5, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v9

    .line 105
    if-eqz v9, :cond_6

    .line 107
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 110
    move-result v10

    .line 111
    if-nez v10, :cond_6

    .line 113
    iget-object v10, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 115
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-result-object v10

    .line 119
    if-eqz v10, :cond_5

    .line 121
    iget-object v10, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 123
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Ljava/util/List;

    .line 129
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move-exception p0

    .line 134
    move-object v3, v4

    .line 135
    goto :goto_2

    .line 136
    :catch_1
    move-exception p0

    .line 137
    move-object v3, v4

    .line 138
    goto/16 :goto_4

    .line 140
    :catch_2
    move-object v3, v4

    .line 141
    goto/16 :goto_3

    .line 143
    :catch_3
    move-exception p0

    .line 144
    move-object v3, v4

    .line 145
    goto/16 :goto_5

    .line 147
    :catch_4
    move-exception p0

    .line 148
    move-object v3, v4

    .line 149
    goto/16 :goto_6

    .line 151
    :catch_5
    move-exception p0

    .line 152
    move-object v3, v4

    .line 153
    goto/16 :goto_7

    .line 155
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    .line 157
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v9, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 165
    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    goto :goto_1

    .line 169
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    const-string v10, "Unknown tag: "

    .line 176
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v6

    .line 186
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 192
    goto/16 :goto_1

    .line 194
    :cond_7
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const-string v5, "Settings do not start with policies tag: found "

    .line 203
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v3

    .line 213
    invoke-direct {p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 216
    throw p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :catch_6
    move-exception p0

    .line 218
    goto :goto_2

    .line 219
    :catch_7
    move-exception p0

    .line 220
    goto :goto_4

    .line 221
    :catch_8
    move-exception p0

    .line 222
    goto :goto_5

    .line 223
    :catch_9
    move-exception p0

    .line 224
    goto :goto_6

    .line 225
    :catch_a
    move-exception p0

    .line 226
    goto :goto_7

    .line 227
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object p0

    .line 245
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :catch_b
    :goto_3
    move-object v4, v3

    .line 249
    goto :goto_8

    .line 250
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p0

    .line 268
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    goto :goto_3

    .line 272
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 274
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object p0

    .line 290
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    goto :goto_3

    .line 294
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object p0

    .line 312
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    goto :goto_3

    .line 316
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object p0

    .line 334
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    goto :goto_3

    .line 338
    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    .line 340
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 343
    :catch_c
    :cond_9
    return-void
.end method

.method public static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v1, "persona_policies.xml"

    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Lcom/android/internal/util/JournaledFile;

    .line 19
    new-instance v1, Ljava/io/File;

    .line 21
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v2, Ljava/io/File;

    .line 26
    const-string v3, ".tmp"

    .line 28
    invoke-static {p0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public final getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 20
    iput-object v1, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mPersonalModeLabel:Ljava/lang/String;

    .line 22
    iput-object v1, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mCustomPersonaName:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 26
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    iput-object v1, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 31
    iget-object v1, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    invoke-static {v0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->loadSettingsLocked(Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;I)V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method

.method public final saveSettingsLocked(I)V
    .locals 11

    .line 1
    const-string/jumbo v0, "secure-folder"

    .line 4
    const-string/jumbo v1, "managed-applications"

    .line 7
    const-string/jumbo v2, "policies"

    .line 10
    const-string v3, "UTF-8"

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    .line 19
    move-result-object p1

    .line 20
    const/4 v4, 0x0

    .line 21
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    .line 23
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    .line 26
    move-result-object v6

    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    .line 33
    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 36
    invoke-virtual {v6, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 39
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v6, v3, v7}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    invoke-virtual {v6, v4, v2}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    iget-object v3, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 49
    if-eqz v3, :cond_2

    .line 51
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 57
    invoke-virtual {v6, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    invoke-virtual {v6, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget-object v3, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 65
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v3

    .line 73
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_1

    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Ljava/lang/String;

    .line 85
    iget-object v8, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 87
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Ljava/util/List;

    .line 93
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v8

    .line 97
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_0

    .line 103
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Ljava/lang/String;

    .line 109
    invoke-virtual {v6, v4, v7}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string/jumbo v10, "name"

    .line 115
    invoke-virtual {v6, v4, v10, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-virtual {v6, v4, v7}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    move-object v4, v5

    .line 124
    goto :goto_3

    .line 125
    :catch_0
    move-object v4, v5

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v6, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    invoke-virtual {v6, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    :cond_2
    invoke-virtual {v6, v4, v2}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-virtual {v6}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 139
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    goto :goto_2

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    goto :goto_3

    .line 148
    :catch_1
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    if-eqz v4, :cond_3

    .line 153
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 156
    :catch_2
    :cond_3
    :goto_2
    return-void

    .line 157
    :goto_3
    if-eqz v4, :cond_4

    .line 159
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :catch_3
    :cond_4
    throw p0
.end method
