.class public final Lcom/android/server/notification/NotificationHighlightCore$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationHighlightCore;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHighlightCore;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string v0, "NotificationHighlightCore"

    .line 10
    .line 11
    const/4 v1, -0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 17
    .line 18
    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string/jumbo v4, "noti_intelligence_priority_conversation"

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ne p2, v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v3

    .line 35
    :goto_0
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->PROMOTION_URI:Landroid/net/Uri;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 50
    .line 51
    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string/jumbo v4, "noti_filter_promotion_notification"

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-ne p2, v2, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v2, v3

    .line 68
    :goto_1
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mPromotionsEnabled:Z

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo p2, "onChange  mPromotionsEnabled="

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 79
    .line 80
    iget-boolean p2, p2, Lcom/android/server/notification/NotificationHighlightCore;->mPromotionsEnabled:Z

    .line 81
    .line 82
    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->BG_ACTIVITIES_URI:Landroid/net/Uri;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 97
    .line 98
    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string/jumbo v4, "noti_filter_background_notification"

    .line 105
    .line 106
    .line 107
    invoke-static {p2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-ne p2, v2, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    move v2, v3

    .line 115
    :goto_2
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mBgActivitiesEnabled:Z

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string/jumbo p2, "onChange  mBgActivitiesEnabled="

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 126
    .line 127
    iget-boolean p2, p2, Lcom/android/server/notification/NotificationHighlightCore;->mBgActivitiesEnabled:Z

    .line 128
    .line 129
    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 144
    .line 145
    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    const-string/jumbo v4, "noti_filter_low_importance_notification"

    .line 152
    .line 153
    .line 154
    invoke-static {p2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-ne p2, v2, :cond_6

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    move v2, v3

    .line 162
    :goto_3
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mMinimizedNotiEnabled:Z

    .line 163
    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string/jumbo p2, "onChange  mMinimizedNotiEnabled="

    .line 167
    .line 168
    .line 169
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p2, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 173
    .line 174
    iget-boolean p2, p2, Lcom/android/server/notification/NotificationHighlightCore;->mMinimizedNotiEnabled:Z

    .line 175
    .line 176
    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 177
    .line 178
    .line 179
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string/jumbo p2, "onChange  mPrivacyConverstionEnabled="

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    .line 188
    .line 189
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    .line 190
    .line 191
    invoke-static {v0, p1, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
