.class public final Lcom/android/server/wm/CompatModePackages;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFile:Landroid/util/AtomicFile;

.field public final mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

.field public final mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

.field public final mPackages:Ljava/util/HashMap;

.field public final mProviders:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;)V
    .locals 7

    .line 1
    const-string v0, "Error reading compat-packages"

    .line 2
    .line 3
    const-string v1, "ActivityTaskManager"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    new-instance v2, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    .line 31
    new-instance p2, Landroid/util/AtomicFile;

    .line 32
    .line 33
    new-instance v2, Ljava/io/File;

    .line 34
    .line 35
    const-string/jumbo v3, "packages-compat.xml"

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p3, "compat-mode"

    .line 42
    .line 43
    invoke-direct {p2, v2, p3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 47
    .line 48
    new-instance p3, Lcom/android/server/wm/CompatModePackages$CompatHandler;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V

    .line 55
    .line 56
    .line 57
    iput-object p3, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 61
    .line 62
    .line 63
    move-result-object p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    :goto_0
    const/4 v3, 0x1

    .line 73
    const/4 v4, 0x2

    .line 74
    if-eq v2, v4, :cond_0

    .line 75
    .line 76
    if-eq v2, v3, :cond_0

    .line 77
    .line 78
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 79
    .line 80
    .line 81
    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    move-object p1, p2

    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :catch_0
    move-exception p0

    .line 88
    move-object p1, p2

    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception p0

    .line 91
    move-object p1, p2

    .line 92
    goto :goto_3

    .line 93
    :cond_0
    if-ne v2, v3, :cond_2

    .line 94
    .line 95
    if-eqz p2, :cond_1

    .line 96
    .line 97
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    .line 99
    .line 100
    :catch_2
    :cond_1
    return-void

    .line 101
    :cond_2
    :try_start_3
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v5, "compat-packages"

    .line 106
    .line 107
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    :cond_3
    if-ne v2, v4, :cond_4

    .line 118
    .line 119
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-ne v5, v4, :cond_4

    .line 128
    .line 129
    const-string/jumbo v5, "pkg"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_4

    .line 137
    .line 138
    const-string/jumbo v2, "name"

    .line 139
    .line 140
    .line 141
    invoke-interface {p3, p1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-eqz v2, :cond_4

    .line 146
    .line 147
    const-string/jumbo v5, "mode"

    .line 148
    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    invoke-interface {p3, p1, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    iget-object v6, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_4
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 165
    .line 166
    .line 167
    move-result v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    if-ne v2, v3, :cond_3

    .line 169
    .line 170
    :cond_5
    if-eqz p2, :cond_7

    .line 171
    .line 172
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :catchall_1
    move-exception p0

    .line 177
    goto :goto_5

    .line 178
    :catch_3
    move-exception p0

    .line 179
    :goto_1
    if-eqz p1, :cond_6

    .line 180
    .line 181
    :try_start_5
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    .line 183
    .line 184
    :cond_6
    if-eqz p1, :cond_7

    .line 185
    .line 186
    :goto_2
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :catch_4
    move-exception p0

    .line 191
    :goto_3
    :try_start_7
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 192
    .line 193
    .line 194
    if-eqz p1, :cond_7

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :catch_5
    :cond_7
    :goto_4
    return-void

    .line 198
    :goto_5
    if-eqz p1, :cond_8

    .line 199
    .line 200
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 201
    .line 202
    .line 203
    :catch_6
    :cond_8
    throw p0
.end method


# virtual methods
.method public final compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 10

    .line 1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v7, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v7, v1

    .line 16
    :goto_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 19
    .line 20
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/CompatModePackages;->getCompatScaleFromProvider(ILjava/lang/String;)Landroid/content/res/CompatibilityInfo$CompatScale;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget v1, v0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    .line 27
    .line 28
    :goto_1
    move v8, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 33
    .line 34
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(ILjava/lang/String;Z)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_1

    .line 39
    :goto_2
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget v0, v0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    .line 42
    .line 43
    move v9, v0

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    move v9, v8

    .line 46
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    .line 53
    .line 54
    iget v5, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 55
    .line 56
    iget v6, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 57
    .line 58
    move-object v3, v1

    .line 59
    move-object v4, p1

    .line 60
    invoke-direct/range {v3 .. v9}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZFF)V

    .line 61
    .line 62
    .line 63
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    const-string v0, "android"

    .line 78
    .line 79
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v3, "Use legacy screen compat mode: "

    .line 90
    .line 91
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 95
    .line 96
    const-string v4, "ActivityTaskManager"

    .line 97
    .line 98
    invoke-static {v0, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    .line 102
    .line 103
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-lez v0, :cond_4

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    .line 122
    .line 123
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_4
    return-object v1
.end method

.method public final getCompatScale(ILjava/lang/String;Z)F
    .locals 5

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CompatModePackages;->getCompatScaleFromProvider(ILjava/lang/String;)Landroid/content/res/CompatibilityInfo$CompatScale;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget p0, p3, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-wide/32 v0, 0xa09e1d7

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const-wide/32 v0, 0x104e4406

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/high16 v1, 0x3f000000    # 0.5f

    .line 31
    .line 32
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    .line 34
    if-nez p3, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_10

    .line 37
    .line 38
    :cond_1
    const-wide/32 v3, 0xae57a6b

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    const p3, 0x3f666666    # 0.9f

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_2
    const-wide/32 v3, 0xb52b546

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    const p3, 0x3f59999a    # 0.85f

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_3
    const-wide/32 v3, 0xa8bb021

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_4

    .line 74
    .line 75
    const p3, 0x3f4ccccd    # 0.8f

    .line 76
    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_4
    const-wide/32 v3, 0xb52b573

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_5

    .line 88
    .line 89
    const/high16 p3, 0x3f400000    # 0.75f

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_5
    const-wide/32 v3, 0xa8bb06d

    .line 94
    .line 95
    .line 96
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-eqz p3, :cond_6

    .line 101
    .line 102
    const p3, 0x3f333333    # 0.7f

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_6
    const-wide/32 v3, 0xb52b550

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eqz p3, :cond_7

    .line 115
    .line 116
    const p3, 0x3f266666    # 0.65f

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    const-wide/32 v3, 0xa8bb033

    .line 121
    .line 122
    .line 123
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-eqz p3, :cond_8

    .line 128
    .line 129
    const p3, 0x3f19999a    # 0.6f

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_8
    const-wide/32 v3, 0xb52b674

    .line 134
    .line 135
    .line 136
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    if-eqz p3, :cond_9

    .line 141
    .line 142
    const p3, 0x3f0ccccd    # 0.55f

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_9
    const-wide/32 v3, 0xa8bb015

    .line 147
    .line 148
    .line 149
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    if-eqz p3, :cond_a

    .line 154
    .line 155
    move p3, v1

    .line 156
    goto :goto_0

    .line 157
    :cond_a
    const-wide/32 v3, 0xb52b576

    .line 158
    .line 159
    .line 160
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    if-eqz p3, :cond_b

    .line 165
    .line 166
    const p3, 0x3ee66666    # 0.45f

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_b
    const-wide/32 v3, 0xb52b676

    .line 171
    .line 172
    .line 173
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    if-eqz p3, :cond_c

    .line 178
    .line 179
    const p3, 0x3ecccccd    # 0.4f

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_c
    const-wide/32 v3, 0xb52b555

    .line 184
    .line 185
    .line 186
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-eqz p3, :cond_d

    .line 191
    .line 192
    const p3, 0x3eb33333    # 0.35f

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_d
    const-wide/32 v3, 0xb52b678

    .line 197
    .line 198
    .line 199
    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    if-eqz p3, :cond_e

    .line 204
    .line 205
    const p3, 0x3e99999a    # 0.3f

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_e
    move p3, v2

    .line 210
    :goto_0
    cmpl-float v3, p3, v2

    .line 211
    .line 212
    if-eqz v3, :cond_10

    .line 213
    .line 214
    if-eqz v0, :cond_f

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_f
    div-float p3, v2, p3

    .line 218
    .line 219
    :goto_1
    return p3

    .line 220
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 221
    .line 222
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    .line 223
    .line 224
    if-eqz p3, :cond_11

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    iget p3, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 231
    .line 232
    int-to-float p3, p3

    .line 233
    const/high16 v0, 0x43200000    # 160.0f

    .line 234
    .line 235
    div-float/2addr p3, v0

    .line 236
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 237
    .line 238
    int-to-float p0, p0

    .line 239
    mul-float/2addr p0, p3

    .line 240
    add-float/2addr p0, v1

    .line 241
    float-to-int p0, p0

    .line 242
    const/16 p3, 0x438

    .line 243
    .line 244
    if-le p0, p3, :cond_11

    .line 245
    .line 246
    const-wide/32 v0, 0x9653d2a

    .line 247
    .line 248
    .line 249
    invoke-static {v0, v1, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-nez p1, :cond_11

    .line 254
    .line 255
    int-to-float p0, p0

    .line 256
    const/high16 p1, 0x44870000    # 1080.0f

    .line 257
    .line 258
    div-float/2addr p0, p1

    .line 259
    return p0

    .line 260
    :cond_11
    return v2
.end method

.method public final getCompatScaleFromProvider(ILjava/lang/String;)Landroid/content/res/CompatibilityInfo$CompatScale;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/CompatScaleProvider;

    .line 18
    .line 19
    check-cast v1, Lcom/android/server/app/GameManagerService$LocalService;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, p2, v3}, Lcom/android/server/app/GameManagerService$LocalService;->getResolutionScalingFactor(Ljava/lang/String;I)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x0

    .line 37
    cmpl-float v3, v1, v3

    .line 38
    .line 39
    if-lez v3, :cond_0

    .line 40
    .line 41
    new-instance v2, Landroid/content/res/CompatibilityInfo$CompatScale;

    .line 42
    .line 43
    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    .line 45
    div-float/2addr v3, v1

    .line 46
    invoke-direct {v2, v3}, Landroid/content/res/CompatibilityInfo$CompatScale;-><init>(F)V

    .line 47
    .line 48
    .line 49
    :cond_0
    if-eqz v2, :cond_1

    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v2
.end method

.method public final getPackageFlags(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final scheduleWrite()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    .line 2
    .line 3
    const/16 v0, 0x12c

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x2710

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 12

    .line 1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "ActivityTaskManager"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    if-eq p2, v3, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    if-eq p2, v4, :cond_0

    .line 16
    .line 17
    const-string p0, "Unknown screen compat mode req #"

    .line 18
    .line 19
    const-string p1, "; ignoring"

    .line 20
    .line 21
    invoke-static {p2, p0, p1, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    and-int/lit8 p2, v1, 0x2

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    :cond_1
    or-int/lit8 p2, v1, 0x2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    and-int/lit8 p2, v1, -0x3

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v7, "Ignoring compat mode change of "

    .line 44
    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    const-string p2, "; compatibility never needed"

    .line 48
    .line 49
    invoke-static {v7, v0, p2, v2}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move p2, v6

    .line 53
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    const-string p2, "; compatibility always needed"

    .line 60
    .line 61
    invoke-static {v7, v0, p2, v2}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    move v6, p2

    .line 66
    :goto_1
    if-eq v6, v1, :cond_9

    .line 67
    .line 68
    if-eqz v6, :cond_5

    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 90
    .line 91
    .line 92
    new-instance p2, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 100
    .line 101
    new-instance v2, Lcom/android/server/wm/CompatModePackages$$ExternalSyntheticLambda0;

    .line 102
    .line 103
    invoke-direct {v2, v0, p2}, Lcom/android/server/wm/CompatModePackages$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    sub-int/2addr v1, v3

    .line 118
    :goto_3
    if-ltz v1, :cond_9

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_8

    .line 131
    .line 132
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 146
    .line 147
    aget-boolean v4, v4, v3

    .line 148
    .line 149
    if-eqz v4, :cond_7

    .line 150
    .line 151
    iget-object v4, v2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 162
    .line 163
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    const-wide v7, -0x10a45df3f51cef8L

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    const/4 v9, 0x0

    .line 173
    const/4 v10, 0x0

    .line 174
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 178
    .line 179
    invoke-interface {v2, v0, p1}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    :catch_0
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    return-void
.end method
