.class public final enum Lcom/android/server/am/KillPolicyManager$LmkdState;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 3
    const-string v1, "LEVEL_0"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 11
    new-instance v1, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 13
    const-string v2, "LEVEL_1"

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 19
    sput-object v1, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 21
    new-instance v2, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 23
    const-string v3, "LEVEL_2"

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 29
    sput-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 31
    new-instance v3, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 33
    const-string v4, "LEVEL_3"

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 39
    sput-object v3, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 41
    new-instance v4, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 43
    const-string v5, "LEVEL_4"

    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v6, v6, v5}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 49
    sput-object v4, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 51
    new-instance v5, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 53
    const-string v6, "LEVEL_5"

    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v7, v7, v6}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 59
    sput-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 61
    new-instance v6, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 63
    const-string v7, "LEVEL_6"

    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v8, v8, v7}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 69
    new-instance v7, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 71
    const-string v8, "LEVEL_7"

    .line 73
    const/4 v9, 0x7

    .line 74
    invoke-direct {v7, v9, v9, v8}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 77
    new-instance v8, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 79
    const-string v9, "LEVEL_8"

    .line 81
    const/16 v10, 0x8

    .line 83
    invoke-direct {v8, v10, v10, v9}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 86
    sput-object v8, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 88
    new-instance v9, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 90
    const-string v10, "LEVEL_9"

    .line 92
    const/16 v11, 0x9

    .line 94
    invoke-direct {v9, v11, v11, v10}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 97
    new-instance v10, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 99
    const-string v11, "LEVEL_10"

    .line 101
    const/16 v12, 0xa

    .line 103
    invoke-direct {v10, v12, v12, v11}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 106
    sput-object v10, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 108
    new-instance v11, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 110
    const-string v12, "LEVEL_11"

    .line 112
    const/16 v13, 0xb

    .line 114
    invoke-direct {v11, v13, v13, v12}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 117
    new-instance v12, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 119
    const-string v13, "LEVEL_12"

    .line 121
    const/16 v14, 0xc

    .line 123
    invoke-direct {v12, v14, v14, v13}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 126
    sput-object v12, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 128
    new-instance v13, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 130
    const-string v14, "LEVEL_13"

    .line 132
    const/16 v15, 0xd

    .line 134
    invoke-direct {v13, v15, v15, v14}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 137
    new-instance v14, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 139
    const-string v15, "LEVEL_14"

    .line 141
    move-object/from16 v16, v13

    .line 143
    const/16 v13, 0xe

    .line 145
    invoke-direct {v14, v13, v13, v15}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 148
    sput-object v14, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 150
    new-instance v15, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 152
    const-string v13, "LEVEL_15"

    .line 154
    move-object/from16 v17, v14

    .line 156
    const/16 v14, 0xf

    .line 158
    invoke-direct {v15, v14, v14, v13}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(IILjava/lang/String;)V

    .line 161
    move-object/from16 v13, v16

    .line 163
    move-object/from16 v14, v17

    .line 165
    filled-new-array/range {v0 .. v15}, [Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 168
    move-result-object v0

    .line 169
    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 171
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$LmkdState;->mLevel:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$LmkdState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$LmkdState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/KillPolicyManager$LmkdState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$LmkdState;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLevel()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$LmkdState;->mLevel:I

    .line 3
    return p0
.end method
