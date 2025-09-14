.class public final Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChallenge:[B

.field public final mDeviceAttestation:Z

.field public final mSAKUidRequired:Z

.field public final mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field public mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSAKUidRequired:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v4, "SHA-224"

    .line 26
    .line 27
    const-string v5, "SHA-256"

    .line 28
    .line 29
    const-string v2, "NONE"

    .line 30
    .line 31
    const-string v3, "SHA-1"

    .line 32
    .line 33
    const-string v6, "SHA-384"

    .line 34
    .line 35
    const-string v7, "SHA-512"

    .line 36
    .line 37
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string p1, "challenge == null"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p1, "alias must not be empty"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method
