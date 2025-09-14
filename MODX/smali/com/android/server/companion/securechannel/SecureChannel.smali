.class public final Lcom/android/server/companion/securechannel/SecureChannel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAlias:Ljava/lang/String;

.field public final mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

.field public mClientInit:[B

.field public mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

.field public mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

.field public volatile mInProgress:Z

.field public final mInput:Ljava/io/InputStream;

.field public final mOutput:Ljava/io/OutputStream;

.field public final mPreSharedKey:[B

.field public mPskVerified:Z

.field public mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

.field public volatile mStopped:Z

.field public mVerificationResult:I

.field public final mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 3
    sput-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    .line 10
    iput-object p4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    .line 12
    iput-object p5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    .line 14
    return-void
.end method

.method public static constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B
    .locals 3

    .line 1
    const-string v0, "SHA-256"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 9
    if-ne p0, v1, :cond_0

    .line 11
    const-string p0, "Initiator"

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "Responder"

    .line 16
    :goto_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    move-result-object p0

    .line 22
    array-length v1, p0

    .line 23
    array-length v2, p1

    .line 24
    add-int/2addr v1, v2

    .line 25
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 3
    const-string v1, "CDM_SecureChannel"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string v2, "Stopping secure channel."

    .line 9
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 18
    if-eqz v0, :cond_1

    .line 20
    const-string v0, "Closing secure channel."

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 27
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 30
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 32
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 35
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-static {}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->loadKeyStore()Ljava/security/KeyStore;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    :cond_2
    return-void
.end method

.method public final exchangeAuthentication()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 5
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 7
    sget-boolean v3, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 9
    const-string v4, "CDM_SecureChannel"

    .line 11
    iget-object v5, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    .line 13
    if-eqz v5, :cond_3

    .line 15
    if-eqz v3, :cond_0

    .line 17
    const-string v6, "Exchanging pre-shared keys."

    .line 19
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    sget-object v6, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 24
    iget-object v7, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 26
    invoke-static {v7, v5}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v0, v6, v7}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 33
    invoke-virtual {v0, v6}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    .line 36
    move-result-object v6

    .line 37
    iget-object v7, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 39
    if-ne v7, v2, :cond_1

    .line 41
    move-object v7, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v7, v2

    .line 44
    :goto_0
    invoke-static {v7, v5}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    .line 47
    move-result-object v5

    .line 48
    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 51
    move-result v5

    .line 52
    iput-boolean v5, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    .line 54
    if-eqz v5, :cond_2

    .line 56
    if-eqz v3, :cond_3

    .line 58
    const-string v5, "The pre-shared key was successfully authenticated."

    .line 60
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 66
    const-string v1, "Failed to verify the hash of pre-shared key."

    .line 68
    invoke-direct {v0, v1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0

    .line 72
    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    .line 74
    if-eqz v5, :cond_d

    .line 76
    iget v6, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 78
    const/4 v7, 0x1

    .line 79
    if-ne v6, v7, :cond_4

    .line 81
    const-string v0, "Remote attestation was already verified."

    .line 83
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto/16 :goto_5

    .line 88
    :cond_4
    if-eqz v3, :cond_5

    .line 90
    const-string v6, "Exchanging device attestation."

    .line 92
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_5
    iget-object v6, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    .line 97
    const/4 v8, 0x0

    .line 98
    if-nez v6, :cond_7

    .line 100
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v9, "secure-channel-"

    .line 105
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 119
    :try_start_0
    invoke-static {}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->loadKeyStore()Ljava/security/KeyStore;

    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v9, v6}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 126
    move-result v9
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move v9, v8

    .line 129
    :goto_2
    if-nez v9, :cond_6

    .line 131
    iput-object v6, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    .line 133
    :cond_7
    iget-object v6, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 135
    iget-object v9, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 137
    invoke-virtual {v9}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->getSessionUnique()[B

    .line 140
    move-result-object v9

    .line 141
    invoke-static {v6, v9}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    .line 144
    move-result-object v6

    .line 145
    iget-object v9, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    .line 147
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 149
    const/16 v11, 0xc

    .line 151
    invoke-direct {v10, v9, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {v10, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 157
    move-result-object v6

    .line 158
    const-string v9, "SHA-256"

    .line 160
    filled-new-array {v9}, [Ljava/lang/String;

    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v6, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 171
    move-result-object v6

    .line 172
    const-string v9, "EC"

    .line 174
    const-string v10, "AndroidKeyStore"

    .line 176
    invoke-static {v9, v10}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v9, v6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 183
    invoke-virtual {v9}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 186
    iget-object v6, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->loadKeyStore()Ljava/security/KeyStore;

    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v9, v6}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 195
    move-result-object v6

    .line 196
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 198
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    array-length v10, v6

    .line 202
    move v11, v8

    .line 203
    :goto_3
    if-ge v11, v10, :cond_8

    .line 205
    aget-object v12, v6, v11

    .line 207
    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 210
    move-result-object v12

    .line 211
    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->writeBytes([B)V

    .line 214
    add-int/lit8 v11, v11, 0x1

    .line 216
    goto :goto_3

    .line 217
    :cond_8
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 220
    move-result-object v6

    .line 221
    sget-object v9, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 223
    invoke-virtual {v0, v9, v6}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 226
    invoke-virtual {v0, v9}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    .line 229
    move-result-object v14

    .line 230
    iget-object v6, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 232
    if-ne v6, v2, :cond_9

    .line 234
    goto :goto_4

    .line 235
    :cond_9
    move-object v1, v2

    .line 236
    :goto_4
    iget-object v2, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 238
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->getSessionUnique()[B

    .line 241
    move-result-object v2

    .line 242
    invoke-static {v1, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    .line 245
    move-result-object v1

    .line 246
    new-instance v13, Landroid/os/Bundle;

    .line 248
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 251
    const-string/jumbo v2, "localbinding.challenge"

    .line 254
    invoke-virtual {v13, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 257
    const-string v1, "android.key_owned_by_system"

    .line 259
    invoke-virtual {v13, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 264
    invoke-direct {v1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 267
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 269
    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 272
    new-instance v6, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;

    .line 274
    invoke-direct {v6, v1, v2}, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 277
    iget-object v5, v5, Lcom/android/server/companion/securechannel/AttestationVerifier;->mContext:Landroid/content/Context;

    .line 279
    const-class v8, Landroid/security/attestationverification/AttestationVerificationManager;

    .line 281
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 284
    move-result-object v5

    .line 285
    move-object v10, v5

    .line 286
    check-cast v10, Landroid/security/attestationverification/AttestationVerificationManager;

    .line 288
    new-instance v11, Landroid/security/attestationverification/AttestationProfile;

    .line 290
    const/4 v5, 0x3

    .line 291
    invoke-direct {v11, v5}, Landroid/security/attestationverification/AttestationProfile;-><init>(I)V

    .line 294
    new-instance v15, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 296
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 299
    const/4 v12, 0x3

    .line 300
    move-object/from16 v16, v6

    .line 302
    invoke-virtual/range {v10 .. v16}, Landroid/security/attestationverification/AttestationVerificationManager;->verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    .line 305
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 307
    const-wide/16 v8, 0xa

    .line 309
    invoke-virtual {v2, v8, v9, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 312
    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    if-eqz v2, :cond_c

    .line 315
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 318
    move-result v1

    .line 319
    iput v1, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 321
    const/4 v1, 0x4

    .line 322
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 325
    move-result-object v1

    .line 326
    iget v2, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 328
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 335
    move-result-object v1

    .line 336
    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 338
    invoke-virtual {v0, v2, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 341
    invoke-virtual {v0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    .line 344
    move-result-object v1

    .line 345
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 352
    move-result v1

    .line 353
    if-ne v1, v7, :cond_b

    .line 355
    iget v0, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 357
    if-ne v0, v7, :cond_a

    .line 359
    if-eqz v3, :cond_d

    .line 361
    const-string v0, "Remote attestation was successfully verified."

    .line 363
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    goto :goto_5

    .line 367
    :cond_a
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 369
    const-string v1, "Failed to verify remote attestation."

    .line 371
    invoke-direct {v0, v1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    .line 374
    throw v0

    .line 375
    :cond_b
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 377
    const-string v1, "Remote device failed to verify local attestation."

    .line 379
    invoke-direct {v0, v1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    .line 382
    throw v0

    .line 383
    :cond_c
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 385
    const-string v1, "Attestation verification timed out."

    .line 387
    invoke-direct {v0, v1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    .line 390
    throw v0

    .line 391
    :catch_1
    move-exception v0

    .line 392
    new-instance v1, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 394
    const-string v2, "Attestation verification was interrupted"

    .line 396
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    throw v1

    .line 400
    :cond_d
    :goto_5
    return-void
.end method

.method public final exchangeHandshake()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 3
    const-string v1, "CDM_SecureChannel"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string p0, "Ukey2 handshake is already completed."

    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v3, :cond_1

    .line 33
    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v3, v4

    .line 36
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 39
    move-result v5

    .line 40
    new-array v6, v5, [B

    .line 42
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 45
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 47
    if-eqz v0, :cond_9

    .line 49
    if-nez v3, :cond_2

    .line 51
    goto :goto_3

    .line 52
    :cond_2
    const-string v0, "Detected a Ukey2 handshake role collision. Negotiating a role."

    .line 54
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    .line 59
    if-ne v0, v6, :cond_3

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    array-length v3, v0

    .line 63
    if-eq v3, v5, :cond_4

    .line 65
    array-length v0, v0

    .line 66
    sub-int v4, v0, v5

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move v3, v4

    .line 70
    :goto_1
    array-length v5, v0

    .line 71
    if-ge v3, v5, :cond_6

    .line 73
    aget-byte v5, v0, v3

    .line 75
    aget-byte v7, v6, v3

    .line 77
    if-eq v5, v7, :cond_5

    .line 79
    sub-int v4, v5, v7

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_6
    :goto_2
    if-gez v4, :cond_7

    .line 87
    const-string v0, "Assigned: Responder"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 95
    goto :goto_3

    .line 96
    :cond_7
    const-string v0, "Assigned: Initiator; Discarding received Client Init"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_8

    .line 117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 120
    move-result v3

    .line 121
    new-array v6, v3, [B

    .line 123
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 126
    goto :goto_3

    .line 127
    :cond_8
    new-instance p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;

    .line 129
    const-string v0, "Failed to resolve Ukey2 handshake role collision."

    .line 131
    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;-><init>(Ljava/lang/String;)V

    .line 134
    throw p0

    .line 135
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 137
    if-nez v0, :cond_d

    .line 139
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 141
    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 143
    new-instance v3, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 145
    invoke-direct {v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V

    .line 148
    iput-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 150
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 152
    if-eqz v0, :cond_a

    .line 154
    const-string v3, "Receiving Ukey2 Client Init message"

    .line 156
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_a
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 161
    invoke-virtual {v3, v6}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    .line 164
    if-eqz v0, :cond_b

    .line 166
    const-string v3, "Sending Ukey2 Server Init message"

    .line 168
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_b
    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 173
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 175
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    .line 178
    move-result-object v4

    .line 179
    array-length v5, v4

    .line 180
    add-int/2addr v5, v2

    .line 181
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 184
    move-result-object v5

    .line 185
    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 187
    iget-object v7, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 189
    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v6

    .line 193
    xor-int/2addr v2, v6

    .line 194
    int-to-byte v2, v2

    .line 195
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 210
    if-eqz v0, :cond_c

    .line 212
    const-string v0, "Receiving Ukey2 Client Finish message"

    .line 214
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_c
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 219
    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 221
    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v0, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    .line 228
    goto :goto_4

    .line 229
    :cond_d
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 231
    if-eqz v0, :cond_e

    .line 233
    const-string v2, "Receiving Ukey2 Server Init message"

    .line 235
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_e
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 240
    invoke-virtual {v2, v6}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    .line 243
    if-eqz v0, :cond_f

    .line 245
    const-string v0, "Sending Ukey2 Client Finish message"

    .line 247
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_f
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 252
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 254
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {p0, v0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 261
    :goto_4
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 263
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->isHandshakeComplete()Z

    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_11

    .line 269
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 271
    if-eqz v0, :cond_10

    .line 273
    const-string v0, "Ukey2 Handshake completed successfully"

    .line 275
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_10
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 280
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 283
    move-result-object v0

    .line 284
    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 286
    return-void

    .line 287
    :cond_11
    const-string p0, "Failed to complete Ukey2 Handshake"

    .line 289
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 294
    const-string v0, "Ukey2 Handshake did not complete as expected."

    .line 296
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 299
    throw p0
.end method

.method public final initiateHandshake()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 3
    const-string v1, "CDM_SecureChannel"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string p0, "Ukey2 handshake is already completed."

    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 15
    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 17
    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 19
    invoke-direct {v2, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V

    .line 22
    iput-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 24
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    .line 30
    sget-boolean v2, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 32
    if-eqz v2, :cond_1

    .line 34
    const-string v2, "Sending Ukey2 Client Init message"

    .line 36
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    sget-object v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 41
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    .line 43
    array-length v3, v2

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 46
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    xor-int/lit8 v0, v0, 0x1

    .line 58
    int-to-byte v0, v0

    .line 59
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 74
    return-void
.end method

.method public final isSecured()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 12
    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 14
    if-ne p0, v2, :cond_2

    .line 16
    :cond_1
    move v1, v2

    .line 17
    :cond_2
    return v1
.end method

.method public final readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B
    .locals 8

    .line 1
    const-string v0, "Unexpected message type. Expected "

    .line 3
    sget-boolean v1, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 5
    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const-string v1, "CDM_SecureChannel"

    .line 15
    const-string v2, "Waiting to receive next secure message."

    .line 17
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "CDM_SecureChannel"

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    const-string v3, "Waiting to receive next "

    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, " message."

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 47
    monitor-enter v1

    .line 48
    const/4 v2, 0x6

    .line 49
    :try_start_0
    new-array v2, v2, [B

    .line 51
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 53
    invoke-static {v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 56
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 63
    move-result v4

    .line 64
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    .line 67
    move-result v3

    .line 68
    const/4 v5, 0x1

    .line 69
    const-wide v6, 0x7fffffffffffffffL

    .line 74
    if-ne v4, v5, :cond_4

    .line 76
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    .line 79
    move-result v4

    .line 80
    if-ne v3, v4, :cond_3

    .line 82
    const/4 v0, 0x4

    .line 83
    new-array v0, v0, [B

    .line 85
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 87
    invoke-static {v3, v0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 90
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 97
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 102
    invoke-static {v3, v0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 105
    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 107
    if-eq p1, v3, :cond_2

    .line 109
    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 111
    if-eq p1, v3, :cond_2

    .line 113
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 115
    invoke-virtual {p0, v0, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->decodeMessageFromPeer([B[B)[B

    .line 118
    move-result-object p0

    .line 119
    monitor-exit v1

    .line 120
    return-object p0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    monitor-exit v1

    .line 124
    return-object v0

    .line 125
    :catch_0
    move-exception p1

    .line 126
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 128
    invoke-static {p0, v6, v7}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 131
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 133
    const-string v0, "Payload is too large."

    .line 135
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    throw p0

    .line 139
    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 141
    invoke-static {p0, v6, v7}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 144
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string p1, "; Found "

    .line 160
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {v3}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->from(S)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string p1, ". Skipping rest of data."

    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    .line 186
    throw p0

    .line 187
    :cond_4
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 189
    invoke-static {p0, v6, v7}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 192
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 194
    const-string p1, "Secure channel version mismatch. Currently on version 1. Skipping rest of data."

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    .line 199
    throw p0

    .line 200
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    throw p0
.end method

.method public final receiveSecureMessage()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    .line 7
    const-string v2, "CDM_SecureChannel"

    .line 9
    if-nez v0, :cond_1

    .line 11
    const-string p0, "Received a message without a secure connection. Message will be ignored."

    .line 13
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v0, "Connection is not secure."

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    check-cast v1, Lcom/android/server/companion/transport/SecureTransport;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string v0, "CDM_CompanionTransport"

    .line 30
    const-string v2, "Secure transport encountered an error."

    .line 32
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    iget-object p0, v1, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 37
    iget-boolean p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 39
    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    .line 50
    move-result-object p0

    .line 51
    check-cast v1, Lcom/android/server/companion/transport/SecureTransport;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 67
    move-result v3

    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 71
    move-result v4

    .line 72
    new-array v4, v4, [B

    .line 74
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/android/server/companion/securechannel/SecureChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/companion/securechannel/SecureChannelException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    const-string v0, "Ignoring received message."

    .line 84
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :catch_1
    :goto_0
    return-void
.end method

.method public final sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x6

    .line 5
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 28
    if-eq p1, v2, :cond_0

    .line 30
    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 32
    if-eq p1, v2, :cond_0

    .line 34
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 36
    invoke-virtual {p1, p2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->encodeMessageToPeer([B[B)[B

    .line 39
    move-result-object p2

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 45
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 48
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 54
    move-result-object v1

    .line 55
    array-length v2, p2

    .line 56
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 67
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 69
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 72
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 74
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final sendSecureMessage([B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 16
    const-string v0, "Failed to encrypt data."

    .line 18
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    throw p1

    .line 22
    :cond_0
    const-string p0, "CDM_SecureChannel"

    .line 24
    const-string p1, "Cannot send a message without a secure connection."

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    const-string p1, "Channel is not secured yet."

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
.end method
