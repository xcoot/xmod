.class public final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;


# static fields
.field public static final POWER_BOOST_TIMEOUT_MS:I


# instance fields
.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field public final mBindIntent:Landroid/content/Intent;

.field public mBound:Z

.field public final mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

.field public final mCallingUid:I

.field public mCanceled:Z

.field public final mContext:Landroid/content/Context;

.field public final mFgHandler:Landroid/os/Handler;

.field public final mFullConnection:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

.field public mFullyBound:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mListeningVisibleActivity:Z

.field public final mLock:Ljava/lang/Object;

.field public mLowPowerStandbyAllowlisted:Z

.field public final mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyController$LocalService;

.field public mPendingHandleAssistWithoutData:Ljava/util/List;

.field public final mPendingShowCallbacks:Ljava/util/ArrayList;

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mRemoveFromLowPowerStandbyAllowlistRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public mService:Landroid/service/voice/IVoiceInteractionSessionService;

.field public mSession:Landroid/service/voice/IVoiceInteractionSession;

.field public final mSessionComponentName:Landroid/content/ComponentName;

.field public mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

.field public mShowArgs:Landroid/os/Bundle;

.field public final mShowAssistDisclosureRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

.field public final mShowCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

.field public mShowFlags:I

.field public mShown:Z

.field public final mToken:Landroid/os/IBinder;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUser:I

