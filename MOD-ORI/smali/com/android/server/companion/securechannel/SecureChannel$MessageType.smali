.class final enum Lcom/android/server/companion/securechannel/SecureChannel$MessageType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum UNKNOWN:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;


# instance fields
.field private final mValue:S


# direct methods
.method public static bridge synthetic -$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->mValue:S

    .line 2
    .line 3
    return p0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 2
    .line 3
    const/16 v1, 0x4849

    .line 4
    .line 5
    const-string v2, "HANDSHAKE_INIT"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v4, 0x4846

    .line 17
    .line 18
    const-string v5, "HANDSHAKE_FINISH"

    .line 19
    .line 20
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    const/16 v5, 0x504b

    .line 29
    .line 30
    const-string v6, "PRE_SHARED_KEY"

    .line 31
    .line 32
    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 36
    .line 37
    new-instance v4, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    const/16 v6, 0x4154

    .line 41
    .line 42
    const-string v7, "ATTESTATION"

    .line 43
    .line 44
    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 48
    .line 49
    new-instance v5, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 50
    .line 51
    const/4 v6, 0x4

    .line 52
    const/16 v7, 0x5652

    .line 53
    .line 54
    const-string v8, "AVF_RESULT"

    .line 55
    .line 56
    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 60
    .line 61
    new-instance v6, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 62
    .line 63
    const/4 v7, 0x5

    .line 64
    const/16 v8, 0x534d

    .line 65
    .line 66
    const-string v9, "SECURE_MESSAGE"

    .line 67
    .line 68
    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v6, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 72
    .line 73
    new-instance v7, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 74
    .line 75
    const-string v8, "UNKNOWN"

    .line 76
    .line 77
    const/4 v9, 0x6

    .line 78
    invoke-direct {v7, v9, v3, v8}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v7, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->UNKNOWN:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 82
    .line 83
    move-object v3, v4

    .line 84
    move-object v4, v5

    .line 85
    move-object v5, v6

    .line 86
    move-object v6, v7

    .line 87
    filled-new-array/range {v0 .. v6}, [Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->$VALUES:[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    int-to-short p1, p2

    .line 5
    iput-short p1, p0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->mValue:S

    .line 6
    .line 7
    return-void
.end method

.method public static from(S)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->values()[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-short v4, v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->mValue:S

    .line 12
    .line 13
    if-ne p0, v4, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->UNKNOWN:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 20
    .line 21
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->$VALUES:[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    .line 8
    .line 9
    return-object v0
.end method
