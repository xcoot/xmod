.class public abstract Lcom/android/server/knox/dar/Asn1Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getAsn1SequenceFromStream(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .locals 3

    .line 1
    const-string v0, "Expected sequence, found "

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 6
    move-result-object p0

    .line 7
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 13
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 22
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 25
    move-result-object p0

    .line 26
    instance-of v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 28
    if-eqz v2, :cond_0

    .line 30
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 35
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v2, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 64
    :goto_1
    throw p0

    .line 65
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    const-string v1, "Expected octet stream, found "

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 84
    throw v0
.end method

.method public static getByteArrayFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 1

    .line 1
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 13
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    .line 24
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;->getOctets()[B

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    .line 31
    const-string v0, "Expected DEROctetString"

    .line 33
    invoke-direct {p0, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
.end method
