.class public Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field mCachedLocale:Ljava/util/Locale;

.field public mCachedNotificationInfos:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getCachedLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public loadNotificationInfos()Landroid/util/SparseArray;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x10701dd

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const v4, 0x10701da

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const v5, 0x10701d9

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const v6, 0x10701d8

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const v7, 0x10701df

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget-object v7, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const v8, 0x10701de

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    iget-object v8, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const v9, 0x10701dc

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v9, 0x10701db

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    array-length v9, v2

    .line 113
    array-length v10, v3

    .line 114
    if-ne v9, v10, :cond_2

    .line 115
    .line 116
    array-length v9, v2

    .line 117
    array-length v10, v4

    .line 118
    if-ne v9, v10, :cond_2

    .line 119
    .line 120
    array-length v9, v2

    .line 121
    array-length v10, v5

    .line 122
    if-ne v9, v10, :cond_2

    .line 123
    .line 124
    array-length v9, v2

    .line 125
    array-length v10, v6

    .line 126
    if-ne v9, v10, :cond_2

    .line 127
    .line 128
    array-length v9, v2

    .line 129
    array-length v10, v7

    .line 130
    if-ne v9, v10, :cond_2

    .line 131
    .line 132
    array-length v9, v2

    .line 133
    array-length v10, v8

    .line 134
    if-ne v9, v10, :cond_2

    .line 135
    .line 136
    array-length v9, v2

    .line 137
    array-length v10, v0

    .line 138
    if-ne v9, v10, :cond_2

    .line 139
    .line 140
    const/4 v9, 0x0

    .line 141
    :goto_0
    array-length v10, v2

    .line 142
    if-ge v9, v10, :cond_1

    .line 143
    .line 144
    aget v10, v2, v9

    .line 145
    .line 146
    const/4 v11, -0x1

    .line 147
    if-ne v10, v11, :cond_0

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_0
    new-instance v11, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    .line 151
    .line 152
    aget-object v13, v3, v9

    .line 153
    .line 154
    aget-object v14, v4, v9

    .line 155
    .line 156
    aget-object v15, v5, v9

    .line 157
    .line 158
    aget-object v16, v6, v9

    .line 159
    .line 160
    aget-object v17, v7, v9

    .line 161
    .line 162
    aget-object v18, v8, v9

    .line 163
    .line 164
    aget-object v19, v0, v9

    .line 165
    .line 166
    move-object v12, v11

    .line 167
    invoke-direct/range {v12 .. v19}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_1
    return-object v1

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    const-string v1, "The length of state identifiers and notification texts must match!"

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0
.end method

.method public refreshNotificationInfos(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->loadNotificationInfos()Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedNotificationInfos:Landroid/util/SparseArray;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method
