.class public final Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mApplicationPackageNameVersion:Ljava/util/Map;

.field public mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

.field public mAttestationHardwareBacked:Z

.field public mAttestationVersion:Ljava/lang/Integer;

.field public mKeyBootPatchLevel:Ljava/lang/Integer;

.field public mKeyOsPatchLevel:Ljava/lang/Integer;

.field public mKeyOsVersion:Ljava/lang/Integer;

.field public mKeyVendorPatchLevel:Ljava/lang/Integer;

.field public mKeymasterHardwareBacked:Z

.field public mKeymasterVersion:Ljava/lang/Integer;

.field public mVerifiedBootLocked:Ljava/lang/Boolean;

.field public mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;


# direct methods
.method public static fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .locals 17

    .line 1
    new-instance v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    .line 11
    .line 12
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-boolean v2, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    .line 59
    const-string v5, "1.3.6.1.4.1.11129.2.1.17"

    .line 60
    .line 61
    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 69
    .line 70
    if-eqz v3, :cond_17

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iput-object v4, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValueExact()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    sget-object v6, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->SOFTWARE:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 102
    .line 103
    sget-object v7, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 104
    .line 105
    const-string v8, "Invalid security level."

    .line 106
    .line 107
    sget-object v9, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->STRONG_BOX:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 108
    .line 109
    const/4 v10, 0x2

    .line 110
    if-eqz v5, :cond_2

    .line 111
    .line 112
    if-eq v5, v4, :cond_1

    .line 113
    .line 114
    if-ne v5, v10, :cond_0

    .line 115
    .line 116
    move-object v5, v9

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_1
    move-object v5, v7

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    move-object v5, v6

    .line 127
    :goto_0
    if-ne v5, v7, :cond_3

    .line 128
    .line 129
    move v5, v4

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move v5, v2

    .line 132
    :goto_1
    iput-boolean v5, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    .line 133
    .line 134
    const/4 v5, 0x4

    .line 135
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-static {v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    iput-object v5, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    .line 144
    .line 145
    invoke-virtual {v3, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-static {v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iput-object v5, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    .line 158
    .line 159
    const/4 v5, 0x5

    .line 160
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-static {v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    .line 165
    .line 166
    .line 167
    const/4 v5, 0x3

    .line 168
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    check-cast v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 173
    .line 174
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValueExact()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_6

    .line 183
    .line 184
    if-eq v11, v4, :cond_5

    .line 185
    .line 186
    if-ne v11, v10, :cond_4

    .line 187
    .line 188
    move-object v6, v9

    .line 189
    goto :goto_2

    .line 190
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_5
    move-object v6, v7

    .line 197
    :cond_6
    :goto_2
    if-ne v6, v7, :cond_7

    .line 198
    .line 199
    move v6, v4

    .line 200
    goto :goto_3

    .line 201
    :cond_7
    move v6, v2

    .line 202
    :goto_3
    iput-boolean v6, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    .line 203
    .line 204
    const/4 v6, 0x6

    .line 205
    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 210
    .line 211
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    array-length v7, v6

    .line 216
    move v8, v2

    .line 217
    :goto_4
    if-ge v8, v7, :cond_d

    .line 218
    .line 219
    aget-object v9, v6, v8

    .line 220
    .line 221
    check-cast v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 222
    .line 223
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    const/16 v12, 0x1fd

    .line 228
    .line 229
    if-eq v11, v12, :cond_b

    .line 230
    .line 231
    const/16 v12, 0x2c5

    .line 232
    .line 233
    if-eq v11, v12, :cond_8

    .line 234
    .line 235
    goto/16 :goto_7

    .line 236
    .line 237
    :cond_8
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-static {v9}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-virtual {v9}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 250
    .line 251
    invoke-direct {v11, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    new-instance v11, Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    check-cast v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 272
    .line 273
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    array-length v13, v12

    .line 278
    move v14, v2

    .line 279
    :goto_5
    if-ge v14, v13, :cond_9

    .line 280
    .line 281
    aget-object v15, v12, v14

    .line 282
    .line 283
    check-cast v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 284
    .line 285
    invoke-virtual {v15, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 286
    .line 287
    .line 288
    move-result-object v16

    .line 289
    invoke-static/range {v16 .. v16}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v15, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 294
    .line 295
    .line 296
    move-result-object v15

    .line 297
    check-cast v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 298
    .line 299
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    invoke-virtual {v15}, Ljava/math/BigInteger;->longValueExact()J

    .line 304
    .line 305
    .line 306
    move-result-wide v15

    .line 307
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 308
    .line 309
    .line 310
    move-result-object v15

    .line 311
    invoke-virtual {v11, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    add-int/lit8 v14, v14, 0x1

    .line 315
    .line 316
    const/4 v1, 0x0

    .line 317
    goto :goto_5

    .line 318
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    check-cast v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 328
    .line 329
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    array-length v12, v9

    .line 334
    move v13, v2

    .line 335
    :goto_6
    if-ge v13, v12, :cond_a

    .line 336
    .line 337
    aget-object v14, v9, v13

    .line 338
    .line 339
    invoke-static {v14}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    .line 340
    .line 341
    .line 342
    move-result-object v14

    .line 343
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    add-int/lit8 v13, v13, 0x1

    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_a
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    iput-object v9, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 354
    .line 355
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_b
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    instance-of v9, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    .line 364
    .line 365
    if-eqz v9, :cond_c

    .line 366
    .line 367
    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    .line 368
    .line 369
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 370
    .line 371
    .line 372
    :cond_c
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 373
    .line 374
    const/4 v1, 0x0

    .line 375
    goto/16 :goto_4

    .line 376
    .line 377
    :cond_d
    const/4 v1, 0x7

    .line 378
    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 383
    .line 384
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    array-length v3, v1

    .line 389
    move v6, v2

    .line 390
    :goto_8
    if-ge v6, v3, :cond_16

    .line 391
    .line 392
    aget-object v7, v1, v6

    .line 393
    .line 394
    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 395
    .line 396
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    const/16 v9, 0x2ce

    .line 401
    .line 402
    if-eq v8, v9, :cond_14

    .line 403
    .line 404
    const/16 v9, 0x2cf

    .line 405
    .line 406
    if-eq v8, v9, :cond_13

    .line 407
    .line 408
    packed-switch v8, :pswitch_data_0

    .line 409
    .line 410
    .line 411
    packed-switch v8, :pswitch_data_1

    .line 412
    .line 413
    .line 414
    goto/16 :goto_b

    .line 415
    .line 416
    :pswitch_0
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    goto/16 :goto_b

    .line 424
    .line 425
    :pswitch_1
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    goto/16 :goto_b

    .line 433
    .line 434
    :pswitch_2
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    goto/16 :goto_b

    .line 442
    .line 443
    :pswitch_3
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    iput-object v7, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    .line 456
    .line 457
    goto/16 :goto_b

    .line 458
    .line 459
    :pswitch_4
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    .line 464
    .line 465
    .line 466
    move-result v7

    .line 467
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    iput-object v7, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    .line 472
    .line 473
    goto/16 :goto_b

    .line 474
    .line 475
    :pswitch_5
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 480
    .line 481
    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 482
    .line 483
    .line 484
    move-result-object v8

    .line 485
    invoke-static {v8}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v7, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    instance-of v9, v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    .line 493
    .line 494
    if-eqz v9, :cond_e

    .line 495
    .line 496
    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    .line 497
    .line 498
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    goto :goto_9

    .line 507
    :cond_e
    const/4 v8, 0x0

    .line 508
    :goto_9
    iput-object v8, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 509
    .line 510
    invoke-virtual {v7, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 515
    .line 516
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValueExact()I

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    if-eqz v8, :cond_12

    .line 525
    .line 526
    if-eq v8, v4, :cond_11

    .line 527
    .line 528
    if-eq v8, v10, :cond_10

    .line 529
    .line 530
    if-ne v8, v5, :cond_f

    .line 531
    .line 532
    sget-object v8, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 536
    .line 537
    const-string v1, "Invalid verified boot state."

    .line 538
    .line 539
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw v0

    .line 543
    :cond_10
    sget-object v8, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 544
    .line 545
    goto :goto_a

    .line 546
    :cond_11
    sget-object v8, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 547
    .line 548
    goto :goto_a

    .line 549
    :cond_12
    sget-object v8, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 550
    .line 551
    :goto_a
    iput-object v8, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 552
    .line 553
    iget-object v8, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    .line 554
    .line 555
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    if-lt v8, v5, :cond_15

    .line 560
    .line 561
    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 562
    .line 563
    .line 564
    move-result-object v7

    .line 565
    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    .line 566
    .line 567
    .line 568
    goto :goto_b

    .line 569
    :cond_13
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    .line 574
    .line 575
    .line 576
    move-result v7

    .line 577
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object v7

    .line 581
    iput-object v7, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    .line 582
    .line 583
    goto :goto_b

    .line 584
    :cond_14
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 585
    .line 586
    .line 587
    move-result-object v7

    .line 588
    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    .line 589
    .line 590
    .line 591
    move-result v7

    .line 592
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    iput-object v7, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    .line 597
    .line 598
    :cond_15
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 599
    .line 600
    goto/16 :goto_8

    .line 601
    .line 602
    :cond_16
    return-object v0

    .line 603
    :cond_17
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    .line 604
    .line 605
    const-string v1, "No attestation extension found in certificate."

    .line 606
    .line 607
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw v0

    .line 611
    :pswitch_data_0
    .packed-switch 0x2c0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :pswitch_data_1
    .packed-switch 0x2c6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;
    .locals 0

    .line 1
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
