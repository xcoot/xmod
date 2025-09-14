.class public final enum Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 2
    .line 3
    const/16 v1, 0xdb

    .line 4
    .line 5
    const-string v2, "NOTIFICATION_CHANNEL_CREATED"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 14
    .line 15
    const/16 v2, 0xdc

    .line 16
    .line 17
    const-string v3, "NOTIFICATION_CHANNEL_UPDATED"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 26
    .line 27
    const/16 v3, 0xdd

    .line 28
    .line 29
    const-string v4, "NOTIFICATION_CHANNEL_UPDATED_BY_USER"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v5, v3, v4}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 36
    .line 37
    new-instance v3, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 38
    .line 39
    const/16 v4, 0xde

    .line 40
    .line 41
    const-string v5, "NOTIFICATION_CHANNEL_DELETED"

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    invoke-direct {v3, v6, v4, v5}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 48
    .line 49
    new-instance v4, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 50
    .line 51
    const/16 v5, 0xdf

    .line 52
    .line 53
    const-string v6, "NOTIFICATION_CHANNEL_GROUP_CREATED"

    .line 54
    .line 55
    const/4 v7, 0x4

    .line 56
    invoke-direct {v4, v7, v5, v6}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 60
    .line 61
    new-instance v5, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 62
    .line 63
    const/16 v6, 0xe0

    .line 64
    .line 65
    const-string v7, "NOTIFICATION_CHANNEL_GROUP_UPDATED"

    .line 66
    .line 67
    const/4 v8, 0x5

    .line 68
    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v6, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 72
    .line 73
    const/16 v7, 0xe2

    .line 74
    .line 75
    const-string v8, "NOTIFICATION_CHANNEL_GROUP_DELETED"

    .line 76
    .line 77
    const/4 v9, 0x6

    .line 78
    invoke-direct {v6, v9, v7, v8}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 82
    .line 83
    new-instance v7, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 84
    .line 85
    const/16 v8, 0x110

    .line 86
    .line 87
    const-string v9, "NOTIFICATION_CHANNEL_CONVERSATION_CREATED"

    .line 88
    .line 89
    const/4 v10, 0x7

    .line 90
    invoke-direct {v7, v10, v8, v9}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sput-object v7, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 94
    .line 95
    new-instance v8, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 96
    .line 97
    const/16 v9, 0x112

    .line 98
    .line 99
    const-string v10, "NOTIFICATION_CHANNEL_CONVERSATION_DELETED"

    .line 100
    .line 101
    const/16 v11, 0x8

    .line 102
    .line 103
    invoke-direct {v8, v11, v9, v10}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sput-object v8, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 107
    .line 108
    new-instance v9, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 109
    .line 110
    const/16 v10, 0x22d

    .line 111
    .line 112
    const-string v11, "APP_NOTIFICATIONS_BLOCKED"

    .line 113
    .line 114
    const/16 v12, 0x9

    .line 115
    .line 116
    invoke-direct {v9, v12, v10, v11}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sput-object v9, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 120
    .line 121
    new-instance v10, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 122
    .line 123
    const/16 v11, 0x22e

    .line 124
    .line 125
    const-string v12, "APP_NOTIFICATIONS_UNBLOCKED"

    .line 126
    .line 127
    const/16 v13, 0xa

    .line 128
    .line 129
    invoke-direct {v10, v13, v11, v12}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sput-object v10, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 133
    .line 134
    filled-new-array/range {v0 .. v10}, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->$VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 139
    .line 140
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->$VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
