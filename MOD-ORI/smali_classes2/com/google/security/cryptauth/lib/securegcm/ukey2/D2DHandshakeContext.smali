.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final contextPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "ukey2_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->AES_256_CBC_HMAC_SHA256:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 2
    .line 3
    filled-new-array {v0}, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    filled-new-array {v0}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 22
    .line 23
    if-ne p1, v2, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_0
    invoke-static {v1, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->create_context(Z[I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    .line 31
    .line 32
    return-void
.end method

.method private static native create_context(Z[I)J
.end method

.method private static native get_next_handshake_message(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native is_handshake_complete(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native parse_handshake_message(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;,
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;,
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;
        }
    .end annotation
.end method

.method private static native to_connection_context(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;
        }
    .end annotation
.end method


# virtual methods
.method public final getNextHandshakeMessage()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->get_next_handshake_message(J)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isHandshakeComplete()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->is_handshake_complete(J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final parseHandshakeMessage([B)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parse_handshake_message(J[B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->to_connection_context(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;-><init>(J)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
