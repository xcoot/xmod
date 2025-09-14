.class public final enum Lcom/android/server/om/OverlayActorEnforcer$ActorState;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 2
    .line 3
    const-string v1, "TARGET_NOT_FOUND"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 12
    .line 13
    const-string v2, "NO_PACKAGES_FOR_UID"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 22
    .line 23
    const-string v3, "MISSING_TARGET_OVERLAYABLE_NAME"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 32
    .line 33
    const-string v4, "MISSING_LEGACY_PERMISSION"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 42
    .line 43
    const-string v5, "ERROR_READING_OVERLAYABLE"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 52
    .line 53
    const-string v6, "UNABLE_TO_GET_TARGET_OVERLAYABLE"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 60
    .line 61
    new-instance v6, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 62
    .line 63
    const-string v7, "MISSING_OVERLAYABLE"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 70
    .line 71
    new-instance v7, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 72
    .line 73
    const-string v8, "INVALID_OVERLAYABLE_ACTOR_NAME"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 80
    .line 81
    new-instance v8, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 82
    .line 83
    const-string v9, "NO_NAMED_ACTORS"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 91
    .line 92
    new-instance v9, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 93
    .line 94
    const-string v10, "MISSING_NAMESPACE"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 102
    .line 103
    new-instance v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 104
    .line 105
    const-string v11, "MISSING_ACTOR_NAME"

    .line 106
    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 113
    .line 114
    new-instance v11, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 115
    .line 116
    const-string v12, "ACTOR_NOT_FOUND"

    .line 117
    .line 118
    const/16 v13, 0xb

    .line 119
    .line 120
    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v11, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 124
    .line 125
    new-instance v12, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 126
    .line 127
    const-string v13, "ACTOR_NOT_PREINSTALLED"

    .line 128
    .line 129
    const/16 v14, 0xc

    .line 130
    .line 131
    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v12, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 135
    .line 136
    new-instance v13, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 137
    .line 138
    const-string v14, "INVALID_ACTOR"

    .line 139
    .line 140
    const/16 v15, 0xd

    .line 141
    .line 142
    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v13, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 146
    .line 147
    new-instance v14, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 148
    .line 149
    const-string v15, "ALLOWED"

    .line 150
    .line 151
    move-object/from16 v16, v13

    .line 152
    .line 153
    const/16 v13, 0xe

    .line 154
    .line 155
    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    sput-object v14, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 159
    .line 160
    move-object/from16 v13, v16

    .line 161
    .line 162
    filled-new-array/range {v0 .. v14}, [Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sput-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->$VALUES:[Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 167
    .line 168
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->$VALUES:[Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/om/OverlayActorEnforcer$ActorState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 8
    .line 9
    return-object v0
.end method
