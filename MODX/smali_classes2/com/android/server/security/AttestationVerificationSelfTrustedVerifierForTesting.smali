.class public final Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final GOLDEN_ALIAS:Ljava/lang/String;

.field public static volatile sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;


# instance fields
.field public final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public final mGoldenRootCert:Ljava/security/cert/X509Certificate;


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
    sput-boolean v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->DEBUG:Z

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-class v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ".Golden"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->GOLDEN_ALIAS:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "X.509"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 11
    .line 12
    const-string v0, "PKIX"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 19
    .line 20
    const-string v0, "AndroidKeyStore"

    .line 21
    .line 22
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->GOLDEN_ALIAS:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    const-string v4, "EC"

    .line 39
    .line 40
    invoke-static {v4, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 45
    .line 46
    const/16 v5, 0xc

    .line 47
    .line 48
    invoke-direct {v4, v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "SHA-256"

    .line 60
    .line 61
    const-string v6, "SHA-512"

    .line 62
    .line 63
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v0, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 92
    .line 93
    array-length v1, v0

    .line 94
    add-int/lit8 v1, v1, -0x1

    .line 95
    .line 96
    aget-object v0, v0, v1

    .line 97
    .line 98
    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mGoldenRootCert:Ljava/security/cert/X509Certificate;

    .line 99
    .line 100
    return-void
.end method

.method public static getChallengeFromCert(Ljava/security/cert/X509Certificate;)[B
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    .line 28
    const-string v1, "1.3.6.1.4.1.11129.2.1.17"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method


# virtual methods
.method public final verifyAttestation(I[BLandroid/os/Bundle;)I
    .locals 7

    .line 1
    const-string v0, "AVF"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->DEBUG:Z

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 11
    .line 12
    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 p2, 0x2

    .line 16
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-lez v4, :cond_0

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    const/4 v3, 0x3

    .line 38
    if-ne p1, v3, :cond_5

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v3, 0x1

    .line 45
    if-eq p1, v3, :cond_1

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    const-string p0, "Requirements does not contain exactly 1 key."

    .line 50
    .line 51
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p1, "localbinding.challenge"

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    const-string p0, "Requirements does not contain key: localbinding.challenge"

    .line 66
    .line 67
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v4, 0x0

    .line 72
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 77
    .line 78
    invoke-static {v5}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getChallengeFromCert(Ljava/security/cert/X509Certificate;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-ge p1, p2, :cond_3

    .line 97
    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    const-string p0, "Certificate chain less than 2 in size."

    .line 101
    .line 102
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance p3, Ljava/security/cert/PKIXParameters;

    .line 113
    .line 114
    new-instance v2, Ljava/security/cert/TrustAnchor;

    .line 115
    .line 116
    iget-object v5, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mGoldenRootCert:Ljava/security/cert/X509Certificate;

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    invoke-direct {v2, v5, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 120
    .line 121
    .line 122
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {p3, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v4}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 130
    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 133
    .line 134
    invoke-virtual {p0, p1, p3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    .line 137
    return v3

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    const-string p1, "Invalid certificate chain"

    .line 142
    .line 143
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    if-eqz v1, :cond_5

    .line 148
    .line 149
    const-string p0, "Self-Trusted validation failed; challenge mismatch."

    .line 150
    .line 151
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catchall_1
    move-exception p0

    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    const-string p1, "Unable to parse challenge from certificate."

    .line 159
    .line 160
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_1
    return p2

    .line 164
    :goto_2
    if-eqz v1, :cond_6

    .line 165
    .line 166
    const-string p1, "Unable to parse certificates from attestation"

    .line 167
    .line 168
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .line 170
    .line 171
    :cond_6
    return p2
.end method
