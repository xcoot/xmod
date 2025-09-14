.class public final Lcom/android/server/knox/dar/IntegrityStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthResult:Lcom/android/server/knox/dar/AuthResult;

.field public final mIcd:I

.field public final mKernelStatus:I

.field public final mSystemStatus:I

.field public final mTrustBoot:I

.field public final mWarranty:I


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    .line 8
    .line 9
    iput v2, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    .line 10
    .line 11
    iput v2, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mIcd:I

    .line 12
    .line 13
    iput v2, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mKernelStatus:I

    .line 14
    .line 15
    iput v2, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mSystemStatus:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iput-object v3, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mAuthResult:Lcom/android/server/knox/dar/AuthResult;

    .line 19
    .line 20
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_c

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_b

    .line 43
    .line 44
    if-eq v4, v1, :cond_a

    .line 45
    .line 46
    const/4 v5, 0x2

    .line 47
    if-eq v4, v5, :cond_9

    .line 48
    .line 49
    const/4 v6, 0x3

    .line 50
    if-eq v4, v6, :cond_8

    .line 51
    .line 52
    const/4 v7, 0x4

    .line 53
    if-eq v4, v7, :cond_7

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    const-string/jumbo v8, "invalid tag no : "

    .line 57
    .line 58
    .line 59
    if-eq v4, v7, :cond_0

    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v4, "IntegrityStatus"

    .line 78
    .line 79
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance v4, Lcom/android/server/knox/dar/AuthResult;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iput v2, v4, Lcom/android/server/knox/dar/AuthResult;->mCallerAuthResult:I

    .line 93
    .line 94
    new-array v7, v1, [B

    .line 95
    .line 96
    aput-byte v0, v7, v0

    .line 97
    .line 98
    iput-object v7, v4, Lcom/android/server/knox/dar/AuthResult;->mCallingPackage:[B

    .line 99
    .line 100
    new-array v7, v1, [B

    .line 101
    .line 102
    aput-byte v0, v7, v0

    .line 103
    .line 104
    iput-object v7, v4, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageSigs:[B

    .line 105
    .line 106
    iput v2, v4, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageAuthResult:I

    .line 107
    .line 108
    instance-of v7, v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 109
    .line 110
    if-eqz v7, :cond_6

    .line 111
    .line 112
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_5

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 129
    .line 130
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_4

    .line 135
    .line 136
    if-eq v9, v1, :cond_3

    .line 137
    .line 138
    if-eq v9, v5, :cond_2

    .line 139
    .line 140
    if-eq v9, v6, :cond_1

    .line 141
    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    const-string v9, "AuthResult"

    .line 159
    .line 160
    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 169
    .line 170
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    iput v7, v4, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageAuthResult:I

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_2
    invoke-static {v7}, Lcom/android/server/knox/dar/Asn1Utils;->getByteArrayFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    iput-object v7, v4, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageSigs:[B

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_3
    invoke-static {v7}, Lcom/android/server/knox/dar/Asn1Utils;->getByteArrayFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    iput-object v7, v4, Lcom/android/server/knox/dar/AuthResult;->mCallingPackage:[B

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 200
    .line 201
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    iput v7, v4, Lcom/android/server/knox/dar/AuthResult;->mCallerAuthResult:I

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_5
    iput-object v4, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mAuthResult:Lcom/android/server/knox/dar/AuthResult;

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_6
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    const-string v0, "Expected sequence for root of trust, found "

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    iput v3, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mSystemStatus:I

    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_8
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 259
    .line 260
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    iput v3, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mKernelStatus:I

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 277
    .line 278
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iput v3, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mIcd:I

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_a
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 295
    .line 296
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    iput v3, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_b
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 313
    .line 314
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    iput v3, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_c
    return-void
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "Not support"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string p0, "Abnormal"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const-string p0, "Normal"

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "    TrustBoot : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "\n    Warranty : "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "\n    ICD : "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mIcd:I

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "\n    Kernel Status : "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mKernelStatus:I

    .line 51
    .line 52
    invoke-static {v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "\n    System Status : "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mSystemStatus:I

    .line 65
    .line 66
    invoke-static {v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\n    Caller auth(with PROCA) Status : \n"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mAuthResult:Lcom/android/server/knox/dar/AuthResult;

    .line 79
    .line 80
    if-nez p0, :cond_0

    .line 81
    .line 82
    const-string p0, "Not performed"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/AuthResult;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
