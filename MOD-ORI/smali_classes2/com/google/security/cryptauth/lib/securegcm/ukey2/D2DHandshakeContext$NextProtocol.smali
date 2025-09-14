.class public final enum Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

.field public static final enum AES_256_CBC_HMAC_SHA256:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 2
    .line 3
    const-string v1, "AES_256_GCM_SIV"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 10
    .line 11
    const-string v2, "AES_256_CBC_HMAC_SHA256"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->AES_256_CBC_HMAC_SHA256:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 24
    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;
    .locals 1

    .line 1
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    .line 8
    .line 9
    return-object v0
.end method
