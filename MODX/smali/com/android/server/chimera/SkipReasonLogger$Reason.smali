.class final enum Lcom/android/server/chimera/SkipReasonLogger$Reason;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 3
    const-string v1, "LRU"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 11
    new-instance v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 13
    const-string v2, "CACHED_EMPTY"

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 21
    new-instance v2, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 23
    const-string v3, "PERSISTENT_OR_PROTECTED"

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 31
    new-instance v3, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 33
    const-string v4, "PICKED"

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v3, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 41
    new-instance v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 43
    const-string v5, "CACC"

    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 51
    new-instance v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 53
    const-string v6, "INTERVAL"

    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 61
    new-instance v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 63
    const-string v7, "VISIBLE_SCREEN"

    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 71
    new-instance v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 73
    const-string v8, "WAKELOCK"

    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 81
    new-instance v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 83
    const-string v9, "SERVICE"

    .line 85
    const/16 v10, 0x8

    .line 87
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 92
    new-instance v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 94
    const-string v10, "UID"

    .line 96
    const/16 v11, 0x9

    .line 98
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 103
    new-instance v10, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 105
    const-string v11, "ADJ_OR_PROC_STATE"

    .line 107
    const/16 v12, 0xa

    .line 109
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v10, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 114
    new-instance v11, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 116
    const-string v12, "KILL_ONLY_ONE_SVC_AT_A_TIME"

    .line 118
    const/16 v13, 0xb

    .line 120
    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    new-instance v12, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 125
    const-string v13, "HAS_CONNECTION_PROVIDER"

    .line 127
    const/16 v14, 0xc

    .line 129
    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    filled-new-array/range {v0 .. v12}, [Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 135
    move-result-object v0

    .line 136
    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 138
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/chimera/SkipReasonLogger$Reason;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 9
    return-object v0
.end method
