.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public final mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

.field public final mContext:Landroid/content/Context;

.field public final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/android/server/pm/PackageDexOptimizer$1;

    .line 2
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 7
    iput-object p3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 8
    move-object p2, p1

    check-cast p2, Lcom/android/server/pm/PackageDexOptimizer$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p4, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p2, p3, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 11
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    return-void
.end method

.method public static getAugmentedReasonName(IZ)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "-dm"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, ""

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 14
    .line 15
    const/16 v1, 0x16

    .line 16
    .line 17
    if-ne p0, v1, :cond_1

    .line 18
    .line 19
    const-string p0, "install-speg"

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/16 v1, 0x15

    .line 23
    .line 24
    if-ne p0, v1, :cond_2

    .line 25
    .line 26
    const-string p0, "install-spqr"

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/16 v1, 0x17

    .line 30
    .line 31
    if-ne p0, v1, :cond_3

    .line 32
    .line 33
    const-string p0, "adcp"

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    const/16 v1, 0x18

    .line 37
    .line 38
    if-ne p0, v1, :cond_4

    .line 39
    .line 40
    const-string p0, "install-repair"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/16 v1, 0x19

    .line 44
    .line 45
    if-ne p0, v1, :cond_5

    .line 46
    .line 47
    const-string p0, "labs"

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_5
    if-ltz p0, :cond_6

    .line 51
    .line 52
    const/16 v1, 0xf

    .line 53
    .line 54
    if-ge p0, v1, :cond_6

    .line 55
    .line 56
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 57
    .line 58
    aget-object p0, v1, p0

    .line 59
    .line 60
    :goto_1
    invoke-static {v0, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string/jumbo v0, "reason "

    .line 68
    .line 69
    .line 70
    const-string v1, " invalid"

    .line 71
    .line 72
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method


# virtual methods
.method public adjustDexoptFlags(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public adjustDexoptNeeded(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final canOptimizePackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    .line 30
    .line 31
    check-cast p0, Lcom/android/server/pm/PackageDexOptimizer$1;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-class p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 43
    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "android.permission.MANAGE_APP_HIBERNATION"

    .line 63
    .line 64
    const-string v2, "Caller does not have MANAGE_APP_HIBERNATION permission."

    .line 65
    .line 66
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-boolean p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    .line 70
    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    return v1

    .line 74
    :cond_3
    const/4 p0, 0x1

    .line 75
    return p0
.end method

.method public final dexOptPath(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)I
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    move-object/from16 v10, p5

    .line 6
    .line 7
    move/from16 v9, p7

    .line 8
    .line 9
    move/from16 v11, p12

    .line 10
    .line 11
    const-string v15, "PackageDexOptimizer"

    .line 12
    .line 13
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :goto_0
    move-object v14, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 47
    .line 48
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    new-instance v2, Ljava/io/File;

    .line 63
    .line 64
    const-string/jumbo v3, "oat"

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    iget-object v0, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 79
    .line 80
    iget-boolean v0, v0, Lcom/android/server/pm/Installer;->mIsolated:Z

    .line 81
    .line 82
    if-eqz v0, :cond_17

    .line 83
    .line 84
    and-int/lit8 v12, v9, 0x2

    .line 85
    .line 86
    const/16 v18, 0x1

    .line 87
    .line 88
    const/4 v13, 0x0

    .line 89
    if-eqz v12, :cond_4

    .line 90
    .line 91
    move/from16 v0, v18

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move v0, v13

    .line 95
    :goto_2
    and-int/lit8 v7, v9, 0x10

    .line 96
    .line 97
    if-eqz v7, :cond_5

    .line 98
    .line 99
    move/from16 v2, v18

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move v2, v13

    .line 103
    :goto_3
    if-eqz v2, :cond_7

    .line 104
    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_6
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_7
    :goto_4
    const/16 v19, -0x1

    .line 115
    .line 116
    :try_start_0
    const-string v0, "-profile"

    .line 117
    .line 118
    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 119
    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    move-object/from16 v2, p3

    .line 123
    .line 124
    move-object/from16 v3, p4

    .line 125
    .line 126
    move-object/from16 v4, p5

    .line 127
    .line 128
    move-object/from16 v5, p6

    .line 129
    .line 130
    move/from16 v20, v7

    .line 131
    .line 132
    move/from16 v7, p9

    .line 133
    .line 134
    :try_start_1
    invoke-static/range {v2 .. v7}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 135
    .line 136
    .line 137
    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    const/4 v2, 0x3

    .line 139
    if-ne v11, v2, :cond_8

    .line 140
    .line 141
    const-string/jumbo v2, "persist.sys.app_install_boost"

    .line 142
    .line 143
    .line 144
    const-string v3, "false"

    .line 145
    .line 146
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string/jumbo v3, "true"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    const-string v0, "System is busy state and dexopt skipped!"

    .line 160
    .line 161
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move v7, v13

    .line 165
    goto :goto_8

    .line 166
    :cond_8
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    move v7, v0

    .line 171
    goto :goto_8

    .line 172
    :catch_0
    move-exception v0

    .line 173
    goto :goto_5

    .line 174
    :catch_1
    move-exception v0

    .line 175
    goto :goto_7

    .line 176
    :catch_2
    move-exception v0

    .line 177
    move/from16 v20, v7

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :catch_3
    move-exception v0

    .line 181
    move/from16 v20, v7

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v3, "Unexpected exception when calling dexoptNeeded on "

    .line 187
    .line 188
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v15, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .line 200
    .line 201
    :goto_6
    move/from16 v7, v19

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v3, "IOException reading apk: "

    .line 207
    .line 208
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v15, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :goto_8
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_9

    .line 227
    .line 228
    return v13

    .line 229
    :cond_9
    const-string v0, "Running dexopt (dexoptNeeded="

    .line 230
    .line 231
    const-string v2, ") on: "

    .line 232
    .line 233
    const-string v3, " pkg="

    .line 234
    .line 235
    invoke-static {v7, v0, v2, v8, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v2, " isa="

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    move-object/from16 v6, p4

    .line 252
    .line 253
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v2, " dexoptFlags="

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    new-instance v2, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    and-int/lit8 v3, v9, 0x8

    .line 267
    .line 268
    const/16 v4, 0x8

    .line 269
    .line 270
    if-ne v3, v4, :cond_a

    .line 271
    .line 272
    const-string v3, "boot_complete"

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :cond_a
    and-int/lit8 v3, v9, 0x4

    .line 278
    .line 279
    const/4 v4, 0x4

    .line 280
    if-ne v3, v4, :cond_b

    .line 281
    .line 282
    const-string v3, "debuggable"

    .line 283
    .line 284
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    :cond_b
    const/16 v3, 0x10

    .line 288
    .line 289
    move/from16 v4, v20

    .line 290
    .line 291
    if-ne v4, v3, :cond_c

    .line 292
    .line 293
    const-string/jumbo v3, "profile_guided"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    :cond_c
    const/4 v5, 0x2

    .line 300
    if-ne v12, v5, :cond_d

    .line 301
    .line 302
    const-string/jumbo v3, "public"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :cond_d
    and-int/lit8 v3, v9, 0x20

    .line 309
    .line 310
    const/16 v4, 0x20

    .line 311
    .line 312
    if-ne v3, v4, :cond_e

    .line 313
    .line 314
    const-string/jumbo v3, "secondary"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    :cond_e
    and-int/lit8 v3, v9, 0x40

    .line 321
    .line 322
    const/16 v4, 0x40

    .line 323
    .line 324
    if-ne v3, v4, :cond_f

    .line 325
    .line 326
    const-string v3, "force"

    .line 327
    .line 328
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    :cond_f
    and-int/lit16 v3, v9, 0x80

    .line 332
    .line 333
    const/16 v4, 0x80

    .line 334
    .line 335
    if-ne v3, v4, :cond_10

    .line 336
    .line 337
    const-string/jumbo v3, "storage_ce"

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    :cond_10
    and-int/lit16 v3, v9, 0x100

    .line 344
    .line 345
    const/16 v4, 0x100

    .line 346
    .line 347
    if-ne v3, v4, :cond_11

    .line 348
    .line 349
    const-string/jumbo v3, "storage_de"

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    :cond_11
    and-int/lit16 v3, v9, 0x200

    .line 356
    .line 357
    const/16 v4, 0x200

    .line 358
    .line 359
    if-ne v3, v4, :cond_12

    .line 360
    .line 361
    const-string v3, "idle_background_job"

    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    :cond_12
    and-int/lit16 v3, v9, 0x400

    .line 367
    .line 368
    const/16 v4, 0x400

    .line 369
    .line 370
    if-ne v3, v4, :cond_13

    .line 371
    .line 372
    const-string v3, "enable_hidden_api_checks"

    .line 373
    .line 374
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    :cond_13
    const-string v3, ","

    .line 378
    .line 379
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v2, " targetFilter="

    .line 387
    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v2, " oatDir="

    .line 395
    .line 396
    const-string v3, " classLoaderContext="

    .line 397
    .line 398
    move-object/from16 v12, p6

    .line 399
    .line 400
    invoke-static {v0, v2, v14, v3, v12}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 408
    .line 409
    .line 410
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 415
    .line 416
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v16

    .line 420
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v17

    .line 424
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 425
    .line 426
    .line 427
    move-result v20

    .line 428
    if-eqz p11, :cond_14

    .line 429
    .line 430
    move/from16 v13, v18

    .line 431
    .line 432
    :cond_14
    invoke-static {v11, v13}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v21
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_5

    .line 436
    move-object/from16 v3, p3

    .line 437
    .line 438
    move/from16 v4, p8

    .line 439
    .line 440
    move/from16 v22, v5

    .line 441
    .line 442
    move-object/from16 v5, v16

    .line 443
    .line 444
    move-object/from16 v6, p4

    .line 445
    .line 446
    move-object v8, v14

    .line 447
    move/from16 v9, p7

    .line 448
    .line 449
    move-object/from16 v10, p5

    .line 450
    .line 451
    move-object/from16 v11, v17

    .line 452
    .line 453
    move-object/from16 v12, p6

    .line 454
    .line 455
    move-object v13, v0

    .line 456
    move-object v1, v14

    .line 457
    move/from16 v14, v20

    .line 458
    .line 459
    move-object/from16 v23, v15

    .line 460
    .line 461
    move-object/from16 v15, p10

    .line 462
    .line 463
    move-object/from16 v16, p11

    .line 464
    .line 465
    move-object/from16 v17, v21

    .line 466
    .line 467
    :try_start_3
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-nez v0, :cond_15

    .line 472
    .line 473
    return v22

    .line 474
    :cond_15
    if-eqz v1, :cond_16

    .line 475
    .line 476
    move-object v2, v1

    .line 477
    move-object/from16 v1, p0

    .line 478
    .line 479
    iget-object v0, v1, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    .line 480
    .line 481
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    new-instance v1, Ljava/io/File;

    .line 486
    .line 487
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-static {v0, v1}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 491
    .line 492
    .line 493
    goto :goto_9

    .line 494
    :catch_4
    move-exception v0

    .line 495
    goto :goto_a

    .line 496
    :cond_16
    :goto_9
    return v18

    .line 497
    :catch_5
    move-exception v0

    .line 498
    move-object/from16 v23, v15

    .line 499
    .line 500
    :goto_a
    const-string v1, "Failed to dexopt"

    .line 501
    .line 502
    move-object/from16 v2, v23

    .line 503
    .line 504
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .line 506
    .line 507
    return v19

    .line 508
    :cond_17
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 509
    .line 510
    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 511
    .line 512
    .line 513
    throw v0
.end method

.method public final performDexOpt(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-boolean v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    const-wide/16 v1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    .line 47
    new-instance v3, Landroid/os/WorkSource;

    .line 48
    .line 49
    invoke-direct {v3, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    .line 57
    const-wide/32 v2, 0xa1220

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    :try_start_3
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 81
    .line 82
    .line 83
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_2
    move-exception p1

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    throw p0

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string p3, "Dexopt for "

    .line 98
    .line 99
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, " has invalid uid."

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    const-string p1, "System server dexopting should be done via odrefresh"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public final performDexOptLI(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p3

    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 18
    .line 19
    iput-object v3, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 20
    .line 21
    const/4 v15, 0x0

    .line 22
    move v3, v15

    .line 23
    :goto_0
    iget-object v4, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_1

    .line 30
    .line 31
    iget-object v4, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    .line 38
    .line 39
    iget-object v5, v4, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    iget-object v4, v4, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v1, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v3}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/4 v12, -0x1

    .line 84
    if-ne v3, v12, :cond_2

    .line 85
    .line 86
    const-string v3, "PackageDexOptimizer"

    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v5, "Well this is awkward; package "

    .line 91
    .line 92
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, " had UID "

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    new-instance v5, Ljava/lang/Throwable;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-static {v3, v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    const/16 v3, 0x270f

    .line 127
    .line 128
    :cond_2
    move/from16 v16, v3

    .line 129
    .line 130
    move-object v11, v1

    .line 131
    check-cast v11, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    new-array v10, v3, [Z

    .line 138
    .line 139
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    aput-boolean v3, v10, v15

    .line 144
    .line 145
    const/4 v3, 0x1

    .line 146
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    const/16 v17, 0x4

    .line 151
    .line 152
    if-ge v3, v4, :cond_4

    .line 153
    .line 154
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitFlags()[I

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    add-int/lit8 v5, v3, -0x1

    .line 159
    .line 160
    aget v4, v4, v5

    .line 161
    .line 162
    and-int/lit8 v4, v4, 0x4

    .line 163
    .line 164
    if-eqz v4, :cond_3

    .line 165
    .line 166
    const/4 v4, 0x1

    .line 167
    goto :goto_2

    .line 168
    :cond_3
    move v4, v15

    .line 169
    :goto_2
    aput-boolean v4, v10, v3

    .line 170
    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    const-string v3, ""

    .line 175
    .line 176
    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-static {v3, v4}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    const/16 v18, 0x0

    .line 212
    .line 213
    if-eqz v5, :cond_5

    .line 214
    .line 215
    filled-new-array {v4}, [Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    move-object v15, v2

    .line 220
    move-object/from16 v23, v13

    .line 221
    .line 222
    goto/16 :goto_f

    .line 223
    .line 224
    :cond_5
    new-instance v5, Ljava/io/File;

    .line 225
    .line 226
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    new-array v8, v7, [Ljava/lang/String;

    .line 246
    .line 247
    move v12, v15

    .line 248
    :goto_3
    if-ge v12, v7, :cond_7

    .line 249
    .line 250
    new-instance v9, Ljava/io/File;

    .line 251
    .line 252
    aget-object v15, v6, v12

    .line 253
    .line 254
    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    aput-object v15, v8, v12

    .line 262
    .line 263
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v15

    .line 271
    if-nez v15, :cond_6

    .line 272
    .line 273
    new-instance v15, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    move-object/from16 v21, v4

    .line 276
    .line 277
    const-string v4, "Split paths have different base paths: "

    .line 278
    .line 279
    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v4, " and "

    .line 286
    .line 287
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    const-string v9, "DexoptUtils"

    .line 298
    .line 299
    invoke-static {v9, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_6
    move-object/from16 v21, v4

    .line 304
    .line 305
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 306
    .line 307
    move-object/from16 v4, v21

    .line 308
    .line 309
    const/4 v15, 0x0

    .line 310
    goto :goto_3

    .line 311
    :cond_7
    move-object/from16 v21, v4

    .line 312
    .line 313
    new-instance v4, Ljava/io/File;

    .line 314
    .line 315
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    add-int/lit8 v5, v7, 0x1

    .line 327
    .line 328
    new-array v6, v5, [Ljava/lang/String;

    .line 329
    .line 330
    const/4 v15, 0x0

    .line 331
    aget-boolean v9, v10, v15

    .line 332
    .line 333
    if-eqz v9, :cond_8

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_8
    move-object/from16 v21, v18

    .line 337
    .line 338
    :goto_5
    aput-object v21, v6, v15

    .line 339
    .line 340
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    .line 345
    .line 346
    .line 347
    move-result v12

    .line 348
    if-eqz v12, :cond_9

    .line 349
    .line 350
    if-eqz v9, :cond_9

    .line 351
    .line 352
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 353
    .line 354
    .line 355
    move-result v12

    .line 356
    if-nez v12, :cond_a

    .line 357
    .line 358
    :cond_9
    move-object/from16 v23, v13

    .line 359
    .line 360
    goto/16 :goto_b

    .line 361
    .line 362
    :cond_a
    new-array v12, v7, [Ljava/lang/String;

    .line 363
    .line 364
    :goto_6
    if-ge v15, v7, :cond_b

    .line 365
    .line 366
    move/from16 v21, v7

    .line 367
    .line 368
    aget-object v7, v8, v15

    .line 369
    .line 370
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitClassLoaderNames()[Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v22

    .line 374
    move-object/from16 v23, v13

    .line 375
    .line 376
    aget-object v13, v22, v15

    .line 377
    .line 378
    invoke-static {v7, v13}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    aput-object v7, v12, v15

    .line 383
    .line 384
    add-int/lit8 v15, v15, 0x1

    .line 385
    .line 386
    move/from16 v7, v21

    .line 387
    .line 388
    move-object/from16 v13, v23

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_b
    move-object/from16 v23, v13

    .line 392
    .line 393
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-static {v4, v7}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    const/4 v7, 0x1

    .line 402
    :goto_7
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    if-ge v7, v8, :cond_d

    .line 407
    .line 408
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    aget-boolean v13, v10, v8

    .line 413
    .line 414
    if-eqz v13, :cond_c

    .line 415
    .line 416
    invoke-static {v8, v12, v9, v6, v4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_d
    const/4 v4, 0x1

    .line 423
    :goto_8
    if-ge v4, v5, :cond_12

    .line 424
    .line 425
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitClassLoaderNames()[Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    add-int/lit8 v8, v4, -0x1

    .line 430
    .line 431
    aget-object v7, v7, v8

    .line 432
    .line 433
    invoke-static {v3, v7}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    aget-boolean v8, v10, v4

    .line 438
    .line 439
    if-eqz v8, :cond_f

    .line 440
    .line 441
    aget-object v8, v6, v4

    .line 442
    .line 443
    if-nez v8, :cond_e

    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    aget-object v9, v6, v4

    .line 452
    .line 453
    invoke-static {v7, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    :goto_9
    aput-object v7, v6, v4

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_f
    aput-object v18, v6, v4

    .line 471
    .line 472
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 473
    .line 474
    goto :goto_8

    .line 475
    :goto_b
    const/4 v3, 0x1

    .line 476
    :goto_c
    if-ge v3, v5, :cond_12

    .line 477
    .line 478
    aget-boolean v7, v10, v3

    .line 479
    .line 480
    if-eqz v7, :cond_10

    .line 481
    .line 482
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-static {v4, v7}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v7

    .line 505
    aput-object v7, v6, v3

    .line 506
    .line 507
    goto :goto_d

    .line 508
    :cond_10
    aput-object v18, v6, v3

    .line 509
    .line 510
    :goto_d
    add-int/lit8 v7, v3, -0x1

    .line 511
    .line 512
    aget-object v7, v8, v7

    .line 513
    .line 514
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 515
    .line 516
    .line 517
    move-result v9

    .line 518
    if-eqz v9, :cond_11

    .line 519
    .line 520
    move-object v4, v7

    .line 521
    goto :goto_e

    .line 522
    :cond_11
    const-string v9, ":"

    .line 523
    .line 524
    invoke-static {v4, v9, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :cond_12
    move-object v15, v6

    .line 532
    :goto_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    array-length v3, v15

    .line 537
    if-eq v2, v3, :cond_14

    .line 538
    .line 539
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 544
    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string v4, "Inconsistent information between AndroidPackage and its ApplicationInfo. pkg.getAllCodePaths="

    .line 548
    .line 549
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v1, " pkg.getBaseCodePath="

    .line 556
    .line 557
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v1, " pkg.getSplitCodePaths="

    .line 568
    .line 569
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    if-nez v0, :cond_13

    .line 573
    .line 574
    const-string/jumbo v0, "null"

    .line 575
    .line 576
    .line 577
    goto :goto_10

    .line 578
    :cond_13
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    :goto_10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw v2

    .line 593
    :cond_14
    const/4 v1, 0x0

    .line 594
    const/4 v13, 0x0

    .line 595
    :goto_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-ge v13, v2, :cond_3d

    .line 600
    .line 601
    aget-boolean v2, v10, v13

    .line 602
    .line 603
    if-nez v2, :cond_15

    .line 604
    .line 605
    goto :goto_12

    .line 606
    :cond_15
    aget-object v2, v15, v13

    .line 607
    .line 608
    if-eqz v2, :cond_3c

    .line 609
    .line 610
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    move-object v12, v2

    .line 615
    check-cast v12, Ljava/lang/String;

    .line 616
    .line 617
    iget-object v2, v14, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    .line 618
    .line 619
    if-eqz v2, :cond_16

    .line 620
    .line 621
    new-instance v3, Ljava/io/File;

    .line 622
    .line 623
    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    if-nez v2, :cond_16

    .line 635
    .line 636
    :goto_12
    move-object/from16 v32, v10

    .line 637
    .line 638
    move-object v14, v11

    .line 639
    move/from16 v33, v13

    .line 640
    .line 641
    move-object/from16 v27, v15

    .line 642
    .line 643
    move-object/from16 v28, v23

    .line 644
    .line 645
    const/4 v2, -0x1

    .line 646
    const/16 v20, 0x1

    .line 647
    .line 648
    goto/16 :goto_2b

    .line 649
    .line 650
    :cond_16
    if-nez v13, :cond_17

    .line 651
    .line 652
    move-object/from16 v2, v18

    .line 653
    .line 654
    goto :goto_13

    .line 655
    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    add-int/lit8 v3, v13, -0x1

    .line 660
    .line 661
    aget-object v2, v2, v3

    .line 662
    .line 663
    :goto_13
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    iget v3, v14, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 668
    .line 669
    and-int/lit8 v3, v3, 0x40

    .line 670
    .line 671
    if-eqz v3, :cond_18

    .line 672
    .line 673
    const/4 v3, 0x1

    .line 674
    goto :goto_14

    .line 675
    :cond_18
    const/4 v3, 0x0

    .line 676
    :goto_14
    iget-object v4, v14, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 677
    .line 678
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    if-eqz v5, :cond_19

    .line 683
    .line 684
    invoke-static {v4}, Ldalvik/system/DexFile;->isOptimizedCompilerFilter(Ljava/lang/String;)Z

    .line 685
    .line 686
    .line 687
    move-result v5

    .line 688
    if-eqz v5, :cond_1b

    .line 689
    .line 690
    const-string/jumbo v4, "verify"

    .line 691
    .line 692
    .line 693
    goto :goto_15

    .line 694
    :cond_19
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    if-nez v5, :cond_1a

    .line 699
    .line 700
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 701
    .line 702
    .line 703
    move-result v5

    .line 704
    if-eqz v5, :cond_1b

    .line 705
    .line 706
    :cond_1a
    invoke-static {v4}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    :cond_1b
    :goto_15
    invoke-static {v4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    const/4 v6, 0x3

    .line 715
    if-eqz v5, :cond_1c

    .line 716
    .line 717
    if-eqz v3, :cond_1c

    .line 718
    .line 719
    iget v3, v14, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    .line 720
    .line 721
    if-eq v3, v6, :cond_1c

    .line 722
    .line 723
    const/4 v3, 0x1

    .line 724
    goto :goto_16

    .line 725
    :cond_1c
    const/4 v3, 0x0

    .line 726
    :goto_16
    iget v5, v14, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 727
    .line 728
    const/16 v7, 0x400

    .line 729
    .line 730
    and-int/2addr v5, v7

    .line 731
    if-eqz v5, :cond_1d

    .line 732
    .line 733
    goto :goto_17

    .line 734
    :cond_1d
    if-eqz v3, :cond_1f

    .line 735
    .line 736
    :goto_17
    new-instance v5, Ljava/io/File;

    .line 737
    .line 738
    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-static {v5}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    .line 742
    .line 743
    .line 744
    move-result-object v5

    .line 745
    if-nez v5, :cond_1e

    .line 746
    .line 747
    move-object/from16 v5, v18

    .line 748
    .line 749
    goto :goto_18

    .line 750
    :cond_1e
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    :goto_18
    move-object/from16 v21, v5

    .line 755
    .line 756
    goto :goto_19

    .line 757
    :cond_1f
    move-object/from16 v21, v18

    .line 758
    .line 759
    :goto_19
    iget v5, v14, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 760
    .line 761
    const/4 v8, 0x1

    .line 762
    and-int/2addr v5, v8

    .line 763
    if-nez v5, :cond_3b

    .line 764
    .line 765
    if-eqz v3, :cond_22

    .line 766
    .line 767
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 768
    .line 769
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    .line 771
    .line 772
    const-string v8, "cloud-"

    .line 773
    .line 774
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 784
    if-eqz v21, :cond_21

    .line 785
    .line 786
    :try_start_1
    iget-object v5, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 787
    .line 788
    iget-boolean v5, v5, Lcom/android/server/pm/Installer;->mIsolated:Z

    .line 789
    .line 790
    if-eqz v5, :cond_20

    .line 791
    .line 792
    move-object v5, v4

    .line 793
    move-object v4, v2

    .line 794
    goto :goto_1a

    .line 795
    :cond_20
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 796
    .line 797
    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 798
    .line 799
    .line 800
    throw v0

    .line 801
    :catchall_0
    move-exception v0

    .line 802
    move-object/from16 v18, v2

    .line 803
    .line 804
    goto/16 :goto_2c

    .line 805
    .line 806
    :cond_21
    const/16 v4, 0xe

    .line 807
    .line 808
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    move-object v5, v4

    .line 813
    move-object/from16 v4, v18

    .line 814
    .line 815
    :goto_1a
    move-object/from16 v24, v2

    .line 816
    .line 817
    move-object/from16 v22, v4

    .line 818
    .line 819
    move-object/from16 v25, v5

    .line 820
    .line 821
    goto :goto_1b

    .line 822
    :catchall_1
    move-exception v0

    .line 823
    goto/16 :goto_2c

    .line 824
    .line 825
    :cond_22
    move-object/from16 v22, v2

    .line 826
    .line 827
    move-object/from16 v25, v4

    .line 828
    .line 829
    move-object/from16 v24, v18

    .line 830
    .line 831
    :goto_1b
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 832
    .line 833
    .line 834
    move-result v2

    .line 835
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    .line 836
    .line 837
    .line 838
    move-result v4

    .line 839
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    .line 840
    .line 841
    .line 842
    move-result-object v5

    .line 843
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    .line 844
    .line 845
    .line 846
    move-result v8

    .line 847
    invoke-static/range {v25 .. v25}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    .line 848
    .line 849
    .line 850
    move-result v9

    .line 851
    if-eqz v9, :cond_25

    .line 852
    .line 853
    iget v6, v14, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 854
    .line 855
    and-int/2addr v6, v7

    .line 856
    if-eqz v6, :cond_23

    .line 857
    .line 858
    goto :goto_1c

    .line 859
    :cond_23
    if-eqz v3, :cond_24

    .line 860
    .line 861
    goto :goto_1c

    .line 862
    :cond_24
    const/4 v3, 0x0

    .line 863
    goto :goto_1d

    .line 864
    :cond_25
    :goto_1c
    const/4 v3, 0x1

    .line 865
    :goto_1d
    if-eqz v9, :cond_26

    .line 866
    .line 867
    const/16 v6, 0x10

    .line 868
    .line 869
    goto :goto_1e

    .line 870
    :cond_26
    const/4 v6, 0x0

    .line 871
    :goto_1e
    if-nez v4, :cond_27

    .line 872
    .line 873
    const/4 v7, 0x0

    .line 874
    :cond_27
    iget v4, v14, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    .line 875
    .line 876
    move-object/from16 v27, v11

    .line 877
    .line 878
    const/4 v11, 0x2

    .line 879
    move-object/from16 v28, v10

    .line 880
    .line 881
    if-eqz v4, :cond_28

    .line 882
    .line 883
    const/4 v10, 0x1

    .line 884
    if-eq v4, v10, :cond_28

    .line 885
    .line 886
    if-eq v4, v11, :cond_28

    .line 887
    .line 888
    const/4 v10, 0x3

    .line 889
    if-eq v4, v10, :cond_28

    .line 890
    .line 891
    const/4 v4, 0x1

    .line 892
    goto :goto_1f

    .line 893
    :cond_28
    const/4 v4, 0x0

    .line 894
    :goto_1f
    if-eqz v9, :cond_2a

    .line 895
    .line 896
    if-eqz v5, :cond_29

    .line 897
    .line 898
    if-nez v8, :cond_2a

    .line 899
    .line 900
    :cond_29
    const-string v5, "dalvik.vm.appimageformat"

    .line 901
    .line 902
    const-string v8, ""

    .line 903
    .line 904
    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 909
    .line 910
    .line 911
    move-result v5

    .line 912
    if-lez v5, :cond_2a

    .line 913
    .line 914
    const/4 v8, 0x1

    .line 915
    goto :goto_20

    .line 916
    :cond_2a
    const/4 v8, 0x0

    .line 917
    :goto_20
    if-eqz v3, :cond_2b

    .line 918
    .line 919
    move v3, v11

    .line 920
    goto :goto_21

    .line 921
    :cond_2b
    const/4 v3, 0x0

    .line 922
    :goto_21
    if-eqz v2, :cond_2c

    .line 923
    .line 924
    move/from16 v2, v17

    .line 925
    .line 926
    goto :goto_22

    .line 927
    :cond_2c
    const/4 v2, 0x0

    .line 928
    :goto_22
    or-int/2addr v2, v3

    .line 929
    or-int/2addr v2, v6

    .line 930
    iget v3, v14, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 931
    .line 932
    and-int/lit8 v5, v3, 0x4

    .line 933
    .line 934
    if-eqz v5, :cond_2d

    .line 935
    .line 936
    const/16 v5, 0x8

    .line 937
    .line 938
    goto :goto_23

    .line 939
    :cond_2d
    const/4 v5, 0x0

    .line 940
    :goto_23
    or-int/2addr v2, v5

    .line 941
    and-int/lit16 v5, v3, 0x200

    .line 942
    .line 943
    if-eqz v5, :cond_2e

    .line 944
    .line 945
    const/16 v5, 0x200

    .line 946
    .line 947
    goto :goto_24

    .line 948
    :cond_2e
    const/4 v5, 0x0

    .line 949
    :goto_24
    or-int/2addr v2, v5

    .line 950
    if-eqz v4, :cond_2f

    .line 951
    .line 952
    const/16 v4, 0x800

    .line 953
    .line 954
    goto :goto_25

    .line 955
    :cond_2f
    const/4 v4, 0x0

    .line 956
    :goto_25
    or-int/2addr v2, v4

    .line 957
    if-eqz v8, :cond_30

    .line 958
    .line 959
    const/16 v4, 0x1000

    .line 960
    .line 961
    goto :goto_26

    .line 962
    :cond_30
    const/4 v4, 0x0

    .line 963
    :goto_26
    or-int/2addr v2, v4

    .line 964
    and-int/lit16 v3, v3, 0x800

    .line 965
    .line 966
    if-eqz v3, :cond_31

    .line 967
    .line 968
    const/16 v3, 0x2000

    .line 969
    .line 970
    goto :goto_27

    .line 971
    :cond_31
    const/4 v3, 0x0

    .line 972
    :goto_27
    or-int/2addr v2, v3

    .line 973
    or-int/2addr v2, v7

    .line 974
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    .line 975
    .line 976
    .line 977
    move-result v26

    .line 978
    move-object/from16 v10, v23

    .line 979
    .line 980
    array-length v9, v10

    .line 981
    move v8, v1

    .line 982
    const/4 v7, 0x0

    .line 983
    :goto_28
    if-ge v7, v9, :cond_38

    .line 984
    .line 985
    aget-object v5, v10, v7

    .line 986
    .line 987
    aget-object v23, v15, v13

    .line 988
    .line 989
    iget v1, v14, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 990
    .line 991
    and-int/lit8 v1, v1, 0x20

    .line 992
    .line 993
    if-eqz v1, :cond_32

    .line 994
    .line 995
    const/16 v29, 0x1

    .line 996
    .line 997
    goto :goto_29

    .line 998
    :cond_32
    const/16 v29, 0x0

    .line 999
    .line 1000
    :goto_29
    iget v6, v14, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    .line 1001
    .line 1002
    move-object/from16 v1, p0

    .line 1003
    .line 1004
    move-object/from16 v2, p1

    .line 1005
    .line 1006
    move-object/from16 v3, p2

    .line 1007
    .line 1008
    move-object v4, v12

    .line 1009
    move/from16 v30, v6

    .line 1010
    .line 1011
    move-object/from16 v6, v25

    .line 1012
    .line 1013
    move/from16 v31, v7

    .line 1014
    .line 1015
    move-object/from16 v7, v23

    .line 1016
    .line 1017
    move v0, v8

    .line 1018
    move/from16 v8, v26

    .line 1019
    .line 1020
    move/from16 v23, v9

    .line 1021
    .line 1022
    const/16 v20, 0x1

    .line 1023
    .line 1024
    move/from16 v9, v16

    .line 1025
    .line 1026
    move-object/from16 v32, v28

    .line 1027
    .line 1028
    move-object/from16 v28, v10

    .line 1029
    .line 1030
    move/from16 v10, v29

    .line 1031
    .line 1032
    move-object/from16 v14, v27

    .line 1033
    .line 1034
    move-object/from16 v27, v15

    .line 1035
    .line 1036
    move v15, v11

    .line 1037
    move-object/from16 v11, v22

    .line 1038
    .line 1039
    move-object/from16 v19, v12

    .line 1040
    .line 1041
    move-object/from16 v12, v21

    .line 1042
    .line 1043
    move/from16 v33, v13

    .line 1044
    .line 1045
    move/from16 v13, v30

    .line 1046
    .line 1047
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)I

    .line 1048
    .line 1049
    .line 1050
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1051
    if-ne v1, v15, :cond_36

    .line 1052
    .line 1053
    const/4 v2, -0x1

    .line 1054
    if-ne v0, v2, :cond_34

    .line 1055
    .line 1056
    if-nez v24, :cond_33

    .line 1057
    .line 1058
    return v0

    .line 1059
    :cond_33
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 1060
    .line 1061
    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 1062
    .line 1063
    .line 1064
    throw v0

    .line 1065
    :cond_34
    if-nez v24, :cond_35

    .line 1066
    .line 1067
    return v1

    .line 1068
    :cond_35
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 1069
    .line 1070
    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 1071
    .line 1072
    .line 1073
    throw v0

    .line 1074
    :cond_36
    const/4 v2, -0x1

    .line 1075
    if-eq v0, v2, :cond_37

    .line 1076
    .line 1077
    if-eqz v1, :cond_37

    .line 1078
    .line 1079
    move v8, v1

    .line 1080
    goto :goto_2a

    .line 1081
    :cond_37
    move v8, v0

    .line 1082
    :goto_2a
    add-int/lit8 v7, v31, 0x1

    .line 1083
    .line 1084
    move-object/from16 v0, p0

    .line 1085
    .line 1086
    move v11, v15

    .line 1087
    move-object/from16 v12, v19

    .line 1088
    .line 1089
    move/from16 v9, v23

    .line 1090
    .line 1091
    move-object/from16 v15, v27

    .line 1092
    .line 1093
    move-object/from16 v10, v28

    .line 1094
    .line 1095
    move-object/from16 v28, v32

    .line 1096
    .line 1097
    move/from16 v13, v33

    .line 1098
    .line 1099
    move-object/from16 v27, v14

    .line 1100
    .line 1101
    move-object/from16 v14, p3

    .line 1102
    .line 1103
    goto :goto_28

    .line 1104
    :catchall_2
    move-exception v0

    .line 1105
    move-object/from16 v18, v24

    .line 1106
    .line 1107
    goto :goto_2c

    .line 1108
    :cond_38
    move v0, v8

    .line 1109
    move/from16 v33, v13

    .line 1110
    .line 1111
    move-object/from16 v14, v27

    .line 1112
    .line 1113
    move-object/from16 v32, v28

    .line 1114
    .line 1115
    const/4 v2, -0x1

    .line 1116
    const/16 v20, 0x1

    .line 1117
    .line 1118
    move-object/from16 v28, v10

    .line 1119
    .line 1120
    move-object/from16 v27, v15

    .line 1121
    .line 1122
    if-nez v24, :cond_39

    .line 1123
    .line 1124
    move v1, v0

    .line 1125
    :goto_2b
    move/from16 v0, v33

    .line 1126
    .line 1127
    add-int/lit8 v13, v0, 0x1

    .line 1128
    .line 1129
    move-object/from16 v0, p0

    .line 1130
    .line 1131
    move-object v11, v14

    .line 1132
    move-object/from16 v15, v27

    .line 1133
    .line 1134
    move-object/from16 v23, v28

    .line 1135
    .line 1136
    move-object/from16 v10, v32

    .line 1137
    .line 1138
    move-object/from16 v14, p3

    .line 1139
    .line 1140
    goto/16 :goto_11

    .line 1141
    .line 1142
    :cond_39
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 1143
    .line 1144
    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 1145
    .line 1146
    .line 1147
    throw v0

    .line 1148
    :goto_2c
    if-eqz v18, :cond_3a

    .line 1149
    .line 1150
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 1151
    .line 1152
    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 1153
    .line 1154
    .line 1155
    throw v0

    .line 1156
    :cond_3a
    throw v0

    .line 1157
    :cond_3b
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    .line 1158
    .line 1159
    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    .line 1160
    .line 1161
    .line 1162
    throw v0

    .line 1163
    :cond_3c
    move-object v14, v11

    .line 1164
    move v0, v13

    .line 1165
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1166
    .line 1167
    const-string v2, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    .line 1168
    .line 1169
    const-string v3, " path="

    .line 1170
    .line 1171
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v2

    .line 1175
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    check-cast v0, Ljava/lang/String;

    .line 1180
    .line 1181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    throw v1

    .line 1192
    :cond_3d
    return v1
.end method

.method public final releaseWakeLockLI(J)V
    .locals 4

    .line 1
    const-string v0, "PackageDexOptimizer"

    .line 2
    .line 3
    const-string v1, "WakeLock "

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v2

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    sub-long/2addr v2, p1

    .line 33
    const-wide/32 p1, 0xa1220

    .line 34
    .line 35
    .line 36
    cmp-long p1, v2, p1

    .line 37
    .line 38
    if-ltz p1, :cond_2

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, " time out. Operation took "

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p2, " ms. Thread: "

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "Error while releasing "

    .line 89
    .line 90
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p0, " lock"

    .line 103
    .line 104
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_2
    return-void
.end method
