.class public final Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;
.super Lcom/android/internal/os/IBinaryTransparencyService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;-><init>()V

    .line 6
    return-void
.end method

.method public static computeApkContentDigest(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, p0, v1, v2}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const-string v1, "Failed to compute content digest for "

    .line 19
    const-string v2, " due to: "

    .line 21
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object p0

    .line 25
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    const-string v0, "TransparencyService"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    .line 49
    iget-object p0, p0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->contentDigests:Ljava/util/Map;

    .line 51
    return-object p0
.end method

.method public static computePackageSignerSha256Digests(Landroid/content/pm/SigningInfo;)[Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const-string p0, "TransparencyService"

    .line 5
    const-string/jumbo v0, "signingInfo is null"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v1, :cond_1

    .line 27
    aget-object v4, p0, v3

    .line 29
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4, v2}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x1

    .line 48
    new-array p0, p0, [Ljava/lang/String;

    .line 50
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    check-cast p0, [Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public static measureApk(Ljava/lang/String;)Lcom/android/server/BinaryTransparencyService$Digest;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->computeApkContentDigest(Ljava/lang/String;)Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "Failed to compute content digest for "

    .line 9
    const-string v1, "TransparencyService"

    .line 11
    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 26
    new-instance p0, Lcom/android/server/BinaryTransparencyService$Digest;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [B

    .line 38
    invoke-direct {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$Digest;-><init>(I[B)V

    .line 41
    return-object p0

    .line 42
    :cond_1
    const/4 v1, 0x2

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 53
    new-instance p0, Lcom/android/server/BinaryTransparencyService$Digest;

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, [B

    .line 65
    invoke-direct {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$Digest;-><init>(I[B)V

    .line 68
    return-object p0

    .line 69
    :cond_2
    :goto_0
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    .line 72
    move-result-object v0

    .line 73
    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B

    .line 76
    move-result-object p0

    .line 77
    new-instance v0, Lcom/android/server/BinaryTransparencyService$Digest;

    .line 79
    const/4 v1, 0x4

    .line 80
    invoke-direct {v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$Digest;-><init>(I[B)V

    .line 83
    return-object v0
.end method

.method public static writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    .line 3
    iget-wide v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->longVersion:J

    .line 5
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digest:[B

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v0, v4}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    :goto_0
    move-object v4, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    iget v5, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digestAlgorithm:I

    .line 20
    iget-object v6, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->signerDigests:[Ljava/lang/String;

    .line 22
    iget v7, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    .line 24
    iget-object v8, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiator:Ljava/lang/String;

    .line 26
    iget-object v9, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiatorSignerDigests:[Ljava/lang/String;

    .line 28
    iget-object v10, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->installer:Ljava/lang/String;

    .line 30
    iget-object v11, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->originator:Ljava/lang/String;

    .line 32
    iget-object v12, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->splitName:Ljava/lang/String;

    .line 34
    const/16 v0, 0x236

    .line 36
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JLjava/lang/String;I[Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final collectAllApexInfo(Z)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 8
    invoke-static {v1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mgetCurrentInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 28
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 30
    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 32
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 37
    move-result-object v3

    .line 38
    const-string v4, "TransparencyService"

    .line 40
    if-nez v3, :cond_0

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    const-string v5, "Package state is unavailable, ignoring the APEX "

    .line 46
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 51
    invoke-static {v3, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 57
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 59
    if-nez v2, :cond_1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    const-string v5, "Skipping the missing APK in "

    .line 65
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->measureApk(Ljava/lang/String;)Lcom/android/server/BinaryTransparencyService$Digest;

    .line 90
    move-result-object v2

    .line 91
    new-instance v4, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;

    .line 93
    invoke-direct {v4}, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;-><init>()V

    .line 96
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 98
    iput-object v5, v4, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->packageName:Ljava/lang/String;

    .line 100
    iget-wide v5, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 102
    iput-wide v5, v4, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->longVersion:J

    .line 104
    iget-object v5, v2, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    .line 106
    iput-object v5, v4, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digest:[B

    .line 108
    iget v2, v2, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    .line 110
    iput v2, v4, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digestAlgorithm:I

    .line 112
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSigningInfo()Landroid/content/pm/SigningInfo;

    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->computePackageSignerSha256Digests(Landroid/content/pm/SigningInfo;)[Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    iput-object v2, v4, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->signerDigests:[Ljava/lang/String;

    .line 122
    if-eqz p1, :cond_2

    .line 124
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 126
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 139
    iput-object v2, v4, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->moduleName:Ljava/lang/String;

    .line 141
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    goto/16 :goto_0

    .line 146
    :cond_3
    return-object v0
.end method

.method public final collectAllSilentInstalledMbaInfo(Landroid/os/Bundle;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 8
    invoke-static {v1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mgetNewlyInstalledMbas(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 28
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 39
    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 41
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 43
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_1

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    const-string v4, "Package state is unavailable, ignoring the package "

    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 58
    const-string v4, "TransparencyService"

    .line 60
    invoke-static {v3, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x3

    .line 65
    invoke-virtual {p0, v3, v2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-object v0
.end method

.method public final collectAllUpdatedPreloadInfo(Landroid/os/Bundle;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 8
    iget-object v1, v1, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 15
    iget-object v1, v1, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 17
    new-instance v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;

    .line 19
    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 25
    return-object v0
.end method

.method public final collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    .line 13
    move-result-wide v2

    .line 14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getSigningInfo()Landroid/content/pm/SigningInfo;

    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->computePackageSignerSha256Digests(Landroid/content/pm/SigningInfo;)[Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 25
    move-result-object v5

    .line 26
    const-string v6, "TransparencyService"

    .line 28
    if-nez v5, :cond_0

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    const-string p2, "Skipping the missing APK in "

    .line 34
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object v0

    .line 52
    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v5

    .line 60
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 66
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 72
    new-instance v8, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    .line 74
    invoke-direct {v8}, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;-><init>()V

    .line 77
    iput-object v1, v8, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    .line 79
    iput-wide v2, v8, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->longVersion:J

    .line 81
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    .line 84
    move-result-object v9

    .line 85
    iput-object v9, v8, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->splitName:Ljava/lang/String;

    .line 87
    iput-object v4, v8, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->signerDigests:[Ljava/lang/String;

    .line 89
    iput p2, v8, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    .line 91
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 94
    move-result-object v7

    .line 95
    invoke-static {v7}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->measureApk(Ljava/lang/String;)Lcom/android/server/BinaryTransparencyService$Digest;

    .line 98
    move-result-object v7

    .line 99
    iget-object v9, v7, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    .line 101
    iput-object v9, v8, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digest:[B

    .line 103
    iget v7, v7, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    .line 105
    iput v7, v8, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digestAlgorithm:I

    .line 107
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const/4 p2, 0x0

    .line 112
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    .line 118
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 120
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 129
    move-result-object p0

    .line 130
    const/4 v1, 0x0

    .line 131
    if-nez p0, :cond_2

    .line 133
    const-string p0, "Error obtaining an instance of PackageManager."

    .line 135
    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 142
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception p0

    .line 145
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 148
    :goto_1
    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    iput-object p0, p2, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiator:Ljava/lang/String;

    .line 156
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageSigningInfo()Landroid/content/pm/SigningInfo;

    .line 159
    move-result-object p0

    .line 160
    if-eqz p0, :cond_3

    .line 162
    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->computePackageSignerSha256Digests(Landroid/content/pm/SigningInfo;)[Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 166
    iput-object p0, p2, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiatorSignerDigests:[Ljava/lang/String;

    .line 168
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 172
    iput-object p0, p2, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->installer:Ljava/lang/String;

    .line 174
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    .line 177
    move-result-object p0

    .line 178
    iput-object p0, p2, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->originator:Ljava/lang/String;

    .line 180
    :cond_4
    return-object v0
.end method

.method public final getSignedImageInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 3
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;-><init>(Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;)V

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    return-void
.end method

.method public final recordMeasurementsForAllPackages()V
    .locals 15

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 7
    iget-wide v2, v2, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    .line 9
    sub-long v2, v0, v2

    .line 11
    const-wide/32 v4, 0x5265c00

    .line 14
    cmp-long v2, v2, v4

    .line 16
    const-string v3, "TransparencyService"

    .line 18
    if-gez v2, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "Skip measurement since the last measurement was only taken at "

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 29
    iget-wide v1, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    const-string p0, " within the cooldown period"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    const-string v4, "Measurement was last taken at "

    .line 51
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v4, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 56
    iget-wide v4, v4, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    .line 58
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    const-string v4, " and is now updated to: "

    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 78
    iput-wide v0, v2, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    .line 80
    new-instance v2, Landroid/os/Bundle;

    .line 82
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->collectAllApexInfo(Z)Ljava/util/List;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object v4

    .line 96
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result v5

    .line 100
    const/4 v6, 0x1

    .line 101
    if-eqz v5, :cond_2

    .line 103
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;

    .line 109
    iget-object v7, v5, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->packageName:Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    iget-object v9, v5, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->packageName:Ljava/lang/String;

    .line 116
    iget-wide v10, v5, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->longVersion:J

    .line 118
    iget-object v6, v5, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digest:[B

    .line 120
    if-eqz v6, :cond_1

    .line 122
    invoke-static {v6, v3}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 125
    move-result-object v6

    .line 126
    :goto_1
    move-object v12, v6

    .line 127
    goto :goto_2

    .line 128
    :cond_1
    const/4 v6, 0x0

    .line 129
    goto :goto_1

    .line 130
    :goto_2
    iget v13, v5, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digestAlgorithm:I

    .line 132
    iget-object v14, v5, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->signerDigests:[Ljava/lang/String;

    .line 134
    const/16 v8, 0x1a5

    .line 136
    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JLjava/lang/String;I[Ljava/lang/String;)V

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->collectAllUpdatedPreloadInfo(Landroid/os/Bundle;)Ljava/util/List;

    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v3

    .line 150
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_3

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    .line 162
    iget-object v5, v4, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    invoke-static {v4}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    .line 170
    goto :goto_3

    .line 171
    :cond_3
    const-wide/32 v3, 0xea4f847

    .line 174
    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_4

    .line 180
    invoke-virtual {p0, v2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->collectAllSilentInstalledMbaInfo(Landroid/os/Bundle;)Ljava/util/List;

    .line 183
    move-result-object p0

    .line 184
    check-cast p0, Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    move-result-object p0

    .line 190
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_4

    .line 196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    move-result-object v3

    .line 200
    check-cast v3, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    .line 202
    iget-object v4, v3, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    .line 204
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    .line 210
    goto :goto_4

    .line 211
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 214
    move-result-wide v2

    .line 215
    sub-long/2addr v2, v0

    .line 216
    sget-object p0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    .line 218
    long-to-float v0, v2

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 222
    return-void
.end method
