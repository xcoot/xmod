.class public Lcom/att/iqi/libs/PreferenceStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final IQI_PREF_FILE:Ljava/lang/String; = "att_prefs.xml"

.field public static final PREF_BRIDGE_LIBRARY_PATH:Ljava/lang/String; = "bridge_path"

.field public static final PREF_DISABLE_MCC_MNC_VALIDATION:Ljava/lang/String; = "disable_mcc_mnc_validation"

.field public static final PREF_LOGS_ENABLED:Ljava/lang/String; = "log_enabled"

.field public static final PREF_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field public static final SERVICE_STATE_OFF:I = 0x0

.field public static final SERVICE_STATE_ON:I = 0x1

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/att/iqi/libs/PreferenceStore;

.field private static final sPreferences:Ljava/util/Map;


# instance fields
.field private final mPreferenceChangeListeners:Ljava/util/List;

.field private final mPreferenceFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$7U5R21GqGWWpvmbnz-E82HWb64g(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setString$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$9bCT-eyTtSVDy9lg4YAsns_wav0(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/att/iqi/libs/PreferenceStore;->lambda$iterable$4(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$MAo0EmtvXoxTtgWq7hvlScebVqU(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setBoolean$0(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$NJFCB3HkcFTxbb3a7-OfJhD3HGU(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setInteger$1(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$n9HppiQQ15P9dhS4EjhC_sEI53M(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/att/iqi/libs/PreferenceStore;->lambda$broadcastPreferenceChange$3(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    const-string v2, "disable_mcc_mnc_validation"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v2, "log_enabled"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string/jumbo v2, "service_state"

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v1, "bridge_path"

    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string/jumbo v3, "system"

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "att_prefs.xml"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->loadPrefsFromFileLocked()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private broadcastPreferenceChange(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

    .line 18
    .line 19
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    invoke-direct {v2, v0, p1}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda1;-><init>(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method private createPrefStoreLocked()Z
    .locals 13

    .line 1
    const-string/jumbo v0, "string"

    .line 2
    .line 3
    .line 4
    const-string v1, "int"

    .line 5
    .line 6
    const-string v2, "false"

    .line 7
    .line 8
    const-string/jumbo v3, "map"

    .line 9
    .line 10
    .line 11
    const-string v4, "Error occurred while closing output stream"

    .line 12
    .line 13
    const-string/jumbo v5, "value"

    .line 14
    .line 15
    .line 16
    const-string v6, "boolean"

    .line 17
    .line 18
    const-string/jumbo v7, "name"

    .line 19
    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    :try_start_0
    iget-object v9, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    if-nez v9, :cond_0

    .line 29
    .line 30
    const-string p0, "Failed to create prefs file!"

    .line 31
    .line 32
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v8

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_0
    new-instance v9, Ljava/io/FileOutputStream;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    .line 42
    .line 43
    invoke-direct {v9, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v10, "UTF-8"

    .line 51
    .line 52
    invoke-interface {p0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    invoke-interface {p0, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 59
    .line 60
    .line 61
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 62
    .line 63
    const/4 v12, 0x1

    .line 64
    invoke-interface {p0, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v10, "prefs"

    .line 71
    .line 72
    .line 73
    invoke-interface {p0, v11, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    .line 78
    .line 79
    const-string v10, "disable_mcc_mnc_validation"

    .line 80
    .line 81
    invoke-interface {p0, v11, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, v11, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .line 86
    .line 87
    invoke-interface {p0, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    invoke-interface {p0, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    const-string v10, "log_enabled"

    .line 94
    .line 95
    invoke-interface {p0, v11, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v11, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    invoke-interface {p0, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    .line 106
    .line 107
    const-string/jumbo v2, "service_state"

    .line 108
    .line 109
    .line 110
    invoke-interface {p0, v11, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    .line 112
    .line 113
    const-string v2, "1"

    .line 114
    .line 115
    invoke-interface {p0, v11, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    .line 117
    .line 118
    invoke-interface {p0, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    .line 120
    .line 121
    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .line 123
    .line 124
    const-string v1, "bridge_path"

    .line 125
    .line 126
    invoke-interface {p0, v11, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    .line 128
    .line 129
    const-string v1, ""

    .line 130
    .line 131
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    .line 133
    .line 134
    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    .line 136
    .line 137
    invoke-interface {p0, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    .line 139
    .line 140
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 141
    .line 142
    .line 143
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catch_1
    move-exception p0

    .line 151
    invoke-static {v4, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_0
    return v12

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    :try_start_3
    const-string v0, "Exception thrown while creating pref file"

    .line 157
    .line 158
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    .line 160
    .line 161
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catch_2
    move-exception p0

    .line 166
    invoke-static {v4, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    return v8

    .line 170
    :catchall_1
    move-exception p0

    .line 171
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :catch_3
    move-exception v0

    .line 176
    invoke-static {v4, v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    throw p0

    .line 180
    :goto_3
    const-string v0, "Unable to open stream to write prefs"

    .line 181
    .line 182
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    return v8
.end method

.method public static getInstance()Lcom/att/iqi/libs/PreferenceStore;
    .locals 2

    .line 1
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/att/iqi/libs/PreferenceStore;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/att/iqi/libs/PreferenceStore;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method private static iterable(Lorg/w3c/dom/NodeList;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    new-instance v0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;-><init>(Lorg/w3c/dom/NodeList;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$broadcastPreferenceChange$3(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;->onPreferenceChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$iterable$4(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;-><init>(Lorg/w3c/dom/NodeList;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private synthetic lambda$setBoolean$0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$setInteger$1(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$setString$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadPrefsFromFileLocked()V
    .locals 14

    .line 1
    const-string v0, "Error while closing input stream"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->createPrefStoreLocked()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string p0, "Unable to load prefs from file, using defaults from memory"

    .line 18
    .line 19
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 43
    .line 44
    .line 45
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    move-object v4, v2

    .line 47
    move-object v5, v4

    .line 48
    :goto_0
    const/4 v6, 0x1

    .line 49
    if-eq v3, v6, :cond_d

    .line 50
    .line 51
    const-string/jumbo v7, "name"

    .line 52
    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    const-string v9, "bridge_path"

    .line 56
    .line 57
    const/4 v10, 0x3

    .line 58
    const/4 v11, 0x2

    .line 59
    if-eq v3, v11, :cond_5

    .line 60
    .line 61
    if-eq v3, v10, :cond_2

    .line 62
    .line 63
    const/4 v7, 0x4

    .line 64
    if-eq v3, v7, :cond_1

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_1
    :try_start_2
    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ne v3, v6, :cond_6

    .line 83
    .line 84
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/16 v7, 0xa

    .line 89
    .line 90
    if-ne v3, v7, :cond_6

    .line 91
    .line 92
    const-string v5, ""

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :catch_0
    move-exception p0

    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    invoke-interface {p0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const-string v7, "int"

    .line 112
    .line 113
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_4

    .line 118
    .line 119
    const-string v7, "boolean"

    .line 120
    .line 121
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v6, "Found unknown type in prefs, ignoring "

    .line 134
    .line 135
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v3}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    goto :goto_0

    .line 153
    :cond_4
    :goto_1
    const-string/jumbo v3, "value"

    .line 154
    .line 155
    .line 156
    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    goto :goto_2

    .line 161
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const-string/jumbo v12, "string"

    .line 166
    .line 167
    .line 168
    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_6

    .line 173
    .line 174
    invoke-interface {p0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_6
    :goto_2
    if-eqz v4, :cond_c

    .line 185
    .line 186
    if-eqz v5, :cond_c

    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    const-string v7, "log_enabled"

    .line 193
    .line 194
    const-string/jumbo v12, "service_state"

    .line 195
    .line 196
    .line 197
    const-string v13, "disable_mcc_mnc_validation"

    .line 198
    .line 199
    sparse-switch v3, :sswitch_data_0

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :sswitch_0
    :try_start_3
    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_7

    .line 208
    .line 209
    move v8, v10

    .line 210
    goto :goto_4

    .line 211
    :sswitch_1
    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_7

    .line 216
    .line 217
    move v8, v6

    .line 218
    goto :goto_4

    .line 219
    :sswitch_2
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_7

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :sswitch_3
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_7

    .line 231
    .line 232
    move v8, v11

    .line 233
    goto :goto_4

    .line 234
    :cond_7
    :goto_3
    const/4 v8, -0x1

    .line 235
    :goto_4
    if-eqz v8, :cond_b

    .line 236
    .line 237
    if-eq v8, v6, :cond_a

    .line 238
    .line 239
    if-eq v8, v11, :cond_9

    .line 240
    .line 241
    if-eq v8, v10, :cond_8

    .line 242
    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v5, "Found invalid preference, ignoring "

    .line 249
    .line 250
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-static {v3}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_8
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 265
    .line 266
    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_9
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 271
    .line 272
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_a
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 285
    .line 286
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_b
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 299
    .line 300
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    :goto_5
    move-object v4, v2

    .line 312
    move-object v5, v4

    .line 313
    :cond_c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 314
    .line 315
    .line 316
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_d
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 320
    .line 321
    .line 322
    goto :goto_7

    .line 323
    :catch_1
    move-exception p0

    .line 324
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :goto_6
    :try_start_5
    const-string v2, "Failed to load prefs values"

    .line 329
    .line 330
    invoke-static {v2, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 331
    .line 332
    .line 333
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 334
    .line 335
    .line 336
    :goto_7
    return-void

    .line 337
    :goto_8
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 338
    .line 339
    .line 340
    goto :goto_9

    .line 341
    :catch_2
    move-exception v1

    .line 342
    invoke-static {v0, v1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    .line 344
    .line 345
    :goto_9
    throw p0

    .line 346
    :catch_3
    move-exception p0

    .line 347
    const-string v0, "Unable to open stream to load prefs"

    .line 348
    .line 349
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    .line 351
    .line 352
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f84aeba -> :sswitch_3
        -0x66b9ad79 -> :sswitch_2
        0x1e56bd9f -> :sswitch_1
        0x26b2471b -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePreference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "Tried to write an unsupported preference type "

    .line 2
    .line 3
    const-string v1, "Unable to persist preference "

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    instance-of v3, p2, Ljava/lang/Boolean;

    .line 9
    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    const-string v0, "boolean"

    .line 13
    .line 14
    move-object v3, p2

    .line 15
    check-cast v3, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string/jumbo v3, "true"

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    const-string v3, "false"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of v3, p2, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    const-string v0, "int"

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    instance-of v3, p2, Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v3, :cond_7

    .line 47
    .line 48
    const-string/jumbo v0, "string"

    .line 49
    .line 50
    .line 51
    move-object v3, p2

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    :goto_0
    iget-object v4, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->createPrefStoreLocked()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_3

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " in storage!"

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/att/iqi/libs/PreferenceStore;->broadcastPreferenceChange(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    monitor-exit v2

    .line 92
    return-void

    .line 93
    :cond_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v4, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/att/iqi/libs/PreferenceStore;->iterable(Lorg/w3c/dom/NodeList;)Ljava/lang/Iterable;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lorg/w3c/dom/Node;

    .line 130
    .line 131
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const-string/jumbo v6, "name"

    .line 136
    .line 137
    .line 138
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_4

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v5, "Found pref "

    .line 158
    .line 159
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-string/jumbo v5, "value"

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-eqz v0, :cond_5

    .line 184
    .line 185
    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_5
    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :goto_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    .line 201
    .line 202
    iget-object v4, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    .line 203
    .line 204
    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 205
    .line 206
    .line 207
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    .line 208
    .line 209
    invoke-direct {v4, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v4, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 213
    .line 214
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v1, "Pref file updated ["

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, "] ==> "

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-direct {p0, p1}, Lcom/att/iqi/libs/PreferenceStore;->broadcastPreferenceChange(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string p2, "Preference "

    .line 253
    .line 254
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string p1, " was not found!"

    .line 261
    .line 262
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :goto_2
    monitor-exit v2

    .line 273
    goto :goto_4

    .line 274
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    monitor-exit v2

    .line 294
    return-void

    .line 295
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    :catchall_1
    move-exception p0

    .line 298
    const-string p1, "An exception was thrown while trying to update preference"

    .line 299
    .line 300
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    :goto_4
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    return p2

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1

    .line 1
    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    return p2

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p2, p1

    .line 16
    :goto_0
    monitor-exit p0

    .line 17
    return-object p2

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public registerPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, p1, v2}, Lcom/att/iqi/libs/PreferenceStore;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq p2, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public setInteger(Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-virtual {p0, p1, v2}, Lcom/att/iqi/libs/PreferenceStore;->getInteger(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq p2, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, p1, v2}, Lcom/att/iqi/libs/PreferenceStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda4;

    .line 31
    .line 32
    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda4;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public unregisterPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
