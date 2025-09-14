.class public final Lcom/android/server/notification/GroupHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAutoGroupAtCount:I

.field public final mCallback:Lcom/android/server/notification/NotificationManagerService$3;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUngroupedNotifications:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/server/notification/NotificationManagerService$3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput p3, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    return-void
.end method

.method public static generatePackageKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string/jumbo p0, "|"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .locals 10

    .line 1
    check-cast p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v4, v0

    .line 11
    move v3, v1

    .line 12
    move v5, v3

    .line 13
    move v6, v5

    .line 14
    move v7, v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    if-eqz v8, :cond_5

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    check-cast v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v9, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 33
    .line 34
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    if-nez v9, :cond_2

    .line 39
    .line 40
    move v3, v2

    .line 41
    :cond_2
    :goto_1
    if-ne v6, v1, :cond_3

    .line 42
    .line 43
    iget v6, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget v9, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 47
    .line 48
    if-eq v6, v9, :cond_4

    .line 49
    .line 50
    move v5, v2

    .line 51
    :cond_4
    :goto_2
    iget v8, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 52
    .line 53
    if-ne v8, v1, :cond_0

    .line 54
    .line 55
    move v7, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_5
    if-nez v3, :cond_8

    .line 58
    .line 59
    :try_start_0
    iget-object p2, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    instance-of v3, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 66
    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    move-object v3, p2

    .line 70
    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/high16 v4, -0x40000000    # -2.0f

    .line 89
    .line 90
    mul-float/2addr v3, v4

    .line 91
    invoke-static {p1, p2, v1, v3}, Landroid/graphics/drawable/Icon;->createWithResourceAdaptiveDrawable(Ljava/lang/String;IZF)Landroid/graphics/drawable/Icon;

    .line 92
    .line 93
    .line 94
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_3

    .line 96
    :catch_0
    move-exception p1

    .line 97
    const-string p2, "GroupHelper"

    .line 98
    .line 99
    const-string v1, "Failed to getApplicationIcon() in getMonochromeAppIcon()"

    .line 100
    .line 101
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 105
    .line 106
    move-object v4, v0

    .line 107
    goto :goto_4

    .line 108
    :cond_7
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const p1, 0x108057e

    .line 111
    .line 112
    .line 113
    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    move-object v4, p0

    .line 118
    :cond_8
    :goto_4
    if-nez v5, :cond_9

    .line 119
    .line 120
    move v6, v2

    .line 121
    :cond_9
    new-instance p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 122
    .line 123
    invoke-direct {p0, v2, v4, v6, v7}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;II)V

    .line 124
    .line 125
    .line 126
    return-object p0
.end method

.method public getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-lez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p0, v0

    .line 11
    :goto_0
    move v1, v0

    .line 12
    move v2, v1

    .line 13
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x10

    .line 18
    .line 19
    if-ge v1, v3, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 26
    .line 27
    iget v3, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 28
    .line 29
    and-int/2addr v3, v4

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    move p0, v0

    .line 34
    :goto_2
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 39
    .line 40
    iget v3, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 41
    .line 42
    and-int/lit8 v3, v3, 0x22

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 51
    .line 52
    iget v3, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0x22

    .line 55
    .line 56
    or-int/2addr v2, v3

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    if-eqz p0, :cond_4

    .line 61
    .line 62
    move v0, v4

    .line 63
    :cond_4
    or-int/lit16 p0, v0, 0x700

    .line 64
    .line 65
    or-int/2addr p0, v2

    .line 66
    return p0
.end method

