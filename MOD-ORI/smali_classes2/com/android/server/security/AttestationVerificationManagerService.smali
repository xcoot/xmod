.class public final Lcom/android/server/security/AttestationVerificationManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

.field public final mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

.field public final mService:Lcom/android/server/security/AttestationVerificationManagerService$1;


# direct methods
.method public static -$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/security/attestationverification/IVerificationResult;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/security/attestationverification/IVerificationResult;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/security/attestationverification/AttestationProfile;->getAttestationProfileId()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_b

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x3

    .line 21
    if-eq p1, v3, :cond_0

    .line 22
    .line 23
    const-string p0, "AVF"

    .line 24
    .line 25
    const-string p1, "No profile found, defaulting."

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iput v2, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    .line 31
    .line 32
    goto/16 :goto_a

    .line 33
    .line 34
    :cond_0
    const-string p1, "AVF"

    .line 35
    .line 36
    const-string v4, "Verifying Peer Device profile."

    .line 37
    .line 38
    invoke-static {p1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v4, -0x1

    .line 52
    iput v4, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventNumber:I

    .line 53
    .line 54
    const-wide/16 v5, -0x1

    .line 55
    .line 56
    iput-wide v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventTimeMs:J

    .line 57
    .line 58
    iput v4, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mResult:I

    .line 59
    .line 60
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertificationFactoryAvailable:Z

    .line 61
    .line 62
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertPathValidatorAvailable:Z

    .line 63
    .line 64
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationParametersOk:Z

    .line 65
    .line 66
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    .line 67
    .line 68
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingOk:Z

    .line 69
    .line 70
    iput v4, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingType:I

    .line 71
    .line 72
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwnershipChecked:Z

    .line 73
    .line 74
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwned:Z

    .line 75
    .line 76
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsVersionAtLeast10:Z

    .line 77
    .line 78
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyHwBacked:Z

    .line 79
    .line 80
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationVersionAtLeast3:Z

    .line 81
    .line 82
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterVersionAtLeast4:Z

    .line 83
    .line 84
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterHwBacked:Z

    .line 85
    .line 86
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBootStateIsVerified:Z

    .line 87
    .line 88
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mVerifiedBootStateLocked:Z

    .line 89
    .line 90
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsPatchLevelInRange:Z

    .line 91
    .line 92
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    .line 93
    .line 94
    iput-boolean v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyVendorPatchLevelInRange:Z

    .line 95
    .line 96
    iget-object v4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 97
    .line 98
    const/4 v5, 0x1

    .line 99
    if-nez v4, :cond_1

    .line 100
    .line 101
    const-string p2, "Unable to access CertificateFactory"

    .line 102
    .line 103
    invoke-static {p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_1
    iput-boolean v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertificationFactoryAvailable:Z

    .line 109
    .line 110
    iget-object v4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 111
    .line 112
    if-nez v4, :cond_2

    .line 113
    .line 114
    const-string p2, "Unable to access CertPathValidator"

    .line 115
    .line 116
    invoke-static {p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_2
    iput-boolean v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertPathValidatorAvailable:Z

    .line 122
    .line 123
    if-eq p2, v1, :cond_3

    .line 124
    .line 125
    if-eq p2, v3, :cond_3

    .line 126
    .line 127
    new-instance p3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string p4, "Binding type is not supported: "

    .line 130
    .line 131
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :cond_3
    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-ge v4, v5, :cond_4

    .line 151
    .line 152
    const-string p2, "At least 1 requirement is required."

    .line 153
    .line 154
    invoke-static {p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_4

    .line 158
    .line 159
    :cond_4
    if-ne p2, v1, :cond_5

    .line 160
    .line 161
    const-string v4, "localbinding.public_key"

    .line 162
    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_5

    .line 168
    .line 169
    const-string p2, "Requirements does not contain key: localbinding.public_key"

    .line 170
    .line 171
    invoke-static {p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_5
    if-ne p2, v3, :cond_6

    .line 176
    .line 177
    const-string v3, "localbinding.challenge"

    .line 178
    .line 179
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-nez v3, :cond_6

    .line 184
    .line 185
    const-string p2, "Requirements does not contain key: localbinding.challenge"

    .line 186
    .line 187
    invoke-static {p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_6
    iput-boolean v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationParametersOk:Z

    .line 192
    .line 193
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificates([B)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object p4

    .line 197
    invoke-virtual {p0, p4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateCertificateChain(Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    iput-boolean v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    .line 201
    .line 202
    check-cast p4, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p4

    .line 208
    check-cast p4, Ljava/security/cert/X509Certificate;

    .line 209
    .line 210
    invoke-static {p4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {p0, v2, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkAttestationForPeerDeviceProfile(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    xor-int/2addr v3, v5

    .line 219
    invoke-static {p4, v2, p2, p3, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z

    .line 220
    .line 221
    .line 222
    move-result p2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    if-nez p2, :cond_8

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :catch_0
    move-exception p2

    .line 227
    goto :goto_0

    .line 228
    :catch_1
    move-exception p2

    .line 229
    goto :goto_2

    .line 230
    :goto_0
    const-string p3, "Unexpected error"

    .line 231
    .line 232
    sget-boolean p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    .line 233
    .line 234
    if-eqz p4, :cond_7

    .line 235
    .line 236
    const-string p4, "AVF"

    .line 237
    .line 238
    invoke-static {p4, p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .line 240
    .line 241
    :cond_7
    :goto_1
    move v3, v5

    .line 242
    goto :goto_3

    .line 243
    :goto_2
    const-string p3, "Unable to parse/validate Android Attestation certificate(s)"

    .line 244
    .line 245
    sget-boolean p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    .line 246
    .line 247
    if-eqz p4, :cond_7

    .line 248
    .line 249
    const-string p4, "AVF"

    .line 250
    .line 251
    invoke-static {p4, p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_9
    move v1, v5

    .line 259
    :goto_4
    iput v1, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mResult:I

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 262
    .line 263
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    .line 264
    .line 265
    monitor-enter v2

    .line 266
    :try_start_1
    iget-object p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    const/16 p3, 0xa

    .line 273
    .line 274
    if-ne p2, p3, :cond_a

    .line 275
    .line 276
    iget-object p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    .line 277
    .line 278
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :catchall_0
    move-exception p0

    .line 283
    goto :goto_6

    .line 284
    :cond_a
    :goto_5
    iget p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mEventsLogged:I

    .line 285
    .line 286
    add-int/2addr p2, v5

    .line 287
    iput p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mEventsLogged:I

    .line 288
    .line 289
    iput p2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventNumber:I

    .line 290
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 292
    .line 293
    .line 294
    move-result-wide p2

    .line 295
    iput-wide p2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventTimeMs:J

    .line 296
    .line 297
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :goto_6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    throw p0

    .line 308
    :cond_b
    const-string p0, "AVF"

    .line 309
    .line 310
    const-string p1, "Verifying Self Trusted profile."

    .line 311
    .line 312
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    :try_start_3
    sget-object p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 316
    .line 317
    if-nez p0, :cond_d

    .line 318
    .line 319
    const-class p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 320
    .line 321
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 322
    :try_start_4
    sget-object p1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 323
    .line 324
    if-nez p1, :cond_c

    .line 325
    .line 326
    new-instance p1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 327
    .line 328
    invoke-direct {p1}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;-><init>()V

    .line 329
    .line 330
    .line 331
    sput-object p1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :catchall_1
    move-exception p1

    .line 335
    goto :goto_8

    .line 336
    :cond_c
    :goto_7
    monitor-exit p0

    .line 337
    goto :goto_9

    .line 338
    :goto_8
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 339
    :try_start_5
    throw p1

    .line 340
    :cond_d
    :goto_9
    sget-object p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 341
    .line 342
    invoke-virtual {p0, p2, p4, p3}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->verifyAttestation(I[BLandroid/os/Bundle;)I

    .line 343
    .line 344
    .line 345
    move-result p0

    .line 346
    iput p0, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :catchall_2
    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    .line 350
    .line 351
    :goto_a
    invoke-virtual {p5, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/security/AttestationVerificationManagerService$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;-><init>(Lcom/android/server/security/AttestationVerificationManagerService;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Lcom/android/server/security/AttestationVerificationManagerService$1;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    .line 19
    .line 20
    invoke-direct {v1, p1, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;-><init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "AVF"

    .line 2
    .line 3
    const-string v1, "Started"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Lcom/android/server/security/AttestationVerificationManagerService$1;

    .line 9
    .line 10
    const-string v1, "attestation_verification"

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
