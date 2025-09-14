.class public final Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFontScaleUri:Landroid/net/Uri;

.field public final mFontWeightAdjustmentUri:Landroid/net/Uri;

.field public final mGestureHintUri:Landroid/net/Uri;

.field public final mHideErrorDialogsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "font_scale"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontScaleUri:Landroid/net/Uri;

    .line 15
    .line 16
    const-string v1, "hide_error_dialogs"

    .line 17
    .line 18
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    .line 23
    .line 24
    const-string v2, "font_weight_adjustment"

    .line 25
    .line 26
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontWeightAdjustmentUri:Landroid/net/Uri;

    .line 31
    .line 32
    const-string/jumbo v3, "navigation_bar_gesture_hint"

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mGestureHintUri:Landroid/net/Uri;

    .line 40
    .line 41
    iget-object v5, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, -0x1

    .line 49
    invoke-virtual {v5, v0, v6, p0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v1, v6, p0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v2, v6, p0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v4, v6, p0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    move v6, v0

    .line 75
    :cond_0
    iput-boolean v6, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGesutreHintOn:Z

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_9

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/net/Uri;

    .line 16
    .line 17
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontScaleUri:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p3, :cond_3

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    .line 28
    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eq p4, p3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const-string v1, "font_scale"

    .line 44
    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-static {p3, v1, v2, p4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    iget-object v1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 54
    .line 55
    .line 56
    monitor-enter v1

    .line 57
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 62
    .line 63
    cmpl-float v2, v2, p3

    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :try_start_1
    iget-object v2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput p3, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 81
    .line 82
    invoke-virtual {p2, v0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 83
    .line 84
    .line 85
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_3
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    .line 96
    .line 97
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-eqz p3, :cond_4

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 104
    .line 105
    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 106
    .line 107
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 108
    .line 109
    .line 110
    monitor-enter p3

    .line 111
    :try_start_3
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 118
    .line 119
    .line 120
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_4
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontWeightAdjustmentUri:Landroid/net/Uri;

    .line 132
    .line 133
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    if-eqz p3, :cond_7

    .line 138
    .line 139
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 140
    .line 141
    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    if-eq p4, p3, :cond_5

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_5
    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    const-string v1, "font_weight_adjustment"

    .line 158
    .line 159
    const v2, 0x7fffffff

    .line 160
    .line 161
    .line 162
    invoke-static {p3, v1, v2, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 163
    .line 164
    .line 165
    move-result p3

    .line 166
    iget-object v1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 169
    .line 170
    .line 171
    monitor-enter v1

    .line 172
    :try_start_5
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 177
    .line 178
    if-ne v2, p3, :cond_6

    .line 179
    .line 180
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 181
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :catchall_2
    move-exception p0

    .line 187
    goto :goto_2

    .line 188
    :cond_6
    :try_start_6
    iget-object v2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 189
    .line 190
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iput p3, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 195
    .line 196
    invoke-virtual {p2, v0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 197
    .line 198
    .line 199
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 206
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 207
    .line 208
    .line 209
    throw p0

    .line 210
    :cond_7
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mGestureHintUri:Landroid/net/Uri;

    .line 211
    .line 212
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-eqz p2, :cond_0

    .line 217
    .line 218
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 219
    .line 220
    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    const-string/jumbo v1, "navigation_bar_gesture_hint"

    .line 227
    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    invoke-static {p3, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_8

    .line 235
    .line 236
    move v0, v2

    .line 237
    :cond_8
    iput-boolean v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGesutreHintOn:Z

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_9
    return-void
.end method