.method public getNotGroupedByAppCount(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->generatePackageKey(ILjava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 9
    .line 10
    new-instance p2, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final maybeGroup(Landroid/service/notification/StatusBarNotification;Z)Z
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {v4, v5}, Lcom/android/server/notification/GroupHelper;->generatePackageKey(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 29
    .line 30
    new-instance v6, Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroid/util/ArrayMap;

    .line 40
    .line 41
    new-instance v6, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget v7, v7, Landroid/app/Notification;->flags:I

    .line 48
    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget v9, v9, Landroid/app/Notification;->color:I

    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    iget v10, v10, Landroid/app/Notification;->visibility:I

    .line 68
    .line 69
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-object v6, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    iget v6, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 89
    .line 90
    if-ge v4, v6, :cond_1

    .line 91
    .line 92
    if-eqz p2, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const/4 v4, 0x0

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {v0, v5}, Lcom/android/server/notification/GroupHelper;->getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    .line 114
    .line 115
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-lez v3, :cond_e

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    if-eqz p2, :cond_4

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iget v6, v6, Landroid/app/Notification;->color:I

    .line 138
    .line 139
    invoke-static {}, Lcom/android/server/notification/Flags;->autogroupSummaryIconUpdate()Z

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v0, v8, v2}, Lcom/android/server/notification/GroupHelper;->getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget-object v8, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 151
    .line 152
    if-nez v8, :cond_2

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    move-object v5, v8

    .line 156
    :goto_2
    iget v8, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 157
    .line 158
    if-ne v8, v3, :cond_3

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_3
    move v6, v8

    .line 162
    :goto_3
    new-instance v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 163
    .line 164
    iget v2, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 165
    .line 166
    invoke-direct {v8, v4, v5, v6, v2}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;II)V

    .line 167
    .line 168
    .line 169
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v2, v4, v5, v8}, Lcom/android/server/notification/NotificationManagerService$3;->updateAutogroupSummary(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    .line 180
    .line 181
    .line 182
    move-object/from16 v21, v1

    .line 183
    .line 184
    goto/16 :goto_8

    .line 185
    .line 186
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    iget v5, v5, Landroid/app/Notification;->color:I

    .line 198
    .line 199
    invoke-static {}, Lcom/android/server/notification/Flags;->autogroupSummaryIconUpdate()Z

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v0, v5, v2}, Lcom/android/server/notification/GroupHelper;->getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iget-object v5, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 211
    .line 212
    iget v6, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 213
    .line 214
    iget v2, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 215
    .line 216
    iget-object v8, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 217
    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    iget-object v15, v8, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 231
    .line 232
    iget-object v12, v15, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 233
    .line 234
    invoke-virtual {v12, v9, v11}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    iget-object v13, v15, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 239
    .line 240
    monitor-enter v13

    .line 241
    :try_start_1
    iget-object v12, v15, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 242
    .line 243
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 248
    .line 249
    if-nez v10, :cond_5

    .line 250
    .line 251
    monitor-exit v13

    .line 252
    move-object/from16 v21, v1

    .line 253
    .line 254
    move/from16 v22, v11

    .line 255
    .line 256
    const/4 v6, 0x0

    .line 257
    const/4 v12, 0x0

    .line 258
    goto/16 :goto_6

    .line 259
    .line 260
    :catchall_0
    move-exception v0

    .line 261
    move-object v11, v13

    .line 262
    goto/16 :goto_a

    .line 263
    .line 264
    :cond_5
    iget-object v7, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 265
    .line 266
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 267
    .line 268
    .line 269
    move-result-object v16

    .line 270
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    .line 271
    .line 272
    .line 273
    move-result v19

    .line 274
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 275
    .line 276
    .line 277
    move-result v20

    .line 278
    iget-object v12, v15, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 279
    .line 280
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    check-cast v3, Landroid/util/ArrayMap;

    .line 289
    .line 290
    if-nez v3, :cond_6

    .line 291
    .line 292
    new-instance v3, Landroid/util/ArrayMap;

    .line 293
    .line 294
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 295
    .line 296
    .line 297
    :cond_6
    iget-object v12, v15, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 298
    .line 299
    move/from16 v16, v14

    .line 300
    .line 301
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v14

    .line 305
    invoke-virtual {v12, v14, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v12

    .line 312
    if-nez v12, :cond_8

    .line 313
    .line 314
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 319
    .line 320
    const-string v14, "android.appInfo"

    .line 321
    .line 322
    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 323
    .line 324
    invoke-virtual {v12, v14, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 329
    .line 330
    new-instance v12, Landroid/os/Bundle;

    .line 331
    .line 332
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string v14, "android.appInfo"

    .line 336
    .line 337
    invoke-virtual {v12, v14, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    .line 339
    .line 340
    iget-object v14, v10, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 341
    .line 342
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v14

    .line 346
    move-object/from16 v21, v1

    .line 347
    .line 348
    new-instance v1, Landroid/app/Notification$Builder;

    .line 349
    .line 350
    move/from16 v22, v11

    .line 351
    .line 352
    invoke-virtual {v15}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    invoke-direct {v1, v11, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    const/4 v5, 0x1

    .line 364
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const/4 v11, 0x2

    .line 369
    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    const-string/jumbo v11, "ranker_group"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1, v4, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 397
    .line 398
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v15}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    .line 411
    .line 412
    move-result-object v14

    .line 413
    if-eqz v14, :cond_7

    .line 414
    .line 415
    iget-object v12, v15, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 416
    .line 417
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    .line 419
    const/4 v2, 0x0

    .line 420
    const/high16 v4, 0x4000000

    .line 421
    .line 422
    const/4 v5, 0x0

    .line 423
    const/4 v6, 0x0

    .line 424
    move-object v11, v13

    .line 425
    move v13, v2

    .line 426
    move/from16 v2, v16

    .line 427
    .line 428
    move-object/from16 v35, v15

    .line 429
    .line 430
    move v15, v4

    .line 431
    move-object/from16 v16, v5

    .line 432
    .line 433
    move-object/from16 v17, v9

    .line 434
    .line 435
    move/from16 v18, v0

    .line 436
    .line 437
    :try_start_2
    invoke-virtual/range {v12 .. v18}, Landroid/app/ActivityManagerInternal;->getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 442
    .line 443
    goto :goto_4

    .line 444
    :catchall_1
    move-exception v0

    .line 445
    goto/16 :goto_a

    .line 446
    .line 447
    :cond_7
    move-object v11, v13

    .line 448
    move-object/from16 v35, v15

    .line 449
    .line 450
    move/from16 v2, v16

    .line 451
    .line 452
    const/4 v6, 0x0

    .line 453
    :goto_4
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    .line 454
    .line 455
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v24

    .line 459
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v25

    .line 463
    const-string/jumbo v27, "ranker_group"

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 467
    .line 468
    .line 469
    move-result v28

    .line 470
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    .line 471
    .line 472
    .line 473
    move-result v29

    .line 474
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 475
    .line 476
    .line 477
    move-result-object v31

    .line 478
    const-string/jumbo v32, "ranker_group"

    .line 479
    .line 480
    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 482
    .line 483
    .line 484
    move-result-wide v33

    .line 485
    const v26, 0x7fffffff

    .line 486
    .line 487
    .line 488
    move-object/from16 v23, v0

    .line 489
    .line 490
    move-object/from16 v30, v1

    .line 491
    .line 492
    invoke-direct/range {v23 .. v34}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 493
    .line 494
    .line 495
    new-instance v12, Lcom/android/server/notification/NotificationRecord;

    .line 496
    .line 497
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iget-object v4, v10, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 502
    .line 503
    invoke-direct {v12, v1, v0, v4}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 504
    .line 505
    .line 506
    iput-boolean v2, v12, Lcom/android/server/notification/NotificationRecord;->mImportanceFixed:Z

    .line 507
    .line 508
    iget-boolean v1, v10, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 509
    .line 510
    iput-boolean v1, v12, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 511
    .line 512
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v3, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-object v0, v12

    .line 523
    goto :goto_5

    .line 524
    :cond_8
    move-object/from16 v21, v1

    .line 525
    .line 526
    move/from16 v22, v11

    .line 527
    .line 528
    move-object v11, v13

    .line 529
    move-object/from16 v35, v15

    .line 530
    .line 531
    const/4 v6, 0x0

    .line 532
    move-object v0, v6

    .line 533
    :goto_5
    if-eqz v0, :cond_9

    .line 534
    .line 535
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 536
    .line 537
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 538
    .line 539
    .line 540
    move-result v15

    .line 541
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 542
    .line 543
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v16

    .line 547
    const/16 v18, 0x1

    .line 548
    .line 549
    const/4 v1, 0x0

    .line 550
    move-object/from16 v12, v35

    .line 551
    .line 552
    move/from16 v13, v19

    .line 553
    .line 554
    move/from16 v14, v20

    .line 555
    .line 556
    move-object/from16 v17, v0

    .line 557
    .line 558
    move/from16 v19, v1

    .line 559
    .line 560
    invoke-virtual/range {v12 .. v19}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-eqz v1, :cond_9

    .line 565
    .line 566
    monitor-exit v11

    .line 567
    move-object v12, v0

    .line 568
    goto :goto_6

    .line 569
    :cond_9
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 570
    move-object v12, v6

    .line 571
    :goto_6
    if-eqz v12, :cond_b

    .line 572
    .line 573
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 574
    .line 575
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 576
    .line 577
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    const/16 v1, 0x64

    .line 582
    .line 583
    if-ne v0, v1, :cond_a

    .line 584
    .line 585
    const/4 v13, 0x1

    .line 586
    goto :goto_7

    .line 587
    :cond_a
    const/4 v13, 0x0

    .line 588
    :goto_7
    iget-object v10, v8, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 589
    .line 590
    iget-object v0, v10, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 591
    .line 592
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 593
    .line 594
    iget-object v2, v10, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    .line 595
    .line 596
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    new-instance v14, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 600
    .line 601
    invoke-direct {v14, v6}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 602
    .line 603
    .line 604
    move-object v9, v1

    .line 605
    move/from16 v11, v22

    .line 606
    .line 607
    invoke-direct/range {v9 .. v14}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 611
    .line 612
    .line 613
    :cond_b
    :goto_8
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const/4 v7, 0x0

    .line 618
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    if-eqz v1, :cond_f

    .line 623
    .line 624
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Ljava/lang/String;

    .line 629
    .line 630
    invoke-static {}, Landroid/app/Flags;->checkAutogroupBeforePost()Z

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    if-eqz v2, :cond_d

    .line 635
    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    if-eqz v2, :cond_c

    .line 645
    .line 646
    move-object/from16 v2, p0

    .line 647
    .line 648
    const/4 v5, 0x1

    .line 649
    const/4 v7, 0x1

    .line 650
    goto :goto_9

    .line 651
    :cond_c
    move-object/from16 v2, p0

    .line 652
    .line 653
    iget-object v3, v2, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 654
    .line 655
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 656
    .line 657
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 658
    .line 659
    monitor-enter v4

    .line 660
    :try_start_3
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 661
    .line 662
    const/4 v5, 0x1

    .line 663
    invoke-virtual {v3, v1, v5}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;Z)V

    .line 664
    .line 665
    .line 666
    monitor-exit v4

    .line 667
    const/4 v5, 0x1

    .line 668
    goto :goto_9

    .line 669
    :catchall_2
    move-exception v0

    .line 670
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 671
    throw v0

    .line 672
    :cond_d
    move-object/from16 v2, p0

    .line 673
    .line 674
    iget-object v3, v2, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 675
    .line 676
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 677
    .line 678
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 679
    .line 680
    monitor-enter v4

    .line 681
    :try_start_4
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 682
    .line 683
    const/4 v5, 0x1

    .line 684
    invoke-virtual {v3, v1, v5}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;Z)V

    .line 685
    .line 686
    .line 687
    monitor-exit v4

    .line 688
    goto :goto_9

    .line 689
    :catchall_3
    move-exception v0

    .line 690
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 691
    throw v0

    .line 692
    :goto_a
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 693
    throw v0

    .line 694
    :cond_e
    const/4 v7, 0x0

    .line 695
    :cond_f
    return v7

    .line 696
    :catchall_4
    move-exception v0

    .line 697
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 698
    throw v0
.end method

.method public final maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v2, v3}, Lcom/android/server/notification/GroupHelper;->generatePackageKey(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 22
    .line 23
    new-instance v4, Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, -0x1

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 67
    .line 68
    iget v3, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 69
    .line 70
    and-int/lit8 v3, v3, 0x22

    .line 71
    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/notification/GroupHelper;->getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    move v3, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v3, v5

    .line 81
    :goto_0
    if-nez p2, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    move p2, v4

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move p2, v5

    .line 92
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_3

    .line 97
    .line 98
    move v2, v4

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    .line 107
    move v2, v5

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move p2, v5

    .line 110
    move v2, p2

    .line 111
    move v3, v2

    .line 112
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 122
    .line 123
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 124
    .line 125
    monitor-enter v2

    .line 126
    :try_start_1
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 127
    .line 128
    invoke-virtual {v0, p3, v1}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    monitor-exit v2

    .line 132
    goto :goto_5

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    throw p0

    .line 136
    :cond_5
    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    iget v7, v7, Landroid/app/Notification;->color:I

    .line 151
    .line 152
    invoke-direct {v1, v6, v2, v7, v5}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;II)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/android/server/notification/Flags;->autogroupSummaryIconUpdate()Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {p0, v5, v0}, Lcom/android/server/notification/GroupHelper;->getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 167
    .line 168
    if-nez v5, :cond_6

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    move-object v2, v5

    .line 172
    :goto_3
    iget v5, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 173
    .line 174
    if-ne v5, v4, :cond_7

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    move v7, v5

    .line 178
    :goto_4
    new-instance v5, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 179
    .line 180
    iget v0, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 181
    .line 182
    invoke-direct {v5, v6, v2, v7, v0}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v1}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_8

    .line 190
    .line 191
    move-object v1, v5

    .line 192
    :cond_8
    xor-int/2addr v0, v4

    .line 193
    if-nez v3, :cond_9

    .line 194
    .line 195
    if-eqz v0, :cond_a

    .line 196
    .line 197
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v0, p3, v2, v1}, Lcom/android/server/notification/NotificationManagerService$3;->updateAutogroupSummary(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    .line 204
    .line 205
    .line 206
    :cond_a
    :goto_5
    if-eqz p2, :cond_d

    .line 207
    .line 208
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 215
    .line 216
    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter p2

    .line 219
    :try_start_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 220
    .line 221
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 222
    .line 223
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    check-cast p3, Lcom/android/server/notification/NotificationRecord;

    .line 228
    .line 229
    if-nez p3, :cond_b

    .line 230
    .line 231
    const-string p0, "Failed to remove autogroup "

    .line 232
    .line 233
    const-string p3, "NotificationService"

    .line 234
    .line 235
    invoke-static {p0, p1, p3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_b
    iget-object v0, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-eqz v0, :cond_c

    .line 246
    .line 247
    const/4 v0, 0x0

    .line 248
    invoke-static {p3, v0}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const p3, 0x4344e

    .line 252
    .line 253
    .line 254
    invoke-static {p3, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 255
    .line 256
    .line 257
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 258
    .line 259
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    .line 262
    .line 263
    .line 264
    :cond_c
    :goto_6
    monitor-exit p2

    .line 265
    goto :goto_7

    .line 266
    :catchall_2
    move-exception p0

    .line 267
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 268
    throw p0

    .line 269
    :cond_d
    :goto_7
    return-void

    .line 270
    :goto_8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    throw p0
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7
    .line 8
    const-string v2, "android.ongoingActivityNoti.style"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->maybeGroup(Landroid/service/notification/StatusBarNotification;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :goto_0
    const-string p1, "GroupHelper"

    .line 46
    .line 47
    const-string p2, "Failure processing new notification"

    .line 48
    .line 49
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_1
    return v0
.end method
