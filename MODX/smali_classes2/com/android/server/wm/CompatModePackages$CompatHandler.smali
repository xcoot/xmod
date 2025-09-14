.class public final Lcom/android/server/wm/CompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CompatModePackages;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/wm/CompatModePackages;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x12c

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/wm/CompatModePackages;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 16
    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 37
    :try_start_2
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-interface {v2, p1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    invoke-interface {v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    const-string v3, "compat-packages"

    .line 53
    .line 54
    invoke-interface {v2, p1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Ljava/util/Map$Entry;

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    if-nez v4, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const-wide/16 v6, 0x0

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    :try_start_3
    invoke-interface {v3, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception p1

    .line 109
    goto :goto_2

    .line 110
    :catch_1
    move-object v6, p1

    .line 111
    :goto_1
    if-nez v6, :cond_2

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    :try_start_4
    invoke-virtual {p0, v6}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_3

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_4

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    const-string/jumbo v6, "pkg"

    .line 133
    .line 134
    .line 135
    invoke-interface {v2, p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    .line 137
    .line 138
    const-string/jumbo v6, "name"

    .line 139
    .line 140
    .line 141
    invoke-interface {v2, p1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    .line 143
    .line 144
    const-string/jumbo v5, "mode"

    .line 145
    .line 146
    .line 147
    invoke-interface {v2, p1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    .line 149
    .line 150
    const-string/jumbo v4, "pkg"

    .line 151
    .line 152
    .line 153
    invoke-interface {v2, p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    const-string v0, "compat-packages"

    .line 158
    .line 159
    invoke-interface {v2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    .line 161
    .line 162
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :catch_2
    move-exception v0

    .line 172
    move-object v1, p1

    .line 173
    move-object p1, v0

    .line 174
    :goto_2
    const-string v0, "ActivityTaskManager"

    .line 175
    .line 176
    const-string v2, "Error writing compat packages"

    .line 177
    .line 178
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .line 180
    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 184
    .line 185
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 186
    .line 187
    .line 188
    :cond_6
    :goto_3
    return-void

    .line 189
    :catchall_0
    move-exception p0

    .line 190
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 192
    .line 193
    .line 194
    throw p0
.end method
