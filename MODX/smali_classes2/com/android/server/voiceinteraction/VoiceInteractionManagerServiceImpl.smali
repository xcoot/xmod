.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;


# static fields
.field public static final SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z


# instance fields
.field public final mAccessibilitySettingsListeners:Ljava/util/ArrayList;

.field public mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

.field public final mAm:Landroid/app/IActivityManager;

.field public final mAtm:Landroid/app/IActivityTaskManager;

.field public mBound:Z

.field public final mBroadcastReceiver:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mConnection:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

.field public final mContext:Landroid/content/Context;

.field public final mDirectActionsHandler:Landroid/os/Handler;

.field public mDisabledShowContext:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHotwordDetectionComponentName:Landroid/content/ComponentName;

.field public volatile mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field public final mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mService:Landroid/service/voice/IVoiceInteractionService;

.field public final mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field public final mSessionComponentName:Landroid/content/ComponentName;

.field public final mUser:I

.field public final mValid:Z

.field public final mVisualQueryDetectionComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.hotword.visual_query_service_enabled"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILandroid/content/ComponentName;)V
    .locals 8

    .line 1
    const-string v0, "VoiceInteractionServiceManager"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 8
    .line 9
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

    .line 10
    .line 11
    invoke-direct {v3, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    .line 12
    .line 13
    .line 14
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

    .line 15
    .line 16
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAccessibilitySettingsListeners:Ljava/util/ArrayList;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v2, Landroid/os/Handler;

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDirectActionsHandler:Landroid/os/Handler;

    .line 41
    .line 42
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 43
    .line 44
    iput p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 45
    .line 46
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 47
    .line 48
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    .line 53
    .line 54
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    .line 59
    .line 60
    const-class p3, Landroid/content/pm/PackageManagerInternal;

    .line 61
    .line 62
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroid/content/pm/PackageManagerInternal;

    .line 67
    .line 68
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 72
    .line 73
    const/4 p3, 0x0

    .line 74
    :try_start_0
    new-instance v2, Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-direct {v2, v5, p5, p4}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    if-eqz p4, :cond_0

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p2, "Bad voice interaction service: "

    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 113
    .line 114
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 115
    .line 116
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 117
    .line 118
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 119
    .line 120
    return-void

    .line 121
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 122
    .line 123
    new-instance p4, Landroid/content/ComponentName;

    .line 124
    .line 125
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-direct {p4, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getHotwordDetectionService()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    if-eqz p4, :cond_1

    .line 143
    .line 144
    new-instance v0, Landroid/content/ComponentName;

    .line 145
    .line 146
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-direct {v0, v4, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    move-object v0, p3

    .line 155
    :goto_0
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getVisualQueryDetectionService()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    if-eqz p4, :cond_2

    .line 162
    .line 163
    new-instance p3, Landroid/content/ComponentName;

    .line 164
    .line 165
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p5

    .line 169
    invoke-direct {p3, p5, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_2
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 173
    .line 174
    const-string/jumbo p3, "window"

    .line 175
    .line 176
    .line 177
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-static {p3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 182
    .line 183
    .line 184
    new-instance v4, Landroid/content/IntentFilter;

    .line 185
    .line 186
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 190
    .line 191
    invoke-virtual {v4, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v5, 0x0

    .line 195
    const/4 v7, 0x2

    .line 196
    move-object v2, p1

    .line 197
    move-object v6, p2

    .line 198
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    new-instance p2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$AccessibilitySettingsContentObserver;

    .line 202
    .line 203
    invoke-direct {p2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$AccessibilitySettingsContentObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    iget-object p1, p2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$AccessibilitySettingsContentObserver;->mAccessibilitySettingsEnabledUri:Landroid/net/Uri;

    .line 211
    .line 212
    const/4 p3, -0x1

    .line 213
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :catch_0
    move-exception p1

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string p4, "Voice interaction service not found: "

    .line 221
    .line 222
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .line 234
    .line 235
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 236
    .line 237
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 238
    .line 239
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 240
    .line 241
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 242
    .line 243
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 244
    .line 245
    return-void
.end method

.method public static getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/32 v1, 0xc0080

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    :cond_0
    const/16 p1, 0x1ae

    .line 11
    .line 12
    invoke-static {p1, p0, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZI)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method


# virtual methods
.method public final deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 20
    .line 21
    iget p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    .line 24
    .line 25
    invoke-interface {p2, p1, p3, v1}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    :catch_0
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->doHandleAssistWithoutData(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 57
    .line 58
    .line 59
    :cond_1
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_2
    :goto_0
    const-string p0, "VoiceInteractionServiceManager"

    .line 62
    .line 63
    const-string p1, "deliverNewSession does not match active session"

    .line 64
    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v0
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "  NOT VALID: "

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string/jumbo p0, "no info"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v0, "  mUser="

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 37
    .line 38
    .line 39
    const-string v0, "  mComponent="

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "  Session service="

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "  Service info:"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Landroid/util/PrintWriterPrinter;

    .line 79
    .line 80
    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "    "

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "  Recognition service="

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v0, "  Hotword detection service="

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getHotwordDetectionService()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v0, "  Settings activity="

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v0, "  Supports assist="

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 142
    .line 143
    .line 144
    const-string v0, "  Supports launch from keyguard="

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 156
    .line 157
    .line 158
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    .line 159
    .line 160
    if-eqz v0, :cond_2

    .line 161
    .line 162
    const-string v0, "  mDisabledShowContext="

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_2
    const-string v0, "  mBound="

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 184
    .line 185
    .line 186
    const-string v0, " mService="

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 197
    .line 198
    if-eqz v0, :cond_5

    .line 199
    .line 200
    const-string v0, "  Hotword detection connection:"

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 206
    .line 207
    const-string v1, "    "

    .line 208
    .line 209
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 210
    .line 211
    monitor-enter v2

    .line 212
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string/jumbo v3, "mReStartPeriodSeconds="

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    .line 222
    .line 223
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v3, "bound for HotwordDetectionService="

    .line 230
    .line 231
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 235
    .line 236
    const/4 v4, 0x0

    .line 237
    const/4 v5, 0x1

    .line 238
    if-eqz v3, :cond_3

    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_3

    .line 245
    .line 246
    move v3, v5

    .line 247
    goto :goto_1

    .line 248
    :catchall_0
    move-exception p0

    .line 249
    goto :goto_2

    .line 250
    :cond_3
    move v3, v4

    .line 251
    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v3, "bound for VisualQueryDetectionService="

    .line 258
    .line 259
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 263
    .line 264
    if-eqz v3, :cond_4

    .line 265
    .line 266
    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 267
    .line 268
    if-eqz v3, :cond_4

    .line 269
    .line 270
    invoke-virtual {v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_4

    .line 275
    .line 276
    move v4, v5

    .line 277
    :cond_4
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string/jumbo v3, "mRestartCount="

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    .line 290
    .line 291
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string v3, "mLastRestartInstant="

    .line 298
    .line 299
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 303
    .line 304
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v3, "DetectorSession(s):"

    .line 311
    .line 312
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const-string v1, "Num of DetectorSession(s)="

    .line 319
    .line 320
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 330
    .line 331
    .line 332
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;

    .line 333
    .line 334
    invoke-direct {v1, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 338
    .line 339
    .line 340
    monitor-exit v2

    .line 341
    goto :goto_3

    .line 342
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    throw p0

    .line 344
    :cond_5
    const-string v0, "  No Hotword detection connection"

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    :goto_3
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 350
    .line 351
    if-eqz v0, :cond_7

    .line 352
    .line 353
    const-string v0, "  Active session:"

    .line 354
    .line 355
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 359
    .line 360
    const-string v0, "    "

    .line 361
    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string/jumbo v1, "mToken="

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 375
    .line 376
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string/jumbo v1, "mShown="

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 389
    .line 390
    const-string/jumbo v2, "mShowArgs="

    .line 391
    .line 392
    .line 393
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 394
    .line 395
    .line 396
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 397
    .line 398
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const-string/jumbo v1, "mShowFlags=0x"

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 411
    .line 412
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const-string v1, "mBound="

    .line 423
    .line 424
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 428
    .line 429
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 430
    .line 431
    .line 432
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 433
    .line 434
    if-eqz v1, :cond_6

    .line 435
    .line 436
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-string/jumbo v1, "mService="

    .line 440
    .line 441
    .line 442
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 446
    .line 447
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    const-string/jumbo v1, "mSession="

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 460
    .line 461
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v1, "mInteractor="

    .line 468
    .line 469
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 473
    .line 474
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    :cond_6
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 478
    .line 479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    const-string/jumbo v1, "mPendingDataCount="

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 492
    .line 493
    const-string v2, "mAssistData="

    .line 494
    .line 495
    invoke-static {v1, p1, v0, v2}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 499
    .line 500
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    const-string/jumbo v1, "mPendingScreenshotCount="

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 513
    .line 514
    const-string v2, "mAssistScreenshot="

    .line 515
    .line 516
    invoke-static {v1, p1, v0, v2}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    :cond_7
    return-void
.end method

.method public final finishLocked(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked(Z)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :goto_0
    const-string p0, "VoiceInteractionServiceManager"

    .line 20
    .line 21
    const-string p1, "finish does not match active session"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final grantImplicitAccessLocked(ILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    move-object v2, p2

    .line 27
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final notifySoundModelsChangedLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 2
    .line 3
    const-string v1, "VoiceInteractionServiceManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Not bound to voice interaction service "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->soundModelsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string v0, "RemoteException while calling soundModelsChanged"

    .line 33
    .line 34
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final performDirectActionLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    const-string v0, "VoiceInteractionServiceManager"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 9
    .line 10
    if-eq p1, p0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 20
    .line 21
    invoke-virtual {p0, p4, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    .line 28
    .line 29
    if-eq p1, p5, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 35
    .line 36
    move-object v4, p2

    .line 37
    move-object v5, p3

    .line 38
    move-object v6, p6

    .line 39
    move-object v7, p7

    .line 40
    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p1, "Unexpected remote error"

    .line 46
    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p7, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const-string p0, "Unknown activity to perform a direct action"

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p7, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :cond_3
    :goto_2
    const-string/jumbo p0, "performDirectActionLocked does not match active session"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p7, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final requestDirectActionsLocked(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    const-string v1, "VoiceInteractionServiceManager"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 20
    .line 21
    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    .line 28
    .line 29
    if-eq v3, p3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget p1, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mUid:I

    .line 33
    .line 34
    invoke-virtual {p0, p1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->grantImplicitAccessLocked(ILandroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 38
    .line 39
    iget-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 44
    .line 45
    invoke-interface {p1, p2, p0, p4, p5}, Landroid/app/IApplicationThread;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string p1, "Unexpected remote error"

    .line 51
    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    const-string v0, "Unknown activity to query for direct actions"

    .line 60
    .line 61
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDirectActionsHandler:Landroid/os/Handler;

    .line 65
    .line 66
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    move-object v2, p0

    .line 76
    move-object v3, p1

    .line 77
    move-object v5, p3

    .line 78
    move-object v6, p4

    .line 79
    move-object v7, p5

    .line 80
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-wide/16 p1, 0xc8

    .line 85
    .line 86
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void

    .line 90
    :cond_3
    :goto_2
    const-string/jumbo p0, "requestDirectActionsLocked does not match active session"

    .line 91
    .line 92
    .line 93
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final setDebugHotwordLoggingLocked(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "VoiceInteractionServiceManager"

    .line 6
    .line 7
    const-string p1, "Failed to set temporary debug logging: no hotword detection active"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v1, "setDebugHotwordLoggingLocked: "

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "HotwordDetectionConnection"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 48
    .line 49
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    .line 67
    .line 68
    .line 69
    const-wide/32 v1, 0x36ee80

    .line 70
    .line 71
    .line 72
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final showSessionLocked(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 29

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v11, p4

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    iget-object v1, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mShowSessionId:I

    .line 13
    .line 14
    const v2, 0x7ffffffe

    .line 15
    .line 16
    .line 17
    const/4 v13, 0x0

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iput v13, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mShowSessionId:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto/16 :goto_18

    .line 25
    .line 26
    :cond_0
    :goto_0
    iget v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mShowSessionId:I

    .line 27
    .line 28
    const/4 v14, 0x1

    .line 29
    add-int/lit8 v15, v0, 0x1

    .line 30
    .line 31
    iput v15, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mShowSessionId:I

    .line 32
    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    new-instance v0, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    move-object v8, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object/from16 v8, p1

    .line 44
    .line 45
    :goto_1
    const-string v0, "android.service.voice.SHOW_SESSION_ID"

    .line 46
    .line 47
    invoke-virtual {v8, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    :try_start_1
    iget-object v0, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-interface {v0, v8, v10}, Landroid/service/voice/IVoiceInteractionService;->prepareToShowSession(Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "VoiceInteractionServiceManager"

    .line 60
    .line 61
    const-string v2, "RemoteException while calling prepareToShowSession"

    .line 62
    .line 63
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_2
    iget-object v0, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 71
    .line 72
    iget-object v2, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 73
    .line 74
    iget-object v3, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 75
    .line 76
    iget v4, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 77
    .line 78
    iget-object v5, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v1, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 89
    .line 90
    iget-object v6, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 91
    .line 92
    move-object v1, v0

    .line 93
    move-object/from16 v16, v6

    .line 94
    .line 95
    move-object/from16 v6, p0

    .line 96
    .line 97
    move-object v13, v8

    .line 98
    move-object/from16 v8, v16

    .line 99
    .line 100
    invoke-direct/range {v1 .. v8}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    move-object v13, v8

    .line 107
    :goto_3
    iget-object v0, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 108
    .line 109
    iget-boolean v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 110
    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    :try_start_2
    iget-object v0, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    new-instance v0, Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v1, "android.service.voice.SHOW_SESSION_ID"

    .line 123
    .line 124
    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 128
    .line 129
    invoke-interface {v1, v0}, Landroid/service/voice/IVoiceInteractionService;->showSessionFailed(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catch_1
    move-exception v0

    .line 134
    const-string v1, "VoiceInteractionServiceManager"

    .line 135
    .line 136
    const-string v2, "RemoteException while calling showSessionFailed"

    .line 137
    .line 138
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_4
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v12, :cond_7

    .line 154
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    check-cast v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    const/4 v3, 0x0

    .line 167
    :goto_5
    if-ge v3, v2, :cond_6

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Lcom/android/server/wm/ActivityAssistInfo;

    .line 174
    .line 175
    iget-object v5, v4, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    .line 176
    .line 177
    if-ne v5, v12, :cond_5

    .line 178
    .line 179
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_6
    :goto_6
    move-object v0, v1

    .line 187
    :cond_7
    iget-object v1, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 188
    .line 189
    iget v2, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    .line 190
    .line 191
    iget-boolean v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 192
    .line 193
    if-eqz v3, :cond_1d

    .line 194
    .line 195
    iget-boolean v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 196
    .line 197
    if-nez v3, :cond_8

    .line 198
    .line 199
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    .line 202
    .line 203
    iget-object v5, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    .line 204
    .line 205
    new-instance v6, Landroid/os/UserHandle;

    .line 206
    .line 207
    iget v7, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 208
    .line 209
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 210
    .line 211
    .line 212
    const v7, 0x18180001

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    iput-boolean v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 220
    .line 221
    :cond_8
    iput-boolean v14, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 222
    .line 223
    iput-object v13, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 224
    .line 225
    iput v10, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    or-int/2addr v2, v3

    .line 232
    and-int/lit8 v3, v10, 0x1

    .line 233
    .line 234
    if-eqz v3, :cond_9

    .line 235
    .line 236
    move/from16 v19, v14

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_9
    const/16 v19, 0x0

    .line 240
    .line 241
    :goto_7
    and-int/lit8 v3, v10, 0x2

    .line 242
    .line 243
    if-eqz v3, :cond_a

    .line 244
    .line 245
    move/from16 v20, v14

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_a
    const/16 v20, 0x0

    .line 249
    .line 250
    :goto_8
    if-nez v19, :cond_c

    .line 251
    .line 252
    if-eqz v20, :cond_b

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_b
    const/4 v3, 0x0

    .line 256
    goto :goto_a

    .line 257
    :cond_c
    :goto_9
    move v3, v14

    .line 258
    :goto_a
    if-eqz v3, :cond_15

    .line 259
    .line 260
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .line 268
    .line 269
    const/4 v6, 0x0

    .line 270
    :goto_b
    if-ge v6, v4, :cond_d

    .line 271
    .line 272
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    check-cast v7, Lcom/android/server/wm/ActivityAssistInfo;

    .line 277
    .line 278
    iget-object v7, v7, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    .line 279
    .line 280
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    add-int/lit8 v6, v6, 0x1

    .line 284
    .line 285
    goto :goto_b

    .line 286
    :cond_d
    and-int/lit8 v6, v2, 0x1

    .line 287
    .line 288
    if-nez v6, :cond_e

    .line 289
    .line 290
    move/from16 v22, v14

    .line 291
    .line 292
    goto :goto_c

    .line 293
    :cond_e
    const/16 v22, 0x0

    .line 294
    .line 295
    :goto_c
    :try_start_3
    iget-object v6, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 296
    .line 297
    invoke-interface {v6}, Landroid/app/IActivityTaskManager;->isAssistDataAllowed()Z

    .line 298
    .line 299
    .line 300
    move-result v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    goto :goto_d

    .line 302
    :catch_2
    const/4 v6, 0x0

    .line 303
    :goto_d
    if-eqz v22, :cond_10

    .line 304
    .line 305
    if-eqz v6, :cond_10

    .line 306
    .line 307
    new-instance v6, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    .line 311
    .line 312
    const/4 v7, 0x0

    .line 313
    :goto_e
    if-ge v7, v4, :cond_f

    .line 314
    .line 315
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    check-cast v8, Lcom/android/server/wm/ActivityAssistInfo;

    .line 320
    .line 321
    iget-object v8, v8, Lcom/android/server/wm/ActivityAssistInfo;->mComponentName:Landroid/content/ComponentName;

    .line 322
    .line 323
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    add-int/lit8 v7, v7, 0x1

    .line 327
    .line 328
    goto :goto_e

    .line 329
    :cond_f
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 330
    .line 331
    const-string v7, "android.service.voice.FOREGROUND_ACTIVITIES"

    .line 332
    .line 333
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 334
    .line 335
    .line 336
    :cond_10
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 337
    .line 338
    if-eqz v4, :cond_12

    .line 339
    .line 340
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 341
    .line 342
    const-string/jumbo v6, "omni.entry_point"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    const v6, 0x10001

    .line 350
    .line 351
    .line 352
    if-eq v4, v6, :cond_11

    .line 353
    .line 354
    const v6, 0x10002

    .line 355
    .line 356
    .line 357
    if-ne v4, v6, :cond_12

    .line 358
    .line 359
    :cond_11
    move/from16 v28, v14

    .line 360
    .line 361
    goto :goto_f

    .line 362
    :cond_12
    const/16 v28, 0x0

    .line 363
    .line 364
    :goto_f
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 365
    .line 366
    and-int/lit8 v2, v2, 0x2

    .line 367
    .line 368
    if-nez v2, :cond_13

    .line 369
    .line 370
    move/from16 v23, v14

    .line 371
    .line 372
    goto :goto_10

    .line 373
    :cond_13
    const/16 v23, 0x0

    .line 374
    .line 375
    :goto_10
    iget v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 376
    .line 377
    iget-object v6, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 378
    .line 379
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v26

    .line 383
    const/16 v24, 0x0

    .line 384
    .line 385
    const/16 v21, 0x1

    .line 386
    .line 387
    move-object/from16 v17, v4

    .line 388
    .line 389
    move-object/from16 v18, v5

    .line 390
    .line 391
    move/from16 v25, v2

    .line 392
    .line 393
    move-object/from16 v27, p3

    .line 394
    .line 395
    invoke-virtual/range {v17 .. v28}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZZILjava/lang/String;Ljava/lang/String;Z)V

    .line 396
    .line 397
    .line 398
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 399
    .line 400
    iget v4, v2, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 401
    .line 402
    if-gtz v4, :cond_14

    .line 403
    .line 404
    iget v2, v2, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 405
    .line 406
    if-lez v2, :cond_15

    .line 407
    .line 408
    :cond_14
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 411
    .line 412
    invoke-static {v2, v4}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-eqz v2, :cond_15

    .line 417
    .line 418
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    .line 419
    .line 420
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    .line 421
    .line 422
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    .line 424
    .line 425
    :cond_15
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 426
    .line 427
    if-eqz v2, :cond_17

    .line 428
    .line 429
    :try_start_4
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 430
    .line 431
    iget v5, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 432
    .line 433
    invoke-interface {v2, v4, v5, v11}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 434
    .line 435
    .line 436
    const/4 v2, 0x0

    .line 437
    iput-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 438
    .line 439
    const/4 v2, 0x0

    .line 440
    :try_start_5
    iput v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 441
    .line 442
    goto :goto_11

    .line 443
    :catch_3
    const/4 v2, 0x0

    .line 444
    :catch_4
    :goto_11
    if-eqz v3, :cond_16

    .line 445
    .line 446
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 452
    .line 453
    .line 454
    goto :goto_12

    .line 455
    :cond_16
    invoke-virtual {v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->doHandleAssistWithoutData(Ljava/util/List;)V

    .line 456
    .line 457
    .line 458
    goto :goto_12

    .line 459
    :cond_17
    const/4 v2, 0x0

    .line 460
    if-eqz v11, :cond_18

    .line 461
    .line 462
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    :cond_18
    if-nez v3, :cond_19

    .line 468
    .line 469
    iput-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    .line 470
    .line 471
    :cond_19
    :goto_12
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 472
    .line 473
    if-eqz v0, :cond_1a

    .line 474
    .line 475
    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 476
    .line 477
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 478
    .line 479
    monitor-enter v3

    .line 480
    :try_start_6
    iput-boolean v14, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mCanceled:Z

    .line 481
    .line 482
    monitor-exit v3

    .line 483
    goto :goto_13

    .line 484
    :catchall_1
    move-exception v0

    .line 485
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 486
    throw v0

    .line 487
    :cond_1a
    :goto_13
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 488
    .line 489
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    const-wide/16 v4, 0x2710

    .line 494
    .line 495
    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-direct {v0, v1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;Ljava/time/Instant;)V

    .line 500
    .line 501
    .line 502
    iput-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 503
    .line 504
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    .line 505
    .line 506
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    .line 508
    .line 509
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 510
    .line 511
    if-eqz v0, :cond_1b

    .line 512
    .line 513
    iget v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 514
    .line 515
    iget-object v0, v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 516
    .line 517
    invoke-static {v0, v3, v14}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    .line 518
    .line 519
    .line 520
    iput-boolean v14, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyAllowlisted:Z

    .line 521
    .line 522
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    .line 523
    .line 524
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mRemoveFromLowPowerStandbyAllowlistRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;

    .line 525
    .line 526
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    .line 528
    .line 529
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    .line 530
    .line 531
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mRemoveFromLowPowerStandbyAllowlistRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;

    .line 532
    .line 533
    const-wide/32 v4, 0x1d4c0

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 537
    .line 538
    .line 539
    :cond_1b
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    .line 540
    .line 541
    check-cast v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 542
    .line 543
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 544
    .line 545
    monitor-enter v1

    .line 546
    :try_start_7
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 547
    .line 548
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 549
    .line 550
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    move v13, v2

    .line 555
    :goto_14
    if-ge v13, v3, :cond_1c

    .line 556
    .line 557
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 558
    .line 559
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 560
    .line 561
    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    check-cast v0, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 566
    .line 567
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionShown()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 568
    .line 569
    .line 570
    goto :goto_15

    .line 571
    :catchall_2
    move-exception v0

    .line 572
    goto :goto_16

    .line 573
    :catch_5
    move-exception v0

    .line 574
    move-object v2, v0

    .line 575
    :try_start_9
    const-string v0, "VoiceInteractionManager"

    .line 576
    .line 577
    const-string v4, "Error delivering voice interaction open event."

    .line 578
    .line 579
    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .line 581
    .line 582
    :goto_15
    add-int/lit8 v13, v13, 0x1

    .line 583
    .line 584
    goto :goto_14

    .line 585
    :cond_1c
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 586
    .line 587
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 588
    .line 589
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 590
    .line 591
    .line 592
    monitor-exit v1

    .line 593
    move v13, v14

    .line 594
    goto :goto_17

    .line 595
    :goto_16
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 596
    throw v0

    .line 597
    :cond_1d
    const/4 v2, 0x0

    .line 598
    if-eqz v11, :cond_1e

    .line 599
    .line 600
    :try_start_a
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    .line 601
    .line 602
    .line 603
    :catch_6
    :cond_1e
    move v13, v2

    .line 604
    :goto_17
    return v13

    .line 605
    :goto_18
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 606
    throw v0
.end method

.method public final shutdownLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const-string v3, "VoiceInteractionServiceManager"

    .line 22
    .line 23
    const-string v4, "RemoteException in shutdown"

    .line 24
    .line 25
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->cancelLocked()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAccessibilitySettingsListeners:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 47
    .line 48
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 60
    .line 61
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method public final startAssistantActivityLocked(Ljava/lang/String;IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    const-string v2, "VoiceInteractionServiceManager"

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    :try_start_1
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 9
    .line 10
    move-object v4, p4

    .line 11
    if-eq v4, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string/jumbo v0, "startAssistantActivity not allowed on hidden session"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/16 v0, -0x5a

    .line 25
    .line 26
    return v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v6, Landroid/content/Intent;

    .line 30
    .line 31
    move-object v1, p5

    .line 32
    invoke-direct {v6, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    const/high16 v1, 0x10000000

    .line 36
    .line 37
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string v1, "android.activity.activityType"

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    move-object/from16 v8, p7

    .line 44
    .line 45
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget v9, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 57
    .line 58
    move-object v3, p1

    .line 59
    move v4, p2

    .line 60
    move v5, p3

    .line 61
    move-object/from16 v7, p6

    .line 62
    .line 63
    move-object/from16 v8, p7

    .line 64
    .line 65
    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityTaskManager;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    return v0

    .line 70
    :cond_2
    :goto_0
    const-string/jumbo v0, "startAssistantActivity does not match active session"

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    const/16 v0, -0x59

    .line 77
    .line 78
    return v0

    .line 79
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v2, "Unexpected remote error"

    .line 82
    .line 83
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v1
.end method

.method public final startListeningVisibleActivityChangedLocked(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 11
    .line 12
    if-eqz p1, :cond_6

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    .line 15
    .line 16
    if-nez p1, :cond_6

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getTopVisibleActivityInfosLocked()Landroid/util/ArrayMap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 52
    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    const/4 v1, 0x0

    .line 57
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ge v1, v2, :cond_5

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/service/voice/VisibleActivityInfo;

    .line 70
    .line 71
    invoke-interface {v2, v3, p1}, Landroid/service/voice/IVoiceInteractionSession;->notifyVisibleActivityInfoChanged(Landroid/service/voice/VisibleActivityInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    :goto_2
    return-void

    .line 83
    :cond_7
    :goto_3
    const-string p0, "VoiceInteractionServiceManager"

    .line 84
    .line 85
    const-string/jumbo p1, "startListeningVisibleActivityChangedLocked does not match active session"

    .line 86
    .line 87
    .line 88
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final startVoiceActivityLocked(Ljava/lang/String;IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    const-string v2, "VoiceInteractionServiceManager"

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    :try_start_1
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    if-eq v4, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string/jumbo v0, "startVoiceActivity not allowed on hidden session"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/16 v0, -0x64

    .line 26
    .line 27
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v6, Landroid/content/Intent;

    .line 31
    .line 32
    move-object/from16 v1, p5

    .line 33
    .line 34
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "android.intent.category.VOICE"

    .line 38
    .line 39
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/high16 v1, 0x18000000

    .line 43
    .line 44
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 56
    .line 57
    iget-object v8, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 58
    .line 59
    iget-object v9, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 60
    .line 61
    iget v13, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 62
    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v12, 0x0

    .line 66
    move-object v3, p1

    .line 67
    move/from16 v4, p2

    .line 68
    .line 69
    move/from16 v5, p3

    .line 70
    .line 71
    move-object/from16 v7, p6

    .line 72
    .line 73
    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityTaskManager;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    return v0

    .line 78
    :cond_2
    :goto_0
    const-string/jumbo v0, "startVoiceActivity does not match active session"

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    const/16 v0, -0x63

    .line 85
    .line 86
    return v0

    .line 87
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v2, "Unexpected remote error"

    .line 90
    .line 91
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw v1
.end method

.method public final stopListeningFromMicLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "VoiceInteractionServiceManager"

    .line 6
    .line 7
    const-string/jumbo v0, "stopListeningFromMicLocked() called but connection isn\'t established"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    check-cast p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    const-string p0, "HotwordDetectionConnection"

    .line 38
    .line 39
    const-string v0, "Not found the software detector"

    .line 40
    .line 41
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    :goto_1
    if-nez p0, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    const-string p0, "SoftwareTrustedHotwordDetectorSession"

    .line 53
    .line 54
    const-string v0, "Hotword detection is not running"

    .line 55
    .line 56
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 64
    .line 65
    new-instance v1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 71
    .line 72
    .line 73
    const-string/jumbo v0, "stopping requested"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    return-void
.end method
