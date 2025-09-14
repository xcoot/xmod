.class final enum Lcom/android/server/credentials/ProviderSession$Status;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum NOT_STARTED:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum PENDING:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/credentials/ProviderSession$Status;

    .line 2
    .line 3
    const-string v1, "NOT_STARTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NOT_STARTED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/credentials/ProviderSession$Status;

    .line 12
    .line 13
    const-string v2, "PENDING"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/credentials/ProviderSession$Status;

    .line 22
    .line 23
    const-string v3, "CREDENTIALS_RECEIVED"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/credentials/ProviderSession$Status;

    .line 32
    .line 33
    const-string v4, "SERVICE_DEAD"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/credentials/ProviderSession$Status;

    .line 42
    .line 43
    const-string v5, "SAVE_ENTRIES_RECEIVED"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/credentials/ProviderSession$Status;

    .line 52
    .line 53
    const-string v6, "CANCELED"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 60
    .line 61
    new-instance v6, Lcom/android/server/credentials/ProviderSession$Status;

    .line 62
    .line 63
    const-string v7, "EMPTY_RESPONSE"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 70
    .line 71
    new-instance v7, Lcom/android/server/credentials/ProviderSession$Status;

    .line 72
    .line 73
    const-string v8, "NO_CREDENTIALS_FROM_AUTH_ENTRY"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    .line 80
    .line 81
    new-instance v8, Lcom/android/server/credentials/ProviderSession$Status;

    .line 82
    .line 83
    const-string v9, "COMPLETE"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/android/server/credentials/ProviderSession$Status;->COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 91
    .line 92
    filled-new-array/range {v0 .. v8}, [Lcom/android/server/credentials/ProviderSession$Status;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/android/server/credentials/ProviderSession$Status;->$VALUES:[Lcom/android/server/credentials/ProviderSession$Status;

    .line 97
    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/ProviderSession$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/credentials/ProviderSession$Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/credentials/ProviderSession$Status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/ProviderSession$Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->$VALUES:[Lcom/android/server/credentials/ProviderSession$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/credentials/ProviderSession$Status;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/credentials/ProviderSession$Status;

    .line 8
    .line 9
    return-object v0
.end method
