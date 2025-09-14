.class public final Lcom/android/server/pm/AsecInstallArgs;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public cid:Ljava/lang/String;

.field public final mInstallFlags:I

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public packagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/InstallSource;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/pm/AsecInstallArgs;->mInstallFlags:I

    .line 7
    .line 8
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/pm/InstallSource;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final pendingPostDeleteLI(IZ)Z
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v1, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/content/pm/parsing/PackageLite;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    const-string v3, "AsecInstallArgs.doPostDeleteLI("

    .line 55
    .line 56
    const-string v4, "): "

    .line 57
    .line 58
    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v1}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, ", codePath: "

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "PackageManager"

    .line 84
    .line 85
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v1}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget-object v4, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 116
    .line 117
    .line 118
    xor-int/lit8 v3, p2, 0x1

    .line 119
    .line 120
    invoke-static {v1, v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    if-eqz p2, :cond_3

    .line 128
    .line 129
    const/4 v0, 0x5

    .line 130
    if-ge p1, v0, :cond_2

    .line 131
    .line 132
    iget-object v3, p0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 135
    .line 136
    new-instance v4, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AsecInstallArgs;ZI)V

    .line 139
    .line 140
    .line 141
    const v5, 0xea60

    .line 142
    .line 143
    .line 144
    mul-int/2addr v5, p1

    .line 145
    int-to-long v5, v5

    .line 146
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    .line 148
    .line 149
    :cond_2
    const/4 v3, 0x4

    .line 150
    if-ne p1, v3, :cond_3

    .line 151
    .line 152
    const-string p1, "ASEC unmount failed and will try for last chance: "

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    move v0, v2

    .line 162
    :goto_0
    if-nez v0, :cond_4

    .line 163
    .line 164
    if-eqz p2, :cond_4

    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    :cond_4
    xor-int/lit8 p0, v0, 0x1

    .line 172
    .line 173
    return p0
.end method

.method public final setMountPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/io/File;

    .line 7
    .line 8
    const-string/jumbo v1, "pkg.apk"

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 32
    .line 33
    :goto_0
    return-void
.end method