.field public final mVisibleActivityInfoForToken:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "vendor.powerhal.interaction.max"

    .line 2
    .line 3
    .line 4
    const-string v1, "200"

    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->POWER_BOOST_TIMEOUT_MS:I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    .line 31
    new-instance v1, Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 37
    .line 38
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mRemoveFromLowPowerStandbyAllowlistRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    .line 51
    .line 52
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    .line 58
    .line 59
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 69
    .line 70
    iput p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 71
    .line 72
    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    .line 75
    .line 76
    iput p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 77
    .line 78
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 81
    .line 82
    .line 83
    move-result-object p5

    .line 84
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 85
    .line 86
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 87
    .line 88
    .line 89
    const-class p5, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 90
    .line 91
    invoke-static {p5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p5

    .line 95
    check-cast p5, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 96
    .line 97
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 98
    .line 99
    const-string/jumbo p6, "window"

    .line 100
    .line 101
    .line 102
    invoke-static {p6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 103
    .line 104
    .line 105
    move-result-object p6

    .line 106
    invoke-static {p6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 107
    .line 108
    .line 109
    move-result-object p6

    .line 110
    iput-object p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    .line 111
    .line 112
    const-class p7, Landroid/os/PowerManagerInternal;

    .line 113
    .line 114
    invoke-static {p7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p7

    .line 118
    check-cast p7, Landroid/os/PowerManagerInternal;

    .line 119
    .line 120
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 121
    .line 122
    const-class p7, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 123
    .line 124
    invoke-static {p7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p7

    .line 128
    check-cast p7, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 129
    .line 130
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 131
    .line 132
    const-class p7, Landroid/app/AppOpsManager;

    .line 133
    .line 134
    invoke-virtual {p4, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p7

    .line 138
    check-cast p7, Landroid/app/AppOpsManager;

    .line 139
    .line 140
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 141
    .line 142
    .line 143
    move-result-object p7

    .line 144
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    .line 145
    .line 146
    new-instance p7, Lcom/android/server/am/AssistDataRequester;

    .line 147
    .line 148
    const-string v1, "appops"

    .line 149
    .line 150
    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    move-object v4, v1

    .line 155
    check-cast v4, Landroid/app/AppOpsManager;

    .line 156
    .line 157
    const/16 v7, 0x32

    .line 158
    .line 159
    move-object v1, p7

    .line 160
    move-object v2, p4

    .line 161
    move-object v3, p6

    .line 162
    move-object v5, p0

    .line 163
    move-object v6, p1

    .line 164
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;I)V

    .line 165
    .line 166
    .line 167
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 168
    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string/jumbo p7, "voicesession:"

    .line 172
    .line 173
    .line 174
    invoke-direct {p1, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p7

    .line 181
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p5, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 189
    .line 190
    invoke-virtual {p5, p1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 195
    .line 196
    new-instance p1, Landroid/content/Intent;

    .line 197
    .line 198
    const-string p5, "android.service.voice.VoiceInteractionService"

    .line 199
    .line 200
    invoke-direct {p1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    .line 204
    .line 205
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    .line 207
    .line 208
    new-instance p5, Landroid/os/UserHandle;

    .line 209
    .line 210
    invoke-direct {p5, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 211
    .line 212
    .line 213
    const p3, 0x100031

    .line 214
    .line 215
    .line 216
    invoke-virtual {p4, p1, p0, p3, p5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 221
    .line 222
    const-string p0, "VoiceInteractionServiceManager"

    .line 223
    .line 224
    if-eqz p1, :cond_0

    .line 225
    .line 226
    const/4 p1, 0x0

    .line 227
    const/16 p2, 0x7ef

    .line 228
    .line 229
    const/4 p3, 0x0

    .line 230
    :try_start_0
    invoke-interface {p6, v0, p2, p3, p1}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :catch_0
    move-exception p1

    .line 235
    const-string p2, "Failed adding window token"

    .line 236
    .line 237
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string p3, "Failed binding to voice interaction session service "

    .line 244
    .line 245
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :goto_0
    return-void
.end method

.method public static getTopVisibleActivityInfosLocked()Landroid/util/ArrayMap;
    .locals 8

    .line 1
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v0, "VoiceInteractionServiceManager"

    .line 22
    .line 23
    const-string/jumbo v1, "no visible activity"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    new-instance v2, Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    if-ge v3, v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/android/server/wm/ActivityAssistInfo;

    .line 48
    .line 49
    iget-object v5, v4, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    .line 50
    .line 51
    new-instance v6, Landroid/service/voice/VisibleActivityInfo;

    .line 52
    .line 53
    iget-object v7, v4, Lcom/android/server/wm/ActivityAssistInfo;->mAssistToken:Landroid/os/IBinder;

    .line 54
    .line 55
    iget v4, v4, Lcom/android/server/wm/ActivityAssistInfo;->mTaskId:I

    .line 56
    .line 57
    invoke-direct {v6, v4, v7}, Landroid/service/voice/VisibleActivityInfo;-><init>(ILandroid/os/IBinder;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final canHandleReceivedAssistDataLocked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final cancelLocked(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 20
    .line 21
    const-string v2, "VoiceInteractionServiceManager"

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const-string v1, "Voice interation session already dead"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 45
    .line 46
    invoke-interface {p1, v1}, Landroid/app/IActivityTaskManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .line 48
    .line 49
    :catch_1
    :cond_1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 52
    .line 53
    .line 54
    :try_start_2
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 57
    .line 58
    invoke-interface {p1, v1, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_2
    move-exception p1

    .line 63
    const-string v1, "Failed removing window token"

    .line 64
    .line 65
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 76
    .line 77
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 89
    .line 90
    :cond_3
    return-void
.end method

.method public final doHandleAssistWithoutData(Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    const/4 v0, 0x0

    .line 6
    move v9, v0

    .line 7
    :goto_0
    if-ge v9, v8, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/wm/ActivityAssistInfo;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/server/wm/ActivityAssistInfo;->mAssistToken:Landroid/os/IBinder;

    .line 16
    .line 17
    iget v1, v0, Lcom/android/server/wm/ActivityAssistInfo;->mTaskId:I

    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    move v6, v9

    .line 25
    move v7, v8

    .line 26
    invoke-interface/range {v0 .. v7}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    add-int/lit8 v9, v9, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final getUserDisabledShowContextLocked()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 8
    .line 9
    const-string v2, "assist_structure_enabled"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move v0, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "assist_screenshot_enabled"

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 30
    .line 31
    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    or-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    :cond_1
    return v0
.end method

.method public final grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-ge v0, p4, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v2, p2, p5, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0, v1, p2, p5, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method public final grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "content"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {p1, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    move v4, p4

    .line 37
    move v7, p2

    .line 38
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 42
    .line 43
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 56
    .line 57
    iget v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    move v4, p4

    .line 61
    move-object v5, p3

    .line 62
    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :catch_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception p0

    .line 72
    :try_start_1
    const-string p1, "VoiceInteractionServiceManager"

    .line 73
    .line 74
    const-string p2, "Can\'t propagate permission"

    .line 75
    .line 76
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :goto_2
    return-void
.end method

.method public final handleVisibleActivitiesLocked(ILandroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 7
    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    .line 11
    .line 12
    if-nez v0, :cond_e

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq p1, v2, :cond_7

    .line 24
    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v3, 0x3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-ne p1, v3, :cond_5

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getTopVisibleActivityInfosLocked()Landroid/util/ArrayMap;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    move-object v0, p1

    .line 44
    check-cast v0, Landroid/service/voice/VisibleActivityInfo;

    .line 45
    .line 46
    :goto_0
    if-eqz v0, :cond_4

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/service/voice/VisibleActivityInfo;

    .line 56
    .line 57
    if-nez p1, :cond_b

    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    const/4 v0, 0x4

    .line 61
    if-ne p1, v0, :cond_6

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/service/voice/VisibleActivityInfo;

    .line 70
    .line 71
    if-nez p1, :cond_b

    .line 72
    .line 73
    return-void

    .line 74
    :cond_6
    const-string/jumbo p0, "notifyActivityEventChangedLocked unexpected type="

    .line 75
    .line 76
    .line 77
    const-string p2, "VoiceInteractionServiceManager"

    .line 78
    .line 79
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_8

    .line 90
    .line 91
    return-void

    .line 92
    :cond_8
    invoke-static {}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getTopVisibleActivityInfosLocked()Landroid/util/ArrayMap;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-nez p1, :cond_9

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_9
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    move-object v0, p1

    .line 104
    check-cast v0, Landroid/service/voice/VisibleActivityInfo;

    .line 105
    .line 106
    :goto_2
    if-nez v0, :cond_a

    .line 107
    .line 108
    return-void

    .line 109
    :cond_a
    move-object p1, v0

    .line 110
    move v4, v2

    .line 111
    :cond_b
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 112
    .line 113
    if-eqz v4, :cond_c

    .line 114
    .line 115
    move v1, v2

    .line 116
    :cond_c
    invoke-interface {v0, p1, v1}, Landroid/service/voice/IVoiceInteractionSession;->notifyVisibleActivityInfoChanged(Landroid/service/voice/VisibleActivityInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    :catch_0
    if-eqz v4, :cond_d

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_d
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_e
    :goto_3
    return-void
.end method

.method public final hideLocked()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 15
    .line 16
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 19
    .line 20
    iput-boolean v2, v3, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 21
    .line 22
    iput v1, v3, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 23
    .line 24
    iput v1, v3, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 25
    .line 26
    iget-object v4, v3, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    :try_start_0
    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :cond_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 51
    .line 52
    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 53
    .line 54
    check-cast v3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    invoke-virtual {v3, v4, v0, v6, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 69
    .line 70
    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    :catch_1
    :cond_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 74
    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    iget-object v4, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 78
    .line 79
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v4

    .line 82
    :try_start_2
    iput-boolean v2, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mCanceled:Z

    .line 83
    .line 84
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    throw p0

    .line 91
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 92
    .line 93
    const/4 v3, -0x1

    .line 94
    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->removeFromLowPowerStandbyAllowlist()V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    .line 105
    .line 106
    check-cast v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 107
    .line 108
    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 109
    .line 110
    monitor-enter v3

    .line 111
    :try_start_4
    iget-object v4, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 112
    .line 113
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    move v5, v1

    .line 120
    :goto_1
    if-ge v5, v4, :cond_4

    .line 121
    .line 122
    iget-object v6, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 123
    .line 124
    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 125
    .line 126
    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    .line 132
    :try_start_5
    invoke-interface {v6}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionHidden()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catchall_1
    move-exception p0

    .line 137
    goto :goto_3

    .line 138
    :catch_2
    move-exception v6

    .line 139
    :try_start_6
    const-string v7, "VoiceInteractionManager"

    .line 140
    .line 141
    const-string v8, "Error delivering voice interaction closed event."

    .line 142
    .line 143
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    iget-object v4, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 150
    .line 151
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 154
    .line 155
    .line 156
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 157
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 158
    .line 159
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 160
    .line 161
    invoke-virtual {v0, v3, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setSessionWindowVisible(Landroid/os/IBinder;Z)V

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :goto_3
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 166
    throw p0

    .line 167
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 168
    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 176
    .line 177
    .line 178
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 179
    .line 180
    :cond_6
    return v2

    .line 181
    :cond_7
    return v1
.end method

.method public final onAssistDataReceivedLocked(IILandroid/os/Bundle;)V
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v0, p3

    .line 3
    .line 4
    iget-object v1, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v0, v1

    .line 19
    move v1, v2

    .line 20
    move-object v2, v3

    .line 21
    move-object v3, v8

    .line 22
    :try_start_0
    invoke-interface/range {v0 .. v7}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_1
    const-string/jumbo v1, "taskId"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const-string v1, "activityId"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const-string v1, "data"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const-string/jumbo v1, "structure"

    .line 47
    .line 48
    .line 49
    const-class v2, Landroid/app/assist/AssistStructure;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-object v10, v1

    .line 56
    check-cast v10, Landroid/app/assist/AssistStructure;

    .line 57
    .line 58
    const-string v1, "content"

    .line 59
    .line 60
    const-class v2, Landroid/app/assist/AssistContent;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v11, v0

    .line 67
    check-cast v11, Landroid/app/assist/AssistContent;

    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    const-string v1, "android.intent.extra.ASSIST_UID"

    .line 73
    .line 74
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :cond_2
    move v12, v0

    .line 79
    if-ltz v12, :cond_4

    .line 80
    .line 81
    if-eqz v11, :cond_4

    .line 82
    .line 83
    invoke-virtual {v11}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {v2}, Landroid/content/Intent;->isAccessUriMode(I)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iget v4, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 110
    .line 111
    iget-object v0, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    move-object v0, p0

    .line 118
    move v3, v12

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {v11}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    iget v4, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 129
    .line 130
    iget-object v0, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const/4 v2, 0x1

    .line 137
    move-object v0, p0

    .line 138
    move v3, v12

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :try_start_1
    iget-object v2, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 143
    .line 144
    move v3, v7

    .line 145
    move-object v4, v8

    .line 146
    move-object v5, v9

    .line 147
    move-object v6, v10

    .line 148
    move-object v7, v11

    .line 149
    move v8, p1

    .line 150
    move v9, p2

    .line 151
    invoke-interface/range {v2 .. v9}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .line 153
    .line 154
    :catch_0
    :goto_0
    return-void
.end method

.method public final onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 19
    .line 20
    invoke-interface {p2, v0, v1, p0}, Landroid/service/voice/IVoiceInteractionSessionService;->newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception p0

    .line 27
    :try_start_2
    const-string p2, "VoiceInteractionServiceManager"

    .line 28
    .line 29
    const-string v0, "Failed adding window token"

    .line 30
    .line 31
    invoke-static {p2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    monitor-exit p1

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    const/4 v0, 0x0

    .line 19
    :try_start_1
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 20
    .line 21
    monitor-exit p1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0

    .line 26
    :catchall_1
    move-exception p0

    .line 27
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    throw p0
.end method

.method public final removeFromLowPowerStandbyAllowlist()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyAllowlisted:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mRemoveFromLowPowerStandbyAllowlistRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v1, v2, v3}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyAllowlisted:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
