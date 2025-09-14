.class public final Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

.field public static final DEBUG:Z


# instance fields
.field public final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public final mContext:Landroid/content/Context;

.field public final mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

.field public final mRevocationEnabled:Z

.field public final mTestLocalPatchDate:Ljava/time/LocalDate;

.field public final mTestSystemDate:Ljava/time/LocalDate;

.field public final mTrustAnchors:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AVF"

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sput-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    .line 18
    .line 19
    const-string v0, "AndroidSystem"

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 4
    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 5
    const-string p2, "PKIX"

    invoke-static {p2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 6
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107020b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 9
    new-instance v4, Ljava/security/cert/TrustAnchor;

    iget-object v5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 10
    const-string v7, "\\s+"

    const-string v8, "\n"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    const-string v7, "-BEGIN\\nCERTIFICATE-"

    const-string v8, "-BEGIN CERTIFICATE-"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    const-string v7, "-END\\nCERTIFICATE-"

    const-string v8, "-END CERTIFICATE-"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 14
    invoke-direct {v6, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 15
    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-direct {v4, v3, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 16
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 20
    iput-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 21
    iput-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void

    .line 22
    :goto_1
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 23
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "Invalid trust anchor certificate."

    invoke-direct {p1, p2, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;Ljava/util/Set;ZLjava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 27
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 28
    const-string p1, "PKIX"

    invoke-static {p1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 29
    iput-object p3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 30
    iput-boolean p4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 31
    iput-object p5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 32
    iput-object p6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void
.end method

.method public static checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z
    .locals 2

    .line 1
    iput p2, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingType:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    if-ne p2, p0, :cond_0

    .line 9
    .line 10
    const-string p0, "localbinding.challenge"

    .line 11
    .line 12
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p2, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    const-string p0, "Provided challenge does not match leaf certificate challenge."

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p3, "Unsupported local binding type "

    .line 39
    .line 40
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Landroid/security/attestationverification/AttestationVerificationManager;->localBindingTypeToString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    const-string p2, "localbinding.public_key"

    .line 59
    .line 60
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_2

    .line 77
    .line 78
    const-string p0, "Provided public key does not match leaf certificate public key."

    .line 79
    .line 80
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    :cond_2
    const/4 p0, 0x1

    .line 85
    iput-boolean p0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingOk:Z

    .line 86
    .line 87
    const-string p2, "android.key_owned_by_system"

    .line 88
    .line 89
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iput-boolean p0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwnershipChecked:Z

    .line 96
    .line 97
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 104
    .line 105
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-object p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    .line 114
    .line 115
    invoke-interface {p2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-nez p2, :cond_3

    .line 120
    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p2, "Owner is not system, packages="

    .line 124
    .line 125
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string p0, "Certificate public key is not owned by the AndroidSystem."

    .line 139
    .line 140
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return v1

    .line 144
    :cond_3
    iput-boolean p0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwned:Z

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    const-string p1, "The value of the requirement key android.key_owned_by_system cannot be false. You can remove the key if you don\'t want to verify it."

    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_5
    :goto_0
    return p0
.end method

.method public static debugVerboseLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AVF"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final checkAttestationForPeerDeviceProfile(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z
    .locals 6

    .line 1
    const-string v0, "VerifiedBootLocked is not set."

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    const-string v1, "Attestation version is not at least 3 (Keymaster 4)."

    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationVersionAtLeast3:Z

    .line 22
    .line 23
    move v1, v4

    .line 24
    :goto_0
    iget-object v2, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v5, 0x4

    .line 31
    if-ge v2, v5, :cond_1

    .line 32
    .line 33
    const-string v1, "Keymaster version is not at least 4."

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterVersionAtLeast4:Z

    .line 41
    .line 42
    :goto_1
    iget-object v2, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    .line 43
    .line 44
    if-eqz v2, :cond_11

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const v5, 0x186a0

    .line 51
    .line 52
    .line 53
    if-ge v2, v5, :cond_2

    .line 54
    .line 55
    const-string v1, "Android OS version is not 10+."

    .line 56
    .line 57
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move v1, v3

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsVersionAtLeast10:Z

    .line 63
    .line 64
    :goto_2
    iget-boolean v2, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    .line 65
    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    const-string v1, "Key is not HW backed."

    .line 69
    .line 70
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move v1, v3

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyHwBacked:Z

    .line 76
    .line 77
    :goto_3
    iget-boolean v2, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    const-string v1, "Keymaster is not HW backed."

    .line 82
    .line 83
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    move v1, v3

    .line 87
    goto :goto_4

    .line 88
    :cond_4
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterHwBacked:Z

    .line 89
    .line 90
    :goto_4
    sget-object v2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 91
    .line 92
    iget-object v5, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 93
    .line 94
    if-eq v5, v2, :cond_5

    .line 95
    .line 96
    const-string v1, "Boot state not Verified."

    .line 97
    .line 98
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move v1, v3

    .line 102
    goto :goto_5

    .line 103
    :cond_5
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBootStateIsVerified:Z

    .line 104
    .line 105
    :goto_5
    :try_start_0
    iget-object v2, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz v2, :cond_7

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    const-string v1, "Verified boot state is not locked."

    .line 116
    .line 117
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_7

    .line 121
    :catch_0
    move-exception v1

    .line 122
    goto :goto_6

    .line 123
    :cond_6
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mVerifiedBootStateLocked:Z

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_6
    sget-boolean v2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    .line 133
    .line 134
    if-eqz v2, :cond_8

    .line 135
    .line 136
    const-string v2, "AVF"

    .line 137
    .line 138
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .line 140
    .line 141
    :cond_8
    :goto_7
    move v1, v3

    .line 142
    :goto_8
    iget-object v0, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    .line 143
    .line 144
    if-eqz v0, :cond_10

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_9

    .line 155
    .line 156
    const-string v0, "OS patch level is not within valid range."

    .line 157
    .line 158
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move v1, v3

    .line 162
    goto :goto_9

    .line 163
    :cond_9
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsPatchLevelInRange:Z

    .line 164
    .line 165
    :goto_9
    iget-object v0, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    .line 166
    .line 167
    const-string v2, "KeyBootPatchLevel is not set."

    .line 168
    .line 169
    if-eqz v0, :cond_f

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    const-string v5, "Boot patch level is not within valid range."

    .line 180
    .line 181
    if-nez v0, :cond_a

    .line 182
    .line 183
    invoke-static {v5}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    move v1, v3

    .line 187
    goto :goto_a

    .line 188
    :cond_a
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    .line 189
    .line 190
    :goto_a
    iget-object v0, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    .line 191
    .line 192
    if-eqz v0, :cond_e

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_b

    .line 203
    .line 204
    const-string v0, "Vendor patch level is not within valid range."

    .line 205
    .line 206
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    move v1, v3

    .line 210
    goto :goto_b

    .line 211
    :cond_b
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyVendorPatchLevelInRange:Z

    .line 212
    .line 213
    :goto_b
    iget-object p1, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    .line 214
    .line 215
    if-eqz p1, :cond_d

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-nez p0, :cond_c

    .line 226
    .line 227
    invoke-static {v5}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_c

    .line 231
    :cond_c
    iput-boolean v4, p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    .line 232
    .line 233
    move v3, v1

    .line 234
    :goto_c
    return v3

    .line 235
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0

    .line 241
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 242
    .line 243
    const-string p1, "KeyVendorPatchLevel is not set."

    .line 244
    .line 245
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p0

    .line 249
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 250
    .line 251
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p0

    .line 255
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 256
    .line 257
    const-string p1, "KeyOsPatchLevel is not set."

    .line 258
    .line 259
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw p0

    .line 263
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 264
    .line 265
    const-string p1, "KeyOsVersion is not set."

    .line 266
    .line 267
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p0
.end method

.method public final getCertificates([B)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method

.method public final isValidPatchLevel(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    sget-object p0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_1
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    .line 27
    .line 28
    invoke-virtual {v2, p0, v0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    const-wide/16 v5, 0xc

    .line 33
    .line 34
    cmp-long v0, v3, v5

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    return v3

    .line 40
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v4, 0x6

    .line 49
    if-eq v0, v4, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v7, 0x8

    .line 56
    .line 57
    if-eq v0, v7, :cond_3

    .line 58
    .line 59
    const-string p0, "Patch level is not in format YYYYMM or YYYYMMDD"

    .line 60
    .line 61
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_3
    const/4 v0, 0x4

    .line 66
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-static {v7, p1, v3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-lez v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v2, p0, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    .line 93
    .line 94
    .line 95
    move-result-wide p0

    .line 96
    cmp-long p0, p0, v5

    .line 97
    .line 98
    if-gtz p0, :cond_4

    .line 99
    .line 100
    :goto_2
    move v1, v3

    .line 101
    :cond_4
    move v3, v1

    .line 102
    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-gez v0, :cond_6

    .line 108
    .line 109
    invoke-virtual {v2, p1, p0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    .line 110
    .line 111
    .line 112
    move-result-wide p0

    .line 113
    cmp-long p0, p0, v5

    .line 114
    .line 115
    if-gtz p0, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    :goto_3
    return v3

    .line 119
    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p1, "Build.VERSION.SECURITY_PATCH: "

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sget-object p1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, " is not in format YYYY-MM-DD"

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return v1
.end method

.method public final validateCertificateChain(Ljava/util/List;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-lt v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/security/cert/PKIXParameters;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;-><init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const-string p0, "Certificate chain less than 2 in size."

    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method
