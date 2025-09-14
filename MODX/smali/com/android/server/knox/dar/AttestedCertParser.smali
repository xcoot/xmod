.class public final Lcom/android/server/knox/dar/AttestedCertParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKnoxIngetrity:Lcom/android/server/knox/dar/IntegrityStatus;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "1.3.6.1.4.1.236.11.3.23.7"

    .line 6
    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v1, "AttestedCertParser"

    .line 13
    if-nez p1, :cond_0

    .line 15
    const-string/jumbo p1, "getKnoxExtensionSequence : not include knox extension"

    .line 18
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 p1, 0x0

    .line 22
    goto/16 :goto_1

    .line 24
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    array-length v3, p1

    .line 30
    move v4, v0

    .line 31
    :goto_0
    if-ge v4, v3, :cond_1

    .line 33
    aget-byte v5, p1, v4

    .line 35
    and-int/lit16 v5, v5, 0xff

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v5

    .line 41
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    const-string v6, "%02x"

    .line 47
    const/4 v7, 0x1

    .line 48
    invoke-static {v6, v5, v2, v4, v7}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 51
    move-result v4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x2

    .line 58
    const/4 v4, 0x4

    .line 59
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    const/16 v6, 0xa

    .line 65
    const/16 v7, 0xc

    .line 67
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    const/16 v6, 0x10

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 76
    move-result v5

    .line 77
    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 80
    move-result v2

    .line 81
    const-string/jumbo v6, "ro.product.first_api_level"

    .line 84
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v8, "firstApiLevel = "

    .line 93
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v7

    .line 103
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v8, "lengthOfextenstion = "

    .line 111
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 121
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v8, "lengthOfvalue = "

    .line 129
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v7

    .line 139
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v7

    .line 146
    if-nez v7, :cond_2

    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    move-result v6

    .line 152
    const/16 v7, 0x1a

    .line 154
    if-ge v6, v7, :cond_2

    .line 156
    sub-int/2addr v5, v4

    .line 157
    if-eq v5, v2, :cond_2

    .line 159
    add-int/lit8 v4, v2, 0x6

    .line 161
    new-array v5, v4, [B

    .line 163
    invoke-static {p1, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 p1, v2, 0x4

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 174
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 177
    move-result-object p1

    .line 178
    const/4 v6, 0x1

    .line 179
    invoke-static {p1, v6, v5, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    add-int/2addr v2, v3

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 190
    move-result-object p1

    .line 191
    const/4 v2, 0x3

    .line 192
    invoke-static {p1, v6, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    move-object p1, v5

    .line 196
    :cond_2
    array-length v2, p1

    .line 197
    if-eqz v2, :cond_6

    .line 199
    :try_start_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 201
    invoke-direct {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :try_start_1
    invoke-static {v2}, Lcom/android/server/knox/dar/Asn1Utils;->getAsn1SequenceFromStream(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 207
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    :goto_1
    if-eqz p1, :cond_5

    .line 213
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 216
    move-result v2

    .line 217
    if-ge v0, v2, :cond_5

    .line 219
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 222
    move-result-object v2

    .line 223
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 225
    if-eqz v3, :cond_4

    .line 227
    move-object v3, v2

    .line 228
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 230
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 233
    move-result v3

    .line 234
    const/4 v4, 0x5

    .line 235
    if-eq v3, v4, :cond_3

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    .line 239
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const-string v4, "Skip unknown case : "

    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 249
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 252
    move-result v2

    .line 253
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v2

    .line 260
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    goto :goto_3

    .line 264
    :catch_0
    move-exception p0

    .line 265
    goto :goto_4

    .line 266
    :cond_3
    new-instance v3, Lcom/android/server/knox/dar/IntegrityStatus;

    .line 268
    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 270
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 273
    move-result-object v2

    .line 274
    invoke-direct {v3, v2}, Lcom/android/server/knox/dar/IntegrityStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 277
    iput-object v3, p0, Lcom/android/server/knox/dar/AttestedCertParser;->mKnoxIngetrity:Lcom/android/server/knox/dar/IntegrityStatus;

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    .line 281
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    const-string v4, "Found [Integrity Status] :\n"

    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v3}, Lcom/android/server/knox/dar/IntegrityStatus;->toString()Ljava/lang/String;

    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v2

    .line 300
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 303
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 305
    goto :goto_2

    .line 306
    :goto_4
    const-string/jumbo p1, "sequence index is too small to get challenge or idAttest"

    .line 309
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 315
    :cond_5
    return-void

    .line 316
    :catch_1
    move-exception p0

    .line 317
    goto :goto_6

    .line 318
    :catchall_0
    move-exception p0

    .line 319
    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 322
    goto :goto_5

    .line 323
    :catchall_1
    move-exception p1

    .line 324
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 327
    :goto_5
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 328
    :goto_6
    new-instance p1, Ljava/security/cert/CertificateParsingException;

    .line 330
    const-string v0, "Failed to parse SEQUENCE"

    .line 332
    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    throw p1

    .line 336
    :cond_6
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    .line 338
    const-string p1, "Did not find extension with OID 1.3.6.1.4.1.236.11.3.23.7"

    .line 340
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 343
    throw p0
.end method
