.class public final Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "PhoneWindowManagerExt"

    .line 9
    .line 10
    const-string/jumbo v1, "start registerHotKeyApp."

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move-object v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    const-string v0, "PhoneWindowManagerExt"

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Can not register hot key. packageName is empty. mTopActivity="

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :try_start_0
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_1
    if-nez v2, :cond_3

    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 91
    .line 92
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_8

    .line 103
    .line 104
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v6, Landroid/content/Intent;

    .line 110
    .line 111
    const-string v7, "android.intent.action.MAIN"

    .line 112
    .line 113
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v7, "android.intent.category.LAUNCHER"

    .line 117
    .line 118
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 122
    .line 123
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-nez v5, :cond_4

    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_8

    .line 146
    .line 147
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 152
    .line 153
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 154
    .line 155
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_5

    .line 162
    .line 163
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 164
    .line 165
    iget-object v6, v5, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 166
    .line 167
    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 168
    .line 169
    iget v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    if-nez v4, :cond_6

    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const-string v4, "KeyCustomizationManager"

    .line 181
    .line 182
    const-string v5, "componentName is empty. Can not set hot key info."

    .line 183
    .line 184
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    iget-object v6, v6, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 189
    .line 190
    iget-object v7, v6, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 191
    .line 192
    monitor-enter v7

    .line 193
    :try_start_1
    iget-object v8, v6, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 194
    .line 195
    invoke-virtual {v8, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 199
    .line 200
    .line 201
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 203
    .line 204
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 205
    .line 206
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    const v5, 0x1040628

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 232
    .line 233
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 234
    .line 235
    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 236
    .line 237
    invoke-virtual {v3, v4, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 241
    .line 242
    if-eqz v2, :cond_7

    .line 243
    .line 244
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 245
    .line 246
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    .line 247
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v4, "1"

    .line 251
    .line 252
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->saLogging(ILjava/lang/String;Z)V

    .line 263
    .line 264
    .line 265
    :cond_7
    return-void

    .line 266
    :catchall_0
    move-exception p0

    .line 267
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    throw p0

    .line 269
    :cond_8
    :goto_3
    const-string p0, "PhoneWindowManagerExt"

    .line 270
    .line 271
    const-string v1, "Can not register hot key. packageName="

    .line 272
    .line 273
    invoke-static {v1, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    return-void
.end method
