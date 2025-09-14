.class public final Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAction:I

.field public final mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field public final mDbColumn:Ljava/lang/String;

.field public final mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    .line 6
    const-string/jumbo v0, "trustedCaList"

    .line 9
    if-eqz p2, :cond_3

    .line 11
    const/4 v1, 0x1

    .line 12
    const-string/jumbo v2, "untrustedCertsList"

    .line 15
    if-eq p2, v1, :cond_2

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p2, v1, :cond_1

    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq p2, v1, :cond_0

    .line 23
    const/4 v1, 0x4

    .line 24
    if-eq p2, v1, :cond_3

    .line 26
    const/4 v0, 0x5

    .line 27
    if-eq p2, v0, :cond_2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 32
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 34
    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 36
    iget-object p1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 38
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p2, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 43
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 45
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 47
    iget-object p1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 49
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object p2, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 54
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 56
    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 58
    iget-object p1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 60
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object p2, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 65
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 69
    iget-object p1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 71
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 73
    :goto_0
    return-void
.end method
