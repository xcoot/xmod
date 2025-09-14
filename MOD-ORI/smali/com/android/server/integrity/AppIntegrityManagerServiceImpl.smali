.class public final Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
.super Landroid/content/integrity/IAppIntegrityManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PACKAGE_INSTALLER:Ljava/util/Set;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mParserSupplier:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string/jumbo v1, "com.google.android.packageinstaller"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "com.android.packageinstaller"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    const-string p2, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    .line 17
    .line 18
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :try_start_0
    const-string p3, "application/vnd.android.package-archive"

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    new-instance p3, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    .line 28
    .line 29
    invoke-direct {p3, p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-virtual {p1, p3, p2, p0, p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string p2, "Mime type malformed: should never happen."

    .line 41
    .line 42
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    new-instance v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda2;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda3;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/List;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    :try_start_3
    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string p1, "Could not read APK directory"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_1
    invoke-virtual {v0}, Landroid/util/apk/SourceStampVerificationResult;->isPresent()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-virtual {p1, p0}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampPresent(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-virtual {p1, p0}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampVerified(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-virtual {p1, p0}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampTrusted(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_2

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 115
    .line 116
    :try_start_5
    const-string v0, "SHA-256"

    .line 117
    .line 118
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p1, p0}, Landroid/content/integrity/AppInstallMetadata$Builder;->setStampCertificateHash(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catch_1
    move-exception p0

    .line 139
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string v0, "Error computing source stamp certificate digest"

    .line 142
    .line 143
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_2
    :goto_2
    return-void
.end method

.method public static getAllowedInstallers(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    const-string v1, "allowed-installers"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    const-string v1, ","

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v1, :cond_2

    .line 26
    .line 27
    aget-object v4, p0, v3

    .line 28
    .line 29
    const-string v5, "\\|"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    array-length v5, v4

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    if-ne v5, v6, :cond_0

    .line 39
    .line 40
    aget-object v5, v4, v2

    .line 41
    .line 42
    invoke-static {v5}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    aget-object v4, v4, v7

    .line 47
    .line 48
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    array-length v5, v4

    .line 53
    if-ne v5, v7, :cond_1

    .line 54
    .line 55
    aget-object v4, v4, v2

    .line 56
    .line 57
    invoke-static {v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, ""

    .line 62
    .line 63
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-object v0
.end method

.method public static getCertificateLineage(Ljava/lang/String;Landroid/content/pm/SigningDetails;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Ljava/lang/String;Landroid/content/pm/SigningDetails;)[Landroid/content/pm/Signature;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v1, p0

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    array-length v1, p0

    .line 26
    array-length v4, p1

    .line 27
    add-int/2addr v1, v4

    .line 28
    new-array v1, v1, [Landroid/content/pm/Signature;

    .line 29
    .line 30
    move v4, v3

    .line 31
    :goto_0
    array-length v5, p0

    .line 32
    if-ge v4, v5, :cond_0

    .line 33
    .line 34
    aget-object v5, p0, v4

    .line 35
    .line 36
    aput-object v5, v1, v4

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p0, v3

    .line 42
    :goto_1
    array-length v5, p1

    .line 43
    if-ge p0, v5, :cond_1

    .line 44
    .line 45
    aget-object v5, p1, p0

    .line 46
    .line 47
    aput-object v5, v1, v4

    .line 48
    .line 49
    add-int/2addr v4, v2

    .line 50
    add-int/lit8 p0, p0, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object p0, v1

    .line 54
    :cond_2
    array-length p1, p0

    .line 55
    :goto_2
    if-ge v3, p1, :cond_3

    .line 56
    .line 57
    aget-object v1, p0, v3

    .line 58
    .line 59
    invoke-static {v1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    return-object v0
.end method

.method public static getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string p0, "X509"

    .line 11
    .line 12
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string v1, "Error getting X509Certificate"

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    if-eqz p0, :cond_1

    .line 36
    .line 37
    :try_start_2
    const-string v0, "SHA-256"

    .line 38
    .line 39
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    return-object p0

    .line 56
    :catch_1
    move-exception p0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string v1, "Error error computing fingerprint"

    .line 60
    .line 61
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    const-string v0, "X509 Certificate not found"

    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :catch_2
    move-exception p0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    const-string v1, "Error getting CertificateFactory"

    .line 77
    .line 78
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public static getInstallationPath(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "file"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Cannot read file for "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "Cannot find file for "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "Unsupported scheme for "

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v0, "Null data uri"

    .line 101
    .line 102
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public static getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    const-string v1, "SHA-256 algorithm not found"

    .line 35
    .line 36
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public static getSignatures(Ljava/lang/String;Landroid/content/pm/SigningDetails;)[Landroid/content/pm/Signature;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Package signature not found in "

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method


# virtual methods
.method public final getAllowedRuleProviderSystemApps()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x1070111

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v1
.end method

.method public final getCallerPackageNameOrThrow(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    check-cast v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/String;

    .line 57
    .line 58
    :goto_1
    if-eqz p0, :cond_3

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    .line 63
    const-string p1, "Only system packages specified in config_integrityRuleProviderPackages are allowed to call this method."

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final getCurrentRuleSetProvider()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mRuleProvider:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, ""

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public final getCurrentRuleSetVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mVersion:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, ""

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public final getCurrentRules()Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string v1, "AppIntegrityManagerServiceImpl"

    .line 15
    .line 16
    const-string v2, "Error getting current rules"

    .line 17
    .line 18
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "adb"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "Installer package "

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " not found."

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "AppIntegrityManagerServiceImpl"

    .line 46
    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Ljava/lang/String;Landroid/content/pm/SigningDetails;)[Landroid/content/pm/Signature;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    array-length p1, p0

    .line 73
    const/4 v1, 0x0

    .line 74
    :goto_0
    if-ge v1, p1, :cond_2

    .line 75
    .line 76
    aget-object v2, p0, v1

    .line 77
    .line 78
    invoke-static {v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return-object v0

    .line 89
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public final getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string p0, "adb"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v3, "AppIntegrityManagerServiceImpl"

    .line 24
    .line 25
    const-string v4, ""

    .line 26
    .line 27
    if-gez v1, :cond_1

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p1, "Installer cannot be determined: installer: "

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " installer UID: "

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-object v4

    .line 55
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    return-object v4

    .line 66
    :cond_2
    sget-object v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    .line 67
    .line 68
    check-cast v1, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    const-string v0, "android.intent.extra.ORIGINATING_UID"

    .line 77
    .line 78
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-gez p1, :cond_3

    .line 83
    .line 84
    const-string p0, "Installer is package installer but originating UID not found."

    .line 85
    .line 86
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return-object v4

    .line 90
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    const-string p0, "No package found associated with originating UID "

    .line 101
    .line 102
    invoke-static {p1, p0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v4

    .line 106
    :cond_4
    const/4 p1, 0x0

    .line 107
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Ljava/lang/String;

    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_5
    return-object v0
.end method

.method public final getPackageListForUid(I)Ljava/util/List;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "No packages were found for uid: %d"

    .line 25
    .line 26
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "AppIntegrityManagerServiceImpl"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final getPackageSigningAndMetadata(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 5

    .line 1
    const-string v0, "AppIntegrityManagerServiceImpl"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_1
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-static {v3, v1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    :try_start_3
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/content/pm/SigningDetails;

    .line 60
    .line 61
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :goto_0
    if-eqz p0, :cond_1

    .line 74
    .line 75
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 84
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "Exception reading "

    .line 87
    .line 88
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    return-object v2
.end method

.method public final getWhitelistedRuleProviders()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final isSystemApp(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :catch_0
    :cond_0
    return v0
.end method

.method public final updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v7, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    move-object v1, v7

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
