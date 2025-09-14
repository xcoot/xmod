.class public final Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final info:Lcom/android/server/wm/WmScreenshotInfo;

.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/wm/WmScreenshotInfo;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    .line 13
    .line 14
    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p1, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    .line 18
    .line 19
    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "takeScreenshot: info="

    .line 9
    .line 10
    .line 11
    const-string v2, "Exception: "

    .line 12
    .line 13
    const-string v3, "Too many screenshot service connection: "

    .line 14
    .line 15
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 16
    .line 17
    iget-object v5, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v5

    .line 20
    :try_start_0
    iget-object v6, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/4 v7, 0x3

    .line 27
    if-lt v6, v7, :cond_0

    .line 28
    .line 29
    const-string p0, "WindowManager"

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    monitor-exit v5

    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Lcom/android/server/wm/PersonaActivityHelper;->getCurrentScreenUserId(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_1

    .line 89
    .line 90
    iget-object v3, v0, Lcom/android/server/wm/WmScreenshotController;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 93
    .line 94
    .line 95
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string/jumbo v6, "restriction_property_screencapture_save_to_owner"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v6}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    const-string v3, "WindowManager"

    .line 110
    .line 111
    const-string v6, "Save screenshot to owner policy is enabled!"

    .line 112
    .line 113
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    move-object v4, v2

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 121
    :try_start_2
    const-string v6, "WindowManager"

    .line 122
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_1
    :goto_0
    const-string v2, "WindowManager"

    .line 139
    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", user="

    .line 149
    .line 150
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    const-string v1, "TakeScreenshot"

    .line 168
    .line 169
    const/16 v2, 0x15

    .line 170
    .line 171
    const/16 v3, 0xa

    .line 172
    .line 173
    invoke-static {v2, v3, v1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Landroid/content/Intent;

    .line 177
    .line 178
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v2, Landroid/content/ComponentName;

    .line 182
    .line 183
    const-string v3, "com.android.systemui"

    .line 184
    .line 185
    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 186
    .line 187
    invoke-direct {v2, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    new-instance v2, Lcom/android/server/wm/WmScreenshotController$1;

    .line 194
    .line 195
    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/WmScreenshotController$1;-><init>(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WmScreenshotInfo;)V

    .line 196
    .line 197
    .line 198
    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    const/4 v3, 0x1

    .line 201
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-eqz p0, :cond_2

    .line 206
    .line 207
    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 208
    .line 209
    new-instance v1, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WmScreenshotController;Ljava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Ljava/lang/Runnable;

    .line 227
    .line 228
    const-wide/16 v1, 0x2710

    .line 229
    .line 230
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    .line 232
    .line 233
    :cond_2
    monitor-exit v5

    .line 234
    :goto_1
    return-void

    .line 235
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    throw p0
.end method
