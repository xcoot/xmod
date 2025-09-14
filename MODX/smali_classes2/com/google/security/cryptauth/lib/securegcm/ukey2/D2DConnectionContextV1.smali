.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final contextPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "java.library.path"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, ";"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 20
    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintStream;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "ukey2_jni"

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v1, "Path isn\'t set."

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    .line 5
    .line 6
    return-void
.end method

.method private static native decode_message_from_peer(J[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/CryptoException;
        }
    .end annotation
.end method

.method private static native encode_message_to_peer(J[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native get_session_unique(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method


# virtual methods
.method public final decodeMessageFromPeer([B[B)[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->decode_message_from_peer(J[B[B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final encodeMessageToPeer([B[B)[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->encode_message_to_peer(J[B[B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSessionUnique()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->get_session_unique(J)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
