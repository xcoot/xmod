.class public final Lcom/android/server/sepunion/SemUnionMainServiceImpl;
.super Lcom/samsung/android/sepunion/IUnionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sConstructorMap:Ljava/util/HashMap;

.field public static final sDumpInformationMap:Ljava/util/HashMap;

.field public static final sLock:Ljava/lang/Object;

.field public static final sPendingSepUnionServiceCreators:Ljava/util/Map;

.field public static final sSemSystemServiceMap:Ljava/util/HashMap;

.field public static final sUnionIbinderMap:Ljava/util/HashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsBootCompleted:Z

.field public final mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;


# direct methods
.method public static -$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "SemUnionMainServiceImpl"

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "addSepUnionServiceMapInternal : "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    :try_start_1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    check-cast p2, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 51
    .line 52
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    .line 58
    .line 59
    move-object v1, p2

    .line 60
    check-cast v1, Landroid/os/IBinder;

    .line 61
    .line 62
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    new-instance p1, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onCreate(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception p1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const-string p1, "SemUnionMainServiceImpl"

    .line 79
    .line 80
    const-string p2, "addSepUnionServiceMapInternal : obj is NULL"

    .line 81
    .line 82
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_1
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    throw p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;-><init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/4 v5, 0x1

    .line 62
    new-array v5, v5, [Ljava/lang/Class;

    .line 63
    .line 64
    const-class v6, Landroid/content/Context;

    .line 65
    .line 66
    aput-object v6, v5, v0

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 69
    .line 70
    .line 71
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v3

    .line 74
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    move-object v3, v4

    .line 78
    :goto_1
    if-eqz v3, :cond_0

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    sget-object v5, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_3

    .line 104
    :cond_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    sget-object p1, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_2

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->createSemSystemService(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 152
    .line 153
    monitor-enter v0

    .line 154
    :try_start_3
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    .line 155
    .line 156
    new-instance v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;

    .line 157
    .line 158
    invoke-direct {v3, p0, v1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;-><init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    check-cast v2, Landroid/util/ArrayMap;

    .line 162
    .line 163
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    monitor-exit v0

    .line 167
    goto :goto_2

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    throw p0

    .line 171
    :cond_3
    new-instance p0, Ljava/io/File;

    .line 172
    .line 173
    const-string p1, "/data/log/sepunion/"

    .line 174
    .line 175
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_4

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_4

    .line 189
    .line 190
    const/16 p1, 0x1ff

    .line 191
    .line 192
    const/4 v0, -0x1

    .line 193
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 194
    .line 195
    .line 196
    :cond_4
    return-void

    .line 197
    :goto_3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    throw p0
.end method

.method public static dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p1, "This log file does not exist : "

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "SemUnionMainServiceImpl"

    .line 27
    .line 28
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p2, "\n##### DUMP OF "

    .line 33
    .line 34
    const-string v1, " #####\n##### (dumpsys sepunion "

    .line 35
    .line 36
    const-string v2, ") #####\n"

    .line 37
    .line 38
    invoke-static {p2, p1, v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    .line 47
    .line 48
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 49
    .line 50
    .line 51
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 52
    .line 53
    const-string v1, "UTF-8"

    .line 54
    .line 55
    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 56
    .line 57
    .line 58
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .line 62
    .line 63
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    const/16 v4, 0x1f4

    .line 76
    .line 77
    if-gt v2, v4, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const/16 v3, 0xa

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    move-object p1, v1

    .line 92
    goto :goto_6

    .line 93
    :catch_0
    move-exception p0

    .line 94
    move-object p1, v1

    .line 95
    goto :goto_2

    .line 96
    :catch_1
    move-exception p0

    .line 97
    move-object p1, v1

    .line 98
    goto :goto_4

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    goto :goto_6

    .line 118
    :catch_2
    move-exception p0

    .line 119
    goto :goto_2

    .line 120
    :catch_3
    move-exception p0

    .line 121
    goto :goto_4

    .line 122
    :catchall_2
    move-exception p0

    .line 123
    move-object v0, p1

    .line 124
    goto :goto_6

    .line 125
    :catch_4
    move-exception p0

    .line 126
    move-object v0, p1

    .line 127
    goto :goto_2

    .line 128
    :catch_5
    move-exception p0

    .line 129
    move-object v0, p1

    .line 130
    goto :goto_4

    .line 131
    :catchall_3
    move-exception p0

    .line 132
    move-object p2, p1

    .line 133
    move-object v0, p2

    .line 134
    goto :goto_6

    .line 135
    :catch_6
    move-exception p0

    .line 136
    move-object p2, p1

    .line 137
    move-object v0, p2

    .line 138
    goto :goto_2

    .line 139
    :catch_7
    move-exception p0

    .line 140
    move-object p2, p1

    .line 141
    move-object v0, p2

    .line 142
    goto :goto_4

    .line 143
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :goto_5
    return-void

    .line 155
    :goto_6
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 162
    .line 163
    .line 164
    throw p0
.end method

.method public static dumpHistoryLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "\n##### DUMP OF "

    .line 2
    .line 3
    const-string v1, " #####\n##### (dumpsys sepunion "

    .line 4
    .line 5
    const-string v2, ") #####\n"

    .line 6
    .line 7
    invoke-static {v0, p3, v1, p3, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p3, p0, p1, p2}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "\n##### SEP UNION Main SERVICE #####\n##### (dumpsys sepunion) #####\n"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpServiceList(Ljava/io/PrintWriter;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v2, p0, p1, p2}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-static {p1, v3, v2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-static {p0, p1, p2, v3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpHistoryLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0
.end method

.method public static dumpServiceList(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, " "

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    .line 69
    .line 70
    check-cast v3, Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Ljava/util/Map$Entry;

    .line 91
    .line 92
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, " "

    .line 116
    .line 117
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v3, "Number of SEP Union service = "

    .line 129
    .line 130
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v3, "SEP Union service list(activated) : "

    .line 146
    .line 147
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "SEP Union service list(pending) : "

    .line 161
    .line 162
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    throw p0
.end method

.method public static getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 4

    const-string/jumbo v0, "plugin"

    .line 1
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v0, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "SemUnionMainServiceImpl"

    .line 4
    .line 5
    invoke-static {p0, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    array-length p0, p3

    .line 13
    if-gtz p0, :cond_1

    .line 14
    .line 15
    invoke-static {p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    aget-object v3, p3, v2

    .line 30
    .line 31
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    move v4, v2

    .line 39
    move v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    aget-object v4, p3, v2

    .line 48
    .line 49
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    move v1, v2

    .line 56
    move v4, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v1, v2

    .line 59
    move v4, v1

    .line 60
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    aget-object v1, p3, v2

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    array-length v1, p3

    .line 75
    if-ne v1, v3, :cond_4

    .line 76
    .line 77
    const/4 p3, 0x0

    .line 78
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    array-length v1, p3

    .line 85
    invoke-static {p3, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    check-cast p3, [Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    :goto_1
    monitor-exit p0

    .line 95
    goto :goto_5

    .line 96
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p1

    .line 98
    :cond_6
    if-eqz v4, :cond_8

    .line 99
    .line 100
    monitor-enter p0

    .line 101
    :try_start_2
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    .line 102
    .line 103
    aget-object v1, p3, v2

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    aget-object p1, p3, v2

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    check-cast p3, Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {p2, p1, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    aget-object v0, p3, v2

    .line 126
    .line 127
    invoke-static {p1, p2, p3, v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpHistoryLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    monitor-exit p0

    .line 131
    goto :goto_5

    .line 132
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    throw p1

    .line 134
    :cond_8
    aget-object p0, p3, v2

    .line 135
    .line 136
    const-string/jumbo v0, "servicelist"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_9

    .line 144
    .line 145
    invoke-static {p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpServiceList(Ljava/io/PrintWriter;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :goto_5
    return-void

    .line 153
    :catchall_2
    move-exception p1

    .line 154
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 155
    throw p1
.end method

.method public final getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 3

    .line 6
    const-string p2, "getSemSystemService - "

    const-string v0, "SemUnionMainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSemSystemService - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 9
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    if-nez v1, :cond_1

    .line 11
    const-string p0, "SemUnionMainServiceImpl"

    const-string p1, "getSemSystemService : boot is not completed"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSepUnionService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 14
    const-string v1, "SemUnionMainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    monitor-exit v0

    return-object p0

    .line 16
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSepUnionService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    .line 5
    .line 6
    move-object v2, v1

    .line 7
    check-cast v2, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    check-cast v1, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object p1, v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 34
    .line 35
    iget-object v1, v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->mName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v1, p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-object p0

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11

    .line 1
    move-object v0, p4

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v3, 0x7d0

    .line 10
    .line 11
    if-ne v1, v3, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object/from16 v1, p6

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, -0x1

    .line 17
    move-object/from16 v1, p6

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    const-string v1, "Shell commands are only callable by ADB"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :goto_0
    sget-object v10, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v10

    .line 33
    :try_start_0
    array-length v3, v0

    .line 34
    if-lez v3, :cond_3

    .line 35
    .line 36
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    aget-object v4, v0, v4

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    array-length v4, v0

    .line 50
    const/4 v5, 0x1

    .line 51
    if-ne v4, v5, :cond_2

    .line 52
    .line 53
    :goto_1
    move-object v7, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    array-length v2, v0

    .line 56
    invoke-static {p4, v5, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v2, v0

    .line 61
    check-cast v2, [Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :goto_2
    move-object v4, p1

    .line 65
    move-object v5, p2

    .line 66
    move-object v6, p3

    .line 67
    move-object/from16 v8, p5

    .line 68
    .line 69
    move-object/from16 v9, p6

    .line 70
    .line 71
    invoke-interface/range {v3 .. v9}, Lcom/android/server/sepunion/AbsSemSystemService;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v10

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_3
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw v0
.end method

.method public final setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    const/16 p0, 0x7d0

    .line 20
    .line 21
    if-eq v0, p0, :cond_2

    .line 22
    .line 23
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p1, "Permission denied: setDumpEnabled callingUid="

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ", you need system uid of to be signed with the system certificate."

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "SemUnionMainServiceImpl"

    .line 72
    .line 73
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/lang/SecurityException;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method
