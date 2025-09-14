.class public final Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageSessionProvider;


# static fields
.field public static final DEBUG:Z

.field public static final INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

.field public static final LOGD:Z

.field public static final sStageFilter:Lcom/android/server/pm/PackageInstallerService$1;


# instance fields
.field public final mAllocatedSessions:Landroid/util/SparseBooleanArray;

.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public volatile mBypassNextAllowedApexUpdateCheck:Z

.field public volatile mBypassNextStagedInstallerCheck:Z

.field public final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field public final mContext:Landroid/content/Context;

.field public final mCreateLock:Ljava/lang/Object;

.field public volatile mDisableVerificationForUid:I

.field public final mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

.field public final mHistoricalSessions:Ljava/util/List;

.field public final mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

.field public final mInstallHandler:Landroid/os/Handler;

.field public final mInstallThread:Landroid/os/HandlerThread;

.field public final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field public final mLegacySessions:Landroid/util/SparseBooleanArray;

.field public volatile mOkToSendBroadcasts:Z

.field public final mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRandom:Ljava/util/Random;

.field public final mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

.field public final mSessions:Landroid/util/SparseArray;

.field public final mSessionsDir:Ljava/io/File;

.field public final mSessionsFile:Landroid/util/AtomicFile;

.field public final mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

.field public final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field public mSmartSwitchUid:I

.field public final mStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "PackageInstaller"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    .line 9
    .line 10
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 11
    .line 12
    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    .line 13
    .line 14
    const-string v0, "android.permission.USE_FULL_SCREEN_INTENT"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Lcom/android/server/pm/PackageInstallerService$1;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 20
    .line 21
    new-instance v1, Ljava/security/SecureRandom;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    .line 27
    .line 28
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    new-instance v1, Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 48
    .line 49
    new-instance v1, Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 55
    .line 56
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 62
    .line 63
    new-instance v1, Lcom/android/server/pm/SilentUpdatePolicy;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/android/server/pm/SilentUpdatePolicy;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 69
    .line 70
    iput v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 71
    .line 72
    new-instance v0, Ljava/lang/Object;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCreateLock:Ljava/lang/Object;

    .line 78
    .line 79
    new-instance v0, Lcom/android/server/pm/utils/RequestThrottle;

    .line 80
    .line 81
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda7;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-direct {v2, v3, p0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/utils/RequestThrottle;-><init>(Landroid/os/Handler;Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda7;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 99
    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    .line 101
    .line 102
    const-string v1, "PackageInstaller"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    .line 111
    .line 112
    new-instance v1, Landroid/os/Handler;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    .line 120
    .line 121
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 122
    .line 123
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 133
    .line 134
    new-instance v1, Landroid/util/AtomicFile;

    .line 135
    .line 136
    new-instance v2, Ljava/io/File;

    .line 137
    .line 138
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-string v4, "install_sessions.xml"

    .line 143
    .line 144
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string/jumbo v3, "package-session"

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 154
    .line 155
    new-instance v1, Ljava/io/File;

    .line 156
    .line 157
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const-string v3, "install_sessions"

    .line 162
    .line 163
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 176
    .line 177
    new-instance v1, Lcom/android/server/pm/StagingManager;

    .line 178
    .line 179
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-direct {v1, p1, v2}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V

    .line 184
    .line 185
    .line 186
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 187
    .line 188
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 189
    .line 190
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 195
    .line 196
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 197
    .line 198
    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    move-object v4, v1

    .line 205
    move-object v5, p1

    .line 206
    move-object v6, p2

    .line 207
    move-object v8, p3

    .line 208
    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageSessionVerifier;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;Landroid/os/Looper;)V

    .line 209
    .line 210
    .line 211
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    .line 212
    .line 213
    new-instance p3, Lcom/android/server/pm/GentleUpdateHelper;

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v1, Lcom/android/server/pm/AppStateHelper;

    .line 220
    .line 221
    invoke-direct {v1, p1}, Lcom/android/server/pm/AppStateHelper;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {p3, p1, v0, v1}, Lcom/android/server/pm/GentleUpdateHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/AppStateHelper;)V

    .line 225
    .line 226
    .line 227
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    .line 228
    .line 229
    new-instance p3, Lcom/android/server/pm/PackageArchiver;

    .line 230
    .line 231
    invoke-direct {p3, p1, p2}, Lcom/android/server/pm/PackageArchiver;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 232
    .line 233
    .line 234
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 235
    .line 236
    const-class p2, Lcom/android/server/SystemServiceManager;

    .line 237
    .line 238
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Lcom/android/server/SystemServiceManager;

    .line 243
    .line 244
    new-instance p3, Lcom/android/server/pm/PackageInstallerService$Lifecycle;

    .line 245
    .line 246
    invoke-direct {p3, p1, p0}, Lcom/android/server/pm/PackageInstallerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, p3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public static buildSuccessNotification(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-wide/32 v2, 0x4000000

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, p3, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-object p0, v0

    .line 15
    :goto_0
    if-eqz p0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x1050005

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v3, 0x1050006

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    invoke-virtual {p0, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance p3, Landroid/app/Notification$Builder;

    .line 65
    .line 66
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {p3, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const v1, 0x10803ce

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const v1, 0x106001c

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    new-instance p1, Landroid/app/Notification$BigTextStyle;

    .line 102
    .line 103
    invoke-direct {p1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_1
    :goto_1
    const-string p0, "Notification not built for package: "

    .line 124
    .line 125
    const-string p1, "PackageInstaller"

    .line 126
    .line 127
    invoke-static {p0, p3, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object v0
.end method

.method public static isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-ne v0, p0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    return v1
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "vmdl"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, ".tmp"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move v0, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    const-string/jumbo v4, "smdl"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v1, v2

    .line 41
    :goto_1
    const-string/jumbo v4, "smdl2tmp"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    :cond_2
    move v2, v3

    .line 55
    :cond_3
    return v2
.end method

.method public static isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4
    .line 5
    const/high16 v2, 0x20000000

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 19
    .line 20
    if-ne p1, p3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-ne p2, p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public static prepareCustomCopyDir()Ljava/io/File;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "apk-tmp"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x1ff

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v3, Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    new-instance v0, Ljava/security/SecureRandom;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x10

    .line 76
    .line 77
    new-array v1, v1, [B

    .line 78
    .line 79
    :cond_2
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 80
    .line 81
    .line 82
    const/16 v4, 0xa

    .line 83
    .line 84
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    new-instance v5, Ljava/io/File;

    .line 89
    .line 90
    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return-object v5

    .line 114
    :goto_1
    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    new-instance v1, Ljava/io/IOException;

    .line 118
    .line 119
    const-string v2, "Failed to prepare temp session dir"

    .line 120
    .line 121
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method

.method public static prepareStageDir(Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x1fd

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string v3, "Failed to SELinux.restorecon session dir, path: ["

    .line 42
    .line 43
    const-string v4, "], ctx: ["

    .line 44
    .line 45
    const-string v5, "]. Retrying via SELinux.fileSelabelLookup/SELinux.setFileContext: "

    .line 46
    .line 47
    invoke-static {v3, v0, v4, v1, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    const-string v1, "SUCCESS"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "FAILURE"

    .line 57
    .line 58
    :goto_0
    const-string v3, "PackageInstaller"

    .line 59
    .line 60
    invoke-static {v0, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 67
    .line 68
    const-string v1, "Failed to restorecon session dir: "

    .line 69
    .line 70
    invoke-static {p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    :goto_1
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/io/IOException;

    .line 81
    .line 82
    const-string v2, "Failed to prepare session dir: "

    .line 83
    .line 84
    invoke-static {p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 93
    .line 94
    const-string v1, "Session dir already exists: "

    .line 95
    .line 96
    invoke-static {p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public static prepareStageDirQuick(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v1, 0x1fd

    .line 17
    .line 18
    invoke-static {p1, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    array-length v1, p1

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_0
    if-ge v3, v1, :cond_0

    .line 29
    .line 30
    aget-object v4, p1, v3

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/16 v5, 0x1a4

    .line 37
    .line 38
    invoke-static {v4, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->setSelinuxContext(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    array-length p1, p0

    .line 75
    :goto_1
    if-ge v2, p1, :cond_1

    .line 76
    .line 77
    aget-object v0, p0, v2

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->setSelinuxContext(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    return-void

    .line 90
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/io/IOException;

    .line 94
    .line 95
    const-string v0, "Failed to rename temp dir"

    .line 96
    .line 97
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 102
    .line 103
    const-string v0, "Session dir already exists: "

    .line 104
    .line 105
    invoke-static {p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public static setSelinuxContext(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "Failed to SELinux.restorecon session dir, path: ["

    .line 10
    .line 11
    const-string v3, "], ctx: ["

    .line 12
    .line 13
    const-string v4, "]. Retrying via SELinux.fileSelabelLookup/SELinux.setFileContext: "

    .line 14
    .line 15
    invoke-static {v2, p0, v3, v0, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v2, "SUCCESS"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v2, "FAILURE"

    .line 25
    .line 26
    :goto_0
    const-string v3, "PackageInstaller"

    .line 27
    .line 28
    invoke-static {v0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 35
    .line 36
    const-string v1, "Failed to restorecon session dir: "

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public static shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method


# virtual methods
.method public final abandonSession(I)V
    .locals 3

    .line 1
    const-string v0, "Caller has no access to session "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 23
    .line 24
    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 6
    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x1f4

    .line 14
    .line 15
    if-le v2, v3, :cond_0

    .line 16
    .line 17
    const-string v2, "PackageInstaller"

    .line 18
    .line 19
    const-string v3, "Historical sessions size reaches threshold, clear the oldest"

    .line 20
    .line 21
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 25
    .line 26
    const/16 v3, 0x190

    .line 27
    .line 28
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v3

    .line 43
    :try_start_0
    iget v15, v1, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 44
    .line 45
    iget v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 46
    .line 47
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 48
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v3

    .line 51
    :try_start_1
    new-instance v14, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    .line 52
    .line 53
    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 54
    .line 55
    iget v6, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 56
    .line 57
    iget v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 58
    .line 59
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 62
    .line 63
    iget v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 64
    .line 65
    iget-wide v11, v1, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .line 67
    move-object/from16 v42, v2

    .line 68
    .line 69
    move-object/from16 v43, v3

    .line 70
    .line 71
    :try_start_2
    iget-wide v2, v1, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 72
    .line 73
    move-wide/from16 v16, v2

    .line 74
    .line 75
    iget-wide v2, v1, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 76
    .line 77
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 78
    .line 79
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 80
    .line 81
    move-object/from16 v18, v4

    .line 82
    .line 83
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 86
    .line 87
    .line 88
    move-result v21

    .line 89
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 92
    .line 93
    .line 94
    move-result v22

    .line 95
    iget-boolean v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 96
    .line 97
    move-object/from16 v19, v0

    .line 98
    .line 99
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 100
    .line 101
    move/from16 v24, v0

    .line 102
    .line 103
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 104
    .line 105
    move/from16 v25, v0

    .line 106
    .line 107
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 108
    .line 109
    move/from16 v20, v4

    .line 110
    .line 111
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v27

    .line 117
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v28

    .line 123
    iget v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 124
    .line 125
    move/from16 v26, v0

    .line 126
    .line 127
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 128
    .line 129
    move-object/from16 v30, v0

    .line 130
    .line 131
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 132
    .line 133
    move-object/from16 v31, v0

    .line 134
    .line 135
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    .line 138
    .line 139
    .line 140
    move-result-object v33

    .line 141
    move/from16 v32, v0

    .line 142
    .line 143
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 144
    .line 145
    move/from16 v34, v0

    .line 146
    .line 147
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 148
    .line 149
    move/from16 v35, v0

    .line 150
    .line 151
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 152
    .line 153
    move/from16 v36, v0

    .line 154
    .line 155
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 156
    .line 157
    move/from16 v37, v0

    .line 158
    .line 159
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 160
    .line 161
    move-object/from16 v38, v0

    .line 162
    .line 163
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 164
    .line 165
    move-object/from16 v39, v0

    .line 166
    .line 167
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 168
    .line 169
    move-object/from16 v40, v0

    .line 170
    .line 171
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 172
    .line 173
    move/from16 v29, v4

    .line 174
    .line 175
    move/from16 v23, v20

    .line 176
    .line 177
    move-object v4, v14

    .line 178
    move/from16 v20, v13

    .line 179
    .line 180
    move-object v1, v14

    .line 181
    move-wide/from16 v13, v16

    .line 182
    .line 183
    move/from16 v41, v15

    .line 184
    .line 185
    move-wide v15, v2

    .line 186
    move-object/from16 v17, v18

    .line 187
    .line 188
    move-object/from16 v18, v19

    .line 189
    .line 190
    move/from16 v19, v20

    .line 191
    .line 192
    move/from16 v20, v41

    .line 193
    .line 194
    move-object/from16 v41, v0

    .line 195
    .line 196
    invoke-direct/range {v4 .. v41}, Lcom/android/server/pm/PackageInstallerHistoricalSession;-><init>(IIILjava/lang/String;Lcom/android/server/pm/InstallSource;IJJJLjava/io/File;Ljava/lang/String;FFZZZZZZIIILjava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;I[IZZZILjava/lang/String;Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/pm/verify/domain/DomainSet;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    monitor-exit v43
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    move-object/from16 v2, v42

    .line 201
    .line 202
    check-cast v2, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    move-object/from16 v1, p0

    .line 212
    .line 213
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 220
    .line 221
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    goto :goto_0

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    move-object/from16 v43, v3

    .line 229
    .line 230
    :goto_0
    :try_start_3
    monitor-exit v43
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    throw v0

    .line 232
    :catchall_2
    move-exception v0

    .line 233
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 234
    throw v0
.end method

.method public final allocateSessionIdLocked()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    .line 4
    .line 5
    const v3, 0x7ffffffe

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    add-int/2addr v2, v3

    .line 14
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    invoke-virtual {v4, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 23
    .line 24
    invoke-virtual {p0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    const/16 v3, 0x20

    .line 31
    .line 32
    if-ge v1, v3, :cond_1

    .line 33
    .line 34
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "Failed to allocate session ID"

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final allocateStageDirLegacy(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Ljava/io/File;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v3, "vmdl"

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ".tmp"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_1
    monitor-exit v0

    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
.end method

.method public final bypassNextAllowedApexUpdateCheck(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string p1, "Caller not allowed to bypass allowed apex update check"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final bypassNextStagedInstallerCheck(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string p1, "Caller not allowed to bypass staged installer check"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final checkInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/os/RemoteCallback;)V
    .locals 6

    .line 1
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-wide/16 v4, 0x0

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService;->checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance p1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;

    .line 15
    .line 16
    invoke-direct {p1, p4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v6, "android.permission.INSTALL_SELF_UPDATES"

    .line 62
    .line 63
    invoke-interface {v5, v6, v1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_1

    .line 68
    .line 69
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 v5, 0x0

    .line 78
    :goto_1
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 79
    .line 80
    iget-object v6, v6, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_0

    .line 87
    .line 88
    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_0

    .line 97
    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 102
    .line 103
    const-string p1, "Caller has no access to package "

    .line 104
    .line 105
    invoke-static {p1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance p0, Ljava/util/concurrent/CompletableFuture;

    .line 119
    .line 120
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object p1, v1, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    .line 124
    .line 125
    new-instance v7, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;

    .line 126
    .line 127
    move-object v0, v7

    .line 128
    move-object v2, p2

    .line 129
    move-object v3, p3

    .line 130
    move-object v4, p0

    .line 131
    move-wide v5, p4

    .line 132
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/GentleUpdateHelper;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/CompletableFuture;J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 140
    .line 141
    const-string p1, "The installerPackageName set by the caller doesn\'t match the caller\'s own package name."

    .line 142
    .line 143
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0
.end method

.method public final checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 5
    .line 6
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 7
    .line 8
    const/high16 v2, 0x20000000

    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string p1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    :goto_0
    return v0
.end method

.method public final createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 17
    .line 18
    const-string p1, "You need the com.android.permission.USE_INSTALLER_V2 permission to use a data loader"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 27
    .line 28
    const v1, -0x20000001

    .line 29
    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    move-object v1, p0

    .line 39
    move-object v2, p1

    .line 40
    move-object v3, p2

    .line 41
    move-object v4, p3

    .line 42
    move v6, p4

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    .line 44
    .line 45
    .line 46
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return p0

    .line 48
    :goto_1
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0
.end method

.method public final createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move/from16 v11, p4

    .line 8
    .line 9
    move/from16 v10, p5

    .line 10
    .line 11
    const/4 v9, 0x2

    .line 12
    const/4 v15, 0x1

    .line 13
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 16
    .line 17
    .line 18
    move-result-object v12

    .line 19
    const-string v3, "createSession"

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x1

    .line 23
    move-object v2, v12

    .line 24
    move/from16 v4, p4

    .line 25
    .line 26
    move/from16 v5, p5

    .line 27
    .line 28
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 32
    .line 33
    const-string/jumbo v3, "no_install_apps"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v10, v3}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_66

    .line 41
    .line 42
    invoke-static/range {p4 .. p5}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(II)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_65

    .line 47
    .line 48
    const-string v2, "PackageInstaller"

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v4, " getting through the check "

    .line 53
    .line 54
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, " user id "

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 76
    .line 77
    const/4 v3, 0x5

    .line 78
    if-ne v2, v3, :cond_1

    .line 79
    .line 80
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    const-string v3, "android.permission.MANAGE_ROLLBACKS"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const-string v3, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_0

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 102
    .line 103
    const-string v1, "INSTALL_REASON_ROLLBACK requires the MANAGE_ROLLBACKS permission or the TEST_MANAGE_ROLLBACKS permission"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_1
    :goto_0
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 110
    .line 111
    const/16 v3, 0xff

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-le v6, v3, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-static {v2, v4, v15}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    :goto_1
    iput-object v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 131
    .line 132
    :cond_3
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 133
    .line 134
    const/16 v6, 0x3e8

    .line 135
    .line 136
    invoke-static {v2, v6}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Ljava/lang/String;

    .line 141
    .line 142
    iput-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 145
    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-le v7, v3, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    invoke-static {v2, v4, v15}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    :goto_2
    iput-object v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 162
    .line 163
    :cond_5
    if-eqz v1, :cond_7

    .line 164
    .line 165
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-le v2, v3, :cond_6

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    invoke-static {v1, v4, v15}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_7

    .line 177
    .line 178
    :goto_3
    move-object v1, v5

    .line 179
    :cond_7
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 180
    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_8
    move-object v2, v1

    .line 185
    :goto_4
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    const-wide/16 v4, 0x0

    .line 190
    .line 191
    if-nez v3, :cond_10

    .line 192
    .line 193
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_10

    .line 198
    .line 199
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    if-eq v11, v6, :cond_9

    .line 202
    .line 203
    const-string v7, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    .line 204
    .line 205
    invoke-virtual {v3, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-nez v3, :cond_9

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_9
    if-eq v11, v6, :cond_a

    .line 213
    .line 214
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 215
    .line 216
    invoke-virtual {v3, v11, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_a
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_b

    .line 224
    .line 225
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    const-string v7, "android.permission.INSTALL_PACKAGES"

    .line 228
    .line 229
    invoke-virtual {v3, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_b

    .line 234
    .line 235
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 236
    .line 237
    invoke-virtual {v3, v11, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_b
    iget v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 241
    .line 242
    const v7, -0x8000061

    .line 243
    .line 244
    .line 245
    and-int/2addr v3, v7

    .line 246
    or-int/2addr v3, v9

    .line 247
    iput v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 248
    .line 249
    const/high16 v7, 0x10000

    .line 250
    .line 251
    and-int/2addr v3, v7

    .line 252
    if-eqz v3, :cond_e

    .line 253
    .line 254
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 264
    .line 265
    array-length v13, v3

    .line 266
    const/4 v6, 0x0

    .line 267
    :goto_5
    if-ge v6, v13, :cond_d

    .line 268
    .line 269
    aget-object v9, v3, v6

    .line 270
    .line 271
    invoke-interface {v12, v9, v4, v5, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-ne v11, v9, :cond_c

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_c
    add-int/2addr v6, v15

    .line 279
    const/4 v9, 0x2

    .line 280
    goto :goto_5

    .line 281
    :cond_d
    iget v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 282
    .line 283
    const v6, -0x10001

    .line 284
    .line 285
    .line 286
    and-int/2addr v3, v6

    .line 287
    iput v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 288
    .line 289
    :cond_e
    :goto_6
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    const-string v6, "android.permission.INSTALL_TEST_ONLY_PACKAGE"

    .line 292
    .line 293
    invoke-virtual {v3, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-eqz v3, :cond_f

    .line 298
    .line 299
    iget v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 300
    .line 301
    and-int/lit8 v3, v3, -0x5

    .line 302
    .line 303
    iput v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 304
    .line 305
    :cond_f
    const/4 v3, 0x0

    .line 306
    iput v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_10
    :goto_7
    iget v1, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 310
    .line 311
    or-int/lit8 v1, v1, 0x20

    .line 312
    .line 313
    iput v1, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 314
    .line 315
    const-string v1, "com.android.shell"

    .line 316
    .line 317
    :goto_8
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 318
    .line 319
    if-eqz v3, :cond_15

    .line 320
    .line 321
    iget-wide v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 322
    .line 323
    cmp-long v6, v7, v4

    .line 324
    .line 325
    if-lez v6, :cond_15

    .line 326
    .line 327
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 328
    .line 329
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 330
    .line 331
    invoke-virtual {v6}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 336
    .line 337
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-static {v7, v10, v1}, Lcom/android/server/pm/AsecInstallHelper;->canInstallOnExternal(IILjava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-eqz v6, :cond_15

    .line 345
    .line 346
    iget-object v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 347
    .line 348
    if-eqz v6, :cond_11

    .line 349
    .line 350
    const/4 v7, 0x0

    .line 351
    invoke-interface {v12, v6, v4, v5, v7}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    if-eqz v6, :cond_11

    .line 356
    .line 357
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 358
    .line 359
    and-int/2addr v6, v15

    .line 360
    if-eqz v6, :cond_11

    .line 361
    .line 362
    goto/16 :goto_b

    .line 363
    .line 364
    :cond_11
    const-string v6, "PackageInstaller"

    .line 365
    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v9, "App size: "

    .line 369
    .line 370
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-wide v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 374
    .line 375
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    iget-wide v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 386
    .line 387
    const-wide/16 v5, 0x2

    .line 388
    .line 389
    mul-long/2addr v3, v5

    .line 390
    invoke-virtual {v14, v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 391
    .line 392
    .line 393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 394
    .line 395
    .line 396
    move-result-wide v3

    .line 397
    :try_start_0
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 398
    .line 399
    invoke-static {v8, v14}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 400
    .line 401
    .line 402
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    .line 405
    .line 406
    if-eqz v8, :cond_12

    .line 407
    .line 408
    iget v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 409
    .line 410
    or-int/lit8 v3, v3, 0x8

    .line 411
    .line 412
    iput v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 413
    .line 414
    iget v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 415
    .line 416
    or-int/lit8 v3, v3, 0x8

    .line 417
    .line 418
    iput v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 419
    .line 420
    const-string v3, "PackageInstaller"

    .line 421
    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    const-string/jumbo v8, "modification done for package "

    .line 425
    .line 426
    .line 427
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {v4, v8, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_a

    .line 436
    .line 437
    :cond_12
    iget-wide v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 438
    .line 439
    const-wide/16 v8, 0x0

    .line 440
    .line 441
    cmp-long v3, v3, v8

    .line 442
    .line 443
    if-lez v3, :cond_14

    .line 444
    .line 445
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 446
    .line 447
    iget-object v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 448
    .line 449
    if-eqz v4, :cond_13

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_13
    const-string v4, "Application"

    .line 453
    .line 454
    :goto_9
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    const v9, 0x1040778

    .line 459
    .line 460
    .line 461
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    const-string v9, " "

    .line 466
    .line 467
    invoke-static {v4, v9}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    const v13, 0x1040777

    .line 476
    .line 477
    .line 478
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    new-instance v9, Landroid/app/Notification$Builder;

    .line 490
    .line 491
    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 492
    .line 493
    invoke-direct {v9, v3, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    const v13, 0x1080b71

    .line 497
    .line 498
    .line 499
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 500
    .line 501
    .line 502
    move-result-object v9

    .line 503
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    const v13, 0x106001c

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getColor(I)I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    .line 527
    .line 528
    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v8, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    if-eqz v3, :cond_14

    .line 544
    .line 545
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 546
    .line 547
    const-string/jumbo v8, "notification"

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    check-cast v4, Landroid/app/NotificationManager;

    .line 555
    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 557
    .line 558
    .line 559
    move-result-wide v8

    .line 560
    const/16 v13, 0x17

    .line 561
    .line 562
    invoke-virtual {v4, v1, v13, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 563
    .line 564
    .line 565
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    .line 567
    .line 568
    :cond_14
    :goto_a
    iget-wide v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 569
    .line 570
    div-long/2addr v3, v5

    .line 571
    invoke-virtual {v14, v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 572
    .line 573
    .line 574
    goto :goto_b

    .line 575
    :catchall_0
    move-exception v0

    .line 576
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :cond_15
    :goto_b
    iget v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 581
    .line 582
    const/4 v4, -0x1

    .line 583
    if-eq v3, v4, :cond_16

    .line 584
    .line 585
    if-eq v3, v11, :cond_16

    .line 586
    .line 587
    invoke-interface {v12, v3}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    if-eqz v3, :cond_16

    .line 592
    .line 593
    array-length v5, v3

    .line 594
    if-lez v5, :cond_16

    .line 595
    .line 596
    const/4 v5, 0x0

    .line 597
    aget-object v3, v3, v5

    .line 598
    .line 599
    goto :goto_c

    .line 600
    :cond_16
    const/4 v3, 0x0

    .line 601
    :goto_c
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 602
    .line 603
    if-nez v5, :cond_18

    .line 604
    .line 605
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    .line 606
    .line 607
    .line 608
    move-result v6

    .line 609
    if-eqz v6, :cond_17

    .line 610
    .line 611
    goto :goto_d

    .line 612
    :cond_17
    iget v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 613
    .line 614
    const v8, -0x100001

    .line 615
    .line 616
    .line 617
    and-int/2addr v6, v8

    .line 618
    iput v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 619
    .line 620
    goto :goto_e

    .line 621
    :cond_18
    :goto_d
    iget v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 622
    .line 623
    const/high16 v8, 0x100000

    .line 624
    .line 625
    or-int/2addr v6, v8

    .line 626
    iput v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 627
    .line 628
    :goto_e
    iget v6, v0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    .line 629
    .line 630
    const v8, -0x80001

    .line 631
    .line 632
    .line 633
    if-eq v6, v4, :cond_1a

    .line 634
    .line 635
    iget v6, v0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    .line 636
    .line 637
    if-ne v11, v6, :cond_19

    .line 638
    .line 639
    iget v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 640
    .line 641
    const/high16 v8, 0x80000

    .line 642
    .line 643
    or-int/2addr v6, v8

    .line 644
    iput v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 645
    .line 646
    goto :goto_f

    .line 647
    :cond_19
    iget v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 648
    .line 649
    and-int/2addr v6, v8

    .line 650
    iput v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 651
    .line 652
    :goto_f
    iput v4, v0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    .line 653
    .line 654
    goto :goto_10

    .line 655
    :cond_1a
    iget v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 656
    .line 657
    const/16 v9, 0x24

    .line 658
    .line 659
    and-int/lit8 v13, v6, 0x24

    .line 660
    .line 661
    if-eq v13, v9, :cond_1b

    .line 662
    .line 663
    and-int/2addr v6, v8

    .line 664
    iput v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 665
    .line 666
    :cond_1b
    :goto_10
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->rollbackLifetime()Z

    .line 667
    .line 668
    .line 669
    move-result v6

    .line 670
    const/high16 v8, 0x40000

    .line 671
    .line 672
    if-eqz v6, :cond_20

    .line 673
    .line 674
    move v6, v5

    .line 675
    iget-wide v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 676
    .line 677
    const-wide/16 v19, 0x0

    .line 678
    .line 679
    cmp-long v4, v4, v19

    .line 680
    .line 681
    if-lez v4, :cond_1e

    .line 682
    .line 683
    iget v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 684
    .line 685
    and-int/2addr v4, v8

    .line 686
    if-eqz v4, :cond_1d

    .line 687
    .line 688
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 689
    .line 690
    const-string v5, "android.permission.MANAGE_ROLLBACKS"

    .line 691
    .line 692
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 693
    .line 694
    .line 695
    move-result v4

    .line 696
    if-nez v4, :cond_1c

    .line 697
    .line 698
    goto :goto_11

    .line 699
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    .line 700
    .line 701
    const-string v1, "Setting rollback lifetime requires the MANAGE_ROLLBACKS permission"

    .line 702
    .line 703
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    throw v0

    .line 707
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 708
    .line 709
    const-string v1, "Can\'t set rollbackLifetimeMillis when rollback is not enabled"

    .line 710
    .line 711
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    throw v0

    .line 715
    :cond_1e
    if-ltz v4, :cond_1f

    .line 716
    .line 717
    goto :goto_11

    .line 718
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 719
    .line 720
    const-string/jumbo v1, "rollbackLifetimeMillis can\'t be negative."

    .line 721
    .line 722
    .line 723
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    throw v0

    .line 727
    :cond_20
    move v6, v5

    .line 728
    :goto_11
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 729
    .line 730
    .line 731
    move-result v4

    .line 732
    if-eqz v4, :cond_26

    .line 733
    .line 734
    iget v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 735
    .line 736
    if-eq v4, v15, :cond_23

    .line 737
    .line 738
    const/4 v5, 0x2

    .line 739
    if-ne v4, v5, :cond_21

    .line 740
    .line 741
    goto :goto_12

    .line 742
    :cond_21
    if-ltz v4, :cond_22

    .line 743
    .line 744
    goto :goto_13

    .line 745
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 746
    .line 747
    const-string/jumbo v1, "rollbackImpactLevel can\'t be negative."

    .line 748
    .line 749
    .line 750
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    throw v0

    .line 754
    :cond_23
    :goto_12
    iget v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 755
    .line 756
    and-int/2addr v4, v8

    .line 757
    if-eqz v4, :cond_25

    .line 758
    .line 759
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 760
    .line 761
    const-string v5, "android.permission.MANAGE_ROLLBACKS"

    .line 762
    .line 763
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    if-nez v4, :cond_24

    .line 768
    .line 769
    goto :goto_13

    .line 770
    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    .line 771
    .line 772
    const-string v1, "Setting rollbackImpactLevel requires the MANAGE_ROLLBACKS permission"

    .line 773
    .line 774
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    throw v0

    .line 778
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 779
    .line 780
    const-string v1, "Can\'t set rollbackImpactLevel when rollback is not enabled"

    .line 781
    .line 782
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    throw v0

    .line 786
    :cond_26
    :goto_13
    iget v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 787
    .line 788
    const/high16 v5, 0x20000

    .line 789
    .line 790
    and-int/2addr v4, v5

    .line 791
    if-eqz v4, :cond_27

    .line 792
    .line 793
    move v4, v15

    .line 794
    goto :goto_14

    .line 795
    :cond_27
    const/4 v4, 0x0

    .line 796
    :goto_14
    if-eqz v4, :cond_29

    .line 797
    .line 798
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 799
    .line 800
    const-string v9, "android.permission.INSTALL_PACKAGE_UPDATES"

    .line 801
    .line 802
    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    move-result v8

    .line 806
    const/4 v9, -0x1

    .line 807
    if-ne v8, v9, :cond_2a

    .line 808
    .line 809
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 810
    .line 811
    const-string v13, "android.permission.INSTALL_PACKAGES"

    .line 812
    .line 813
    invoke-virtual {v8, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 814
    .line 815
    .line 816
    move-result v8

    .line 817
    if-eq v8, v9, :cond_28

    .line 818
    .line 819
    goto :goto_15

    .line 820
    :cond_28
    new-instance v0, Ljava/lang/SecurityException;

    .line 821
    .line 822
    const-string v1, "Not allowed to perform APEX updates"

    .line 823
    .line 824
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    throw v0

    .line 828
    :cond_29
    iget-boolean v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 829
    .line 830
    if-eqz v8, :cond_2a

    .line 831
    .line 832
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 833
    .line 834
    const-string v9, "android.permission.INSTALL_PACKAGES"

    .line 835
    .line 836
    const-string v13, "PackageInstaller"

    .line 837
    .line 838
    invoke-virtual {v8, v9, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    :cond_2a
    :goto_15
    if-eqz v4, :cond_2e

    .line 842
    .line 843
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 844
    .line 845
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    .line 847
    .line 848
    iget-boolean v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 849
    .line 850
    if-nez v8, :cond_2d

    .line 851
    .line 852
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 853
    .line 854
    .line 855
    move-result v8

    .line 856
    if-nez v8, :cond_2c

    .line 857
    .line 858
    iget-boolean v8, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 859
    .line 860
    if-eqz v8, :cond_2b

    .line 861
    .line 862
    goto :goto_16

    .line 863
    :cond_2b
    iget v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 864
    .line 865
    const v9, -0x800001

    .line 866
    .line 867
    .line 868
    and-int/2addr v8, v9

    .line 869
    iput v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 870
    .line 871
    goto :goto_17

    .line 872
    :cond_2c
    :goto_16
    iget v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 873
    .line 874
    const/high16 v9, 0x800000

    .line 875
    .line 876
    or-int/2addr v8, v9

    .line 877
    iput v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 878
    .line 879
    goto :goto_17

    .line 880
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 881
    .line 882
    const-string v1, "A multi-session can\'t be set as APEX."

    .line 883
    .line 884
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    throw v0

    .line 888
    :cond_2e
    :goto_17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 889
    .line 890
    .line 891
    move-result v8

    .line 892
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 893
    .line 894
    .line 895
    move-result v9

    .line 896
    if-eq v8, v9, :cond_36

    .line 897
    .line 898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 899
    .line 900
    .line 901
    move-result-wide v8

    .line 902
    :try_start_1
    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 903
    .line 904
    const-string/jumbo v7, "no_non_market_app_by_knox"

    .line 905
    .line 906
    .line 907
    const/4 v5, 0x0

    .line 908
    invoke-virtual {v13, v5, v7}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    .line 909
    .line 910
    .line 911
    move-result v13

    .line 912
    if-eqz v13, :cond_35

    .line 913
    .line 914
    const-string v5, "PackageInstaller"

    .line 915
    .line 916
    const-string v13, "UserManager.DISALLOW_NON_MARKET_APP_BY_KNOX : true"

    .line 917
    .line 918
    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .line 920
    .line 921
    if-eqz v1, :cond_31

    .line 922
    .line 923
    const-string v5, "com.google.android.packageinstaller"

    .line 924
    .line 925
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    move-result v5

    .line 929
    if-nez v5, :cond_2f

    .line 930
    .line 931
    const-string v5, "com.samsung.android.packageinstaller"

    .line 932
    .line 933
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v5

    .line 937
    if-eqz v5, :cond_31

    .line 938
    .line 939
    goto :goto_18

    .line 940
    :catchall_1
    move-exception v0

    .line 941
    goto :goto_1b

    .line 942
    :cond_2f
    :goto_18
    const-string/jumbo v1, "restriction_policy"

    .line 943
    .line 944
    .line 945
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 950
    .line 951
    .line 952
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 953
    if-eqz v1, :cond_30

    .line 954
    .line 955
    :try_start_2
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 956
    .line 957
    const v2, 0x10401dd

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    invoke-interface {v1, v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->showRestrictionToast(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 965
    .line 966
    .line 967
    :catch_0
    :cond_30
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 968
    .line 969
    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    .line 970
    .line 971
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    throw v0

    .line 975
    :cond_31
    const-string v5, "android.permission.INSTALL_PACKAGES"

    .line 976
    .line 977
    invoke-interface {v12, v5, v11}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 978
    .line 979
    .line 980
    move-result v5

    .line 981
    if-eqz v5, :cond_33

    .line 982
    .line 983
    const-string v5, "android.permission.INSTALL_PACKAGE_UPDATES"

    .line 984
    .line 985
    invoke-interface {v12, v5, v11}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 986
    .line 987
    .line 988
    move-result v5

    .line 989
    if-nez v5, :cond_32

    .line 990
    .line 991
    goto :goto_19

    .line 992
    :cond_32
    new-instance v0, Ljava/io/IOException;

    .line 993
    .line 994
    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    .line 995
    .line 996
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    throw v0

    .line 1000
    :cond_33
    :goto_19
    const/16 v5, 0x7d0

    .line 1001
    .line 1002
    if-eq v11, v5, :cond_34

    .line 1003
    .line 1004
    goto :goto_1a

    .line 1005
    :cond_34
    new-instance v0, Ljava/io/IOException;

    .line 1006
    .line 1007
    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    .line 1008
    .line 1009
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    throw v0

    .line 1013
    :cond_35
    const-string v5, "PackageInstaller"

    .line 1014
    .line 1015
    const-string v13, "UserManager.DISALLOW_NON_MARKET_APP_BY_KNOX : false"

    .line 1016
    .line 1017
    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1018
    .line 1019
    .line 1020
    :goto_1a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1021
    .line 1022
    .line 1023
    goto :goto_1c

    .line 1024
    :goto_1b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1025
    .line 1026
    .line 1027
    throw v0

    .line 1028
    :cond_36
    :goto_1c
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1029
    .line 1030
    const/high16 v8, 0x1000000

    .line 1031
    .line 1032
    and-int/2addr v5, v8

    .line 1033
    if-eqz v5, :cond_38

    .line 1034
    .line 1035
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v5

    .line 1039
    if-nez v5, :cond_38

    .line 1040
    .line 1041
    if-nez v6, :cond_38

    .line 1042
    .line 1043
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1044
    .line 1045
    const/16 v6, 0x3e8

    .line 1046
    .line 1047
    if-eq v11, v6, :cond_37

    .line 1048
    .line 1049
    const-string v6, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    .line 1050
    .line 1051
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 1052
    .line 1053
    .line 1054
    move-result v5

    .line 1055
    if-nez v5, :cond_37

    .line 1056
    .line 1057
    goto :goto_1d

    .line 1058
    :cond_37
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1059
    .line 1060
    const v6, -0x1000001

    .line 1061
    .line 1062
    .line 1063
    and-int/2addr v5, v6

    .line 1064
    iput v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1065
    .line 1066
    :cond_38
    :goto_1d
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1067
    .line 1068
    const v6, -0x40000001    # -1.9999999f

    .line 1069
    .line 1070
    .line 1071
    and-int/2addr v5, v6

    .line 1072
    iput v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1073
    .line 1074
    sget-object v5, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 1075
    .line 1076
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v5

    .line 1080
    if-eqz v5, :cond_39

    .line 1081
    .line 1082
    iget-object v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1083
    .line 1084
    if-eqz v5, :cond_39

    .line 1085
    .line 1086
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1087
    .line 1088
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v5

    .line 1092
    iget-object v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1093
    .line 1094
    const/16 v8, 0x3e8

    .line 1095
    .line 1096
    invoke-interface {v5, v8, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v5

    .line 1100
    if-eqz v5, :cond_39

    .line 1101
    .line 1102
    invoke-interface {v5, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v6

    .line 1106
    invoke-static {v6}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v6

    .line 1110
    if-eqz v6, :cond_39

    .line 1111
    .line 1112
    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 1113
    .line 1114
    invoke-static {v5}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v5

    .line 1118
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v5

    .line 1122
    if-eqz v5, :cond_39

    .line 1123
    .line 1124
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1125
    .line 1126
    const/high16 v6, 0x40000000    # 2.0f

    .line 1127
    .line 1128
    or-int/2addr v5, v6

    .line 1129
    iput v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1130
    .line 1131
    :cond_39
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1132
    .line 1133
    and-int/lit16 v5, v5, 0x800

    .line 1134
    .line 1135
    if-eqz v5, :cond_3b

    .line 1136
    .line 1137
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 1138
    .line 1139
    .line 1140
    move-result v5

    .line 1141
    if-nez v5, :cond_3b

    .line 1142
    .line 1143
    invoke-interface {v12, v11}, Lcom/android/server/pm/Computer;->getFlagsForUid(I)I

    .line 1144
    .line 1145
    .line 1146
    move-result v5

    .line 1147
    and-int/2addr v5, v15

    .line 1148
    if-eqz v5, :cond_3a

    .line 1149
    .line 1150
    goto :goto_1e

    .line 1151
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    .line 1152
    .line 1153
    const-string v1, "Only system apps could use the PackageManager.INSTALL_INSTANT_APP flag."

    .line 1154
    .line 1155
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    throw v0

    .line 1159
    :cond_3b
    :goto_1e
    iget-boolean v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 1160
    .line 1161
    if-eqz v5, :cond_3d

    .line 1162
    .line 1163
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v5

    .line 1167
    if-nez v5, :cond_3d

    .line 1168
    .line 1169
    iget-boolean v5, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 1170
    .line 1171
    if-nez v5, :cond_3d

    .line 1172
    .line 1173
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v5

    .line 1177
    iget-object v5, v5, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 1178
    .line 1179
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v5

    .line 1183
    if-eqz v5, :cond_3c

    .line 1184
    .line 1185
    goto :goto_1f

    .line 1186
    :cond_3c
    new-instance v0, Ljava/lang/SecurityException;

    .line 1187
    .line 1188
    const-string v1, "Installer not allowed to commit staged install"

    .line 1189
    .line 1190
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    throw v0

    .line 1194
    :cond_3d
    :goto_1f
    if-eqz v4, :cond_3e

    .line 1195
    .line 1196
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v5

    .line 1200
    if-nez v5, :cond_3e

    .line 1201
    .line 1202
    iget-boolean v5, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 1203
    .line 1204
    if-nez v5, :cond_3e

    .line 1205
    .line 1206
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v5

    .line 1210
    iget-object v5, v5, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 1211
    .line 1212
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v5

    .line 1216
    if-eqz v5, :cond_3f

    .line 1217
    .line 1218
    :cond_3e
    const/4 v5, 0x0

    .line 1219
    goto :goto_20

    .line 1220
    :cond_3f
    new-instance v0, Ljava/lang/SecurityException;

    .line 1221
    .line 1222
    const-string v1, "Installer not allowed to commit non-staged APEX install"

    .line 1223
    .line 1224
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    throw v0

    .line 1228
    :goto_20
    iput-boolean v5, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 1229
    .line 1230
    iput-boolean v5, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 1231
    .line 1232
    iget-boolean v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 1233
    .line 1234
    if-nez v5, :cond_4e

    .line 1235
    .line 1236
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1237
    .line 1238
    const-string v6, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    .line 1239
    .line 1240
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 1241
    .line 1242
    .line 1243
    move-result v5

    .line 1244
    if-nez v5, :cond_40

    .line 1245
    .line 1246
    move v5, v15

    .line 1247
    goto :goto_21

    .line 1248
    :cond_40
    const/4 v5, 0x0

    .line 1249
    :goto_21
    iget v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1250
    .line 1251
    and-int/lit16 v6, v6, 0x100

    .line 1252
    .line 1253
    if-eqz v6, :cond_42

    .line 1254
    .line 1255
    if-eqz v5, :cond_41

    .line 1256
    .line 1257
    goto :goto_22

    .line 1258
    :cond_41
    new-instance v0, Ljava/lang/SecurityException;

    .line 1259
    .line 1260
    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_ALL_REQUESTED_PERMISSIONS flag"

    .line 1261
    .line 1262
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    throw v0

    .line 1266
    :cond_42
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v6

    .line 1270
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 1271
    .line 1272
    .line 1273
    move-result v8

    .line 1274
    if-nez v8, :cond_44

    .line 1275
    .line 1276
    if-nez v5, :cond_44

    .line 1277
    .line 1278
    const/4 v5, 0x0

    .line 1279
    :goto_23
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 1280
    .line 1281
    .line 1282
    move-result v8

    .line 1283
    if-ge v5, v8, :cond_44

    .line 1284
    .line 1285
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v8

    .line 1289
    check-cast v8, Ljava/lang/String;

    .line 1290
    .line 1291
    sget-object v9, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 1292
    .line 1293
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v8

    .line 1297
    if-eqz v8, :cond_43

    .line 1298
    .line 1299
    add-int/2addr v5, v15

    .line 1300
    goto :goto_23

    .line 1301
    :cond_43
    new-instance v0, Ljava/lang/SecurityException;

    .line 1302
    .line 1303
    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to grant runtime permissions for a session"

    .line 1304
    .line 1305
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1306
    .line 1307
    .line 1308
    throw v0

    .line 1309
    :cond_44
    iget-object v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1310
    .line 1311
    if-eqz v5, :cond_46

    .line 1312
    .line 1313
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1314
    .line 1315
    const-string v6, "activity"

    .line 1316
    .line 1317
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v5

    .line 1321
    check-cast v5, Landroid/app/ActivityManager;

    .line 1322
    .line 1323
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    .line 1324
    .line 1325
    .line 1326
    move-result v5

    .line 1327
    iget-object v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1328
    .line 1329
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1330
    .line 1331
    .line 1332
    move-result v6

    .line 1333
    const/4 v8, 0x2

    .line 1334
    mul-int/lit8 v9, v5, 0x2

    .line 1335
    .line 1336
    if-gt v6, v9, :cond_45

    .line 1337
    .line 1338
    iget-object v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1339
    .line 1340
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1341
    .line 1342
    .line 1343
    move-result v6

    .line 1344
    if-le v6, v9, :cond_46

    .line 1345
    .line 1346
    :cond_45
    iget-object v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1347
    .line 1348
    invoke-static {v6, v5, v5, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v5

    .line 1352
    iput-object v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1353
    .line 1354
    :cond_46
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 1355
    .line 1356
    if-eq v5, v15, :cond_48

    .line 1357
    .line 1358
    const/4 v6, 0x2

    .line 1359
    if-ne v5, v6, :cond_47

    .line 1360
    .line 1361
    goto :goto_24

    .line 1362
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1363
    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    const-string v2, "Invalid install mode: "

    .line 1367
    .line 1368
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    iget v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 1372
    .line 1373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v1

    .line 1380
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    throw v0

    .line 1384
    :cond_48
    :goto_24
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1385
    .line 1386
    and-int/lit8 v6, v5, 0x10

    .line 1387
    .line 1388
    if-eqz v6, :cond_4a

    .line 1389
    .line 1390
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1391
    .line 1392
    invoke-static {v5, v14}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v5

    .line 1396
    if-eqz v5, :cond_49

    .line 1397
    .line 1398
    goto :goto_25

    .line 1399
    :cond_49
    new-instance v0, Ljava/io/IOException;

    .line 1400
    .line 1401
    const-string v1, "No suitable internal storage available"

    .line 1402
    .line 1403
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    throw v0

    .line 1407
    :cond_4a
    and-int/lit8 v6, v5, 0x8

    .line 1408
    .line 1409
    if-eqz v6, :cond_4c

    .line 1410
    .line 1411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1412
    .line 1413
    .line 1414
    move-result-wide v5

    .line 1415
    :try_start_4
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1416
    .line 1417
    invoke-static {v8, v14}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 1418
    .line 1419
    .line 1420
    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1421
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1422
    .line 1423
    .line 1424
    if-eqz v8, :cond_4b

    .line 1425
    .line 1426
    goto :goto_25

    .line 1427
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    .line 1428
    .line 1429
    const-string v1, "No suitable external storage available"

    .line 1430
    .line 1431
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1432
    .line 1433
    .line 1434
    throw v0

    .line 1435
    :catchall_2
    move-exception v0

    .line 1436
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1437
    .line 1438
    .line 1439
    throw v0

    .line 1440
    :cond_4c
    and-int/lit16 v6, v5, 0x200

    .line 1441
    .line 1442
    if-eqz v6, :cond_4d

    .line 1443
    .line 1444
    or-int/lit8 v5, v5, 0x10

    .line 1445
    .line 1446
    iput v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1447
    .line 1448
    goto :goto_25

    .line 1449
    :cond_4d
    or-int/lit8 v5, v5, 0x10

    .line 1450
    .line 1451
    iput v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1452
    .line 1453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1454
    .line 1455
    .line 1456
    move-result-wide v5

    .line 1457
    :try_start_5
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1458
    .line 1459
    invoke-static {v8, v14}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v8

    .line 1463
    iput-object v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1464
    .line 1465
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    .line 1467
    .line 1468
    goto :goto_25

    .line 1469
    :catchall_3
    move-exception v0

    .line 1470
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1471
    .line 1472
    .line 1473
    throw v0

    .line 1474
    :cond_4e
    :goto_25
    if-eqz v2, :cond_4f

    .line 1475
    .line 1476
    const-wide/16 v5, 0x0

    .line 1477
    .line 1478
    invoke-interface {v12, v2, v5, v6, v10}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 1479
    .line 1480
    .line 1481
    move-result v5

    .line 1482
    :goto_26
    const/4 v6, -0x1

    .line 1483
    goto :goto_27

    .line 1484
    :cond_4f
    const/4 v5, -0x1

    .line 1485
    goto :goto_26

    .line 1486
    :goto_27
    if-ne v5, v6, :cond_50

    .line 1487
    .line 1488
    const/16 v23, 0x0

    .line 1489
    .line 1490
    goto :goto_28

    .line 1491
    :cond_50
    move-object/from16 v23, v2

    .line 1492
    .line 1493
    :goto_28
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 1494
    .line 1495
    monitor-enter v2

    .line 1496
    :try_start_6
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 1497
    .line 1498
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 1499
    .line 1500
    .line 1501
    move-result v8

    .line 1502
    const/4 v9, 0x0

    .line 1503
    const/4 v12, 0x0

    .line 1504
    :goto_29
    if-ge v9, v8, :cond_52

    .line 1505
    .line 1506
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v13

    .line 1510
    check-cast v13, Lcom/android/server/pm/PackageInstallerSession;

    .line 1511
    .line 1512
    invoke-virtual {v13}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 1513
    .line 1514
    .line 1515
    move-result v13

    .line 1516
    if-ne v13, v11, :cond_51

    .line 1517
    .line 1518
    add-int/2addr v12, v15

    .line 1519
    :cond_51
    add-int/2addr v9, v15

    .line 1520
    goto :goto_29

    .line 1521
    :cond_52
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1522
    .line 1523
    const-string v8, "android.permission.INSTALL_PACKAGES"

    .line 1524
    .line 1525
    invoke-virtual {v6, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 1526
    .line 1527
    .line 1528
    move-result v6

    .line 1529
    if-nez v6, :cond_54

    .line 1530
    .line 1531
    int-to-long v8, v12

    .line 1532
    const-wide/16 v12, 0x400

    .line 1533
    .line 1534
    cmp-long v6, v8, v12

    .line 1535
    .line 1536
    if-gez v6, :cond_53

    .line 1537
    .line 1538
    goto :goto_2a

    .line 1539
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1540
    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1544
    .line 1545
    .line 1546
    const-string v3, "Too many active sessions for UID "

    .line 1547
    .line 1548
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v1

    .line 1558
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    throw v0

    .line 1562
    :catchall_4
    move-exception v0

    .line 1563
    goto/16 :goto_31

    .line 1564
    .line 1565
    :cond_54
    int-to-long v8, v12

    .line 1566
    const-wide/16 v12, 0x32

    .line 1567
    .line 1568
    cmp-long v6, v8, v12

    .line 1569
    .line 1570
    if-gez v6, :cond_64

    .line 1571
    .line 1572
    :goto_2a
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 1573
    .line 1574
    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 1575
    .line 1576
    .line 1577
    move-result v6

    .line 1578
    int-to-long v8, v6

    .line 1579
    const-wide/32 v12, 0x100000

    .line 1580
    .line 1581
    .line 1582
    cmp-long v6, v8, v12

    .line 1583
    .line 1584
    if-gez v6, :cond_63

    .line 1585
    .line 1586
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 1587
    .line 1588
    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1589
    :try_start_7
    invoke-virtual {v0, v5, v14, v10}, Lcom/android/server/pm/PackageInstallerService;->getExistingDraftSessionIdInternal(ILandroid/content/pm/PackageInstaller$SessionParams;I)I

    .line 1590
    .line 1591
    .line 1592
    move-result v8

    .line 1593
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1594
    const/4 v6, -0x1

    .line 1595
    if-eq v8, v6, :cond_55

    .line 1596
    .line 1597
    :goto_2b
    move v13, v8

    .line 1598
    goto :goto_2c

    .line 1599
    :cond_55
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    .line 1600
    .line 1601
    .line 1602
    move-result v8

    .line 1603
    goto :goto_2b

    .line 1604
    :goto_2c
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1606
    .line 1607
    .line 1608
    move-result-wide v34

    .line 1609
    iget-boolean v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 1610
    .line 1611
    if-nez v2, :cond_5c

    .line 1612
    .line 1613
    iget v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1614
    .line 1615
    and-int/lit8 v6, v2, 0x10

    .line 1616
    .line 1617
    if-eqz v6, :cond_5b

    .line 1618
    .line 1619
    iget-boolean v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 1620
    .line 1621
    if-nez v6, :cond_59

    .line 1622
    .line 1623
    const/high16 v6, 0x20000

    .line 1624
    .line 1625
    and-int/2addr v2, v6

    .line 1626
    if-eqz v2, :cond_56

    .line 1627
    .line 1628
    goto :goto_2d

    .line 1629
    :cond_56
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 1630
    .line 1631
    invoke-static {v2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v2

    .line 1635
    new-instance v6, Ljava/io/File;

    .line 1636
    .line 1637
    const-string/jumbo v8, "vmdl"

    .line 1638
    .line 1639
    .line 1640
    const-string v9, ".tmp"

    .line 1641
    .line 1642
    invoke-static {v13, v8, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v8

    .line 1646
    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1647
    .line 1648
    .line 1649
    sget-boolean v2, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    .line 1650
    .line 1651
    if-eqz v2, :cond_5a

    .line 1652
    .line 1653
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v2

    .line 1657
    const-string/jumbo v8, "vmdl"

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v8

    .line 1664
    if-eqz v8, :cond_58

    .line 1665
    .line 1666
    const-string v8, ".tmp"

    .line 1667
    .line 1668
    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1669
    .line 1670
    .line 1671
    move-result v8

    .line 1672
    if-eqz v8, :cond_58

    .line 1673
    .line 1674
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1675
    .line 1676
    .line 1677
    move-result v8

    .line 1678
    const/4 v9, 0x4

    .line 1679
    sub-int/2addr v8, v9

    .line 1680
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v2

    .line 1684
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1685
    .line 1686
    .line 1687
    move-result v2

    .line 1688
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v2

    .line 1692
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v8

    .line 1696
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1697
    .line 1698
    .line 1699
    move-result v2

    .line 1700
    if-eqz v2, :cond_57

    .line 1701
    .line 1702
    goto :goto_2e

    .line 1703
    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1704
    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1706
    .line 1707
    const-string/jumbo v2, "session folder format is off: "

    .line 1708
    .line 1709
    .line 1710
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v2

    .line 1717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    .line 1719
    .line 1720
    const-string v2, " ("

    .line 1721
    .line 1722
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    .line 1728
    const-string v2, ")"

    .line 1729
    .line 1730
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v1

    .line 1737
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1738
    .line 1739
    .line 1740
    throw v0

    .line 1741
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1742
    .line 1743
    const-string v1, "Not a temporary session directory"

    .line 1744
    .line 1745
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1746
    .line 1747
    .line 1748
    throw v0

    .line 1749
    :cond_59
    :goto_2d
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 1750
    .line 1751
    invoke-static {v2}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v2

    .line 1755
    new-instance v6, Ljava/io/File;

    .line 1756
    .line 1757
    const-string/jumbo v8, "session_"

    .line 1758
    .line 1759
    .line 1760
    invoke-static {v13, v8}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v8

    .line 1764
    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    :cond_5a
    :goto_2e
    move-object/from16 v18, v6

    .line 1768
    .line 1769
    :goto_2f
    const/16 v36, 0x0

    .line 1770
    .line 1771
    goto :goto_30

    .line 1772
    :cond_5b
    const-string/jumbo v2, "smdl"

    .line 1773
    .line 1774
    .line 1775
    const-string v6, ".tmp"

    .line 1776
    .line 1777
    invoke-static {v13, v2, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v2

    .line 1781
    move-object/from16 v36, v2

    .line 1782
    .line 1783
    const/16 v18, 0x0

    .line 1784
    .line 1785
    goto :goto_30

    .line 1786
    :cond_5c
    const/16 v18, 0x0

    .line 1787
    .line 1788
    goto :goto_2f

    .line 1789
    :goto_30
    const v2, -0x2000001

    .line 1790
    .line 1791
    .line 1792
    const/16 v6, 0x3e8

    .line 1793
    .line 1794
    if-eq v11, v6, :cond_5d

    .line 1795
    .line 1796
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1797
    .line 1798
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    .line 1799
    .line 1800
    .line 1801
    move-result v6

    .line 1802
    if-nez v6, :cond_5d

    .line 1803
    .line 1804
    iget v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    .line 1805
    .line 1806
    and-int/2addr v6, v2

    .line 1807
    iput v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    .line 1808
    .line 1809
    :cond_5d
    iget-boolean v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 1810
    .line 1811
    if-eqz v6, :cond_5e

    .line 1812
    .line 1813
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    .line 1814
    .line 1815
    .line 1816
    move-result v6

    .line 1817
    if-nez v6, :cond_5e

    .line 1818
    .line 1819
    const/4 v6, 0x0

    .line 1820
    iput-boolean v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 1821
    .line 1822
    :cond_5e
    const-class v6, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1823
    .line 1824
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v6

    .line 1828
    check-cast v6, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1829
    .line 1830
    if-eqz v6, :cond_5f

    .line 1831
    .line 1832
    invoke-virtual {v6, v10}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    .line 1833
    .line 1834
    .line 1835
    move-result v6

    .line 1836
    if-eqz v6, :cond_5f

    .line 1837
    .line 1838
    iget v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1839
    .line 1840
    const/high16 v7, 0x4000000

    .line 1841
    .line 1842
    or-int/2addr v6, v7

    .line 1843
    iput v6, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1844
    .line 1845
    :cond_5f
    if-nez v4, :cond_60

    .line 1846
    .line 1847
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1848
    .line 1849
    const-string v6, "android.permission.ENFORCE_UPDATE_OWNERSHIP"

    .line 1850
    .line 1851
    invoke-virtual {v4, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 1852
    .line 1853
    .line 1854
    move-result v4

    .line 1855
    const/4 v6, -0x1

    .line 1856
    if-ne v4, v6, :cond_61

    .line 1857
    .line 1858
    :cond_60
    iget v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1859
    .line 1860
    and-int/2addr v2, v4

    .line 1861
    iput v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1862
    .line 1863
    :cond_61
    iget v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 1864
    .line 1865
    const/16 v26, 0x0

    .line 1866
    .line 1867
    const/16 v27, 0x0

    .line 1868
    .line 1869
    move-object/from16 v19, v1

    .line 1870
    .line 1871
    move-object/from16 v20, v3

    .line 1872
    .line 1873
    move-object/from16 v21, v23

    .line 1874
    .line 1875
    move/from16 v22, v5

    .line 1876
    .line 1877
    move-object/from16 v24, p3

    .line 1878
    .line 1879
    move/from16 v25, v2

    .line 1880
    .line 1881
    invoke-static/range {v19 .. v27}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v12

    .line 1885
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession;

    .line 1886
    .line 1887
    move-object v1, v9

    .line 1888
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 1889
    .line 1890
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1891
    .line 1892
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1893
    .line 1894
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 1895
    .line 1896
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 1897
    .line 1898
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v7

    .line 1902
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 1903
    .line 1904
    const-string v32, ""

    .line 1905
    .line 1906
    const/16 v30, 0x0

    .line 1907
    .line 1908
    const/16 v31, 0x0

    .line 1909
    .line 1910
    const-wide/16 v16, 0x0

    .line 1911
    .line 1912
    const/16 v20, 0x0

    .line 1913
    .line 1914
    const/16 v21, 0x0

    .line 1915
    .line 1916
    const/16 v22, 0x0

    .line 1917
    .line 1918
    const/16 v23, 0x0

    .line 1919
    .line 1920
    const/16 v24, 0x0

    .line 1921
    .line 1922
    const/16 v25, 0x0

    .line 1923
    .line 1924
    const/16 v26, 0x0

    .line 1925
    .line 1926
    const/16 v27, -0x1

    .line 1927
    .line 1928
    const/16 v28, 0x0

    .line 1929
    .line 1930
    const/16 v29, 0x0

    .line 1931
    .line 1932
    const/16 v33, 0x0

    .line 1933
    .line 1934
    move-object/from16 v5, p0

    .line 1935
    .line 1936
    move-object/from16 v37, v9

    .line 1937
    .line 1938
    move v9, v13

    .line 1939
    move/from16 v10, p5

    .line 1940
    .line 1941
    move/from16 v11, p4

    .line 1942
    .line 1943
    move/from16 v38, v13

    .line 1944
    .line 1945
    move-object/from16 v13, p1

    .line 1946
    .line 1947
    move-wide/from16 v14, v34

    .line 1948
    .line 1949
    move-object/from16 v19, v36

    .line 1950
    .line 1951
    invoke-direct/range {v1 .. v33}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 1952
    .line 1953
    .line 1954
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 1955
    .line 1956
    monitor-enter v1

    .line 1957
    :try_start_9
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 1958
    .line 1959
    move-object/from16 v3, v37

    .line 1960
    .line 1961
    move/from16 v8, v38

    .line 1962
    .line 1963
    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1964
    .line 1965
    .line 1966
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1967
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1968
    .line 1969
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v2

    .line 1973
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1974
    .line 1975
    monitor-enter v4

    .line 1976
    :try_start_a
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1977
    .line 1978
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 1979
    .line 1980
    .line 1981
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1982
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 1983
    .line 1984
    iget v2, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1985
    .line 1986
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 1987
    .line 1988
    sget v4, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 1989
    .line 1990
    const/4 v4, 0x1

    .line 1991
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v1

    .line 1995
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1996
    .line 1997
    .line 1998
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 1999
    .line 2000
    invoke-virtual {v0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    .line 2001
    .line 2002
    .line 2003
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    .line 2004
    .line 2005
    if-eqz v0, :cond_62

    .line 2006
    .line 2007
    const-string v0, "PackageInstaller"

    .line 2008
    .line 2009
    const-string v1, "Created session id="

    .line 2010
    .line 2011
    const-string v2, " staged="

    .line 2012
    .line 2013
    invoke-static {v8, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v1

    .line 2017
    move-object/from16 v2, p1

    .line 2018
    .line 2019
    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2020
    .line 2021
    invoke-static {v0, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2022
    .line 2023
    .line 2024
    :cond_62
    return v8

    .line 2025
    :catchall_5
    move-exception v0

    .line 2026
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 2027
    throw v0

    .line 2028
    :catchall_6
    move-exception v0

    .line 2029
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 2030
    throw v0

    .line 2031
    :catchall_7
    move-exception v0

    .line 2032
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 2033
    :try_start_e
    throw v0

    .line 2034
    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2035
    .line 2036
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2037
    .line 2038
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2039
    .line 2040
    .line 2041
    const-string v3, "Too many historical sessions for UID "

    .line 2042
    .line 2043
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v1

    .line 2053
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2054
    .line 2055
    .line 2056
    throw v0

    .line 2057
    :cond_64
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2058
    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2060
    .line 2061
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2062
    .line 2063
    .line 2064
    const-string v3, "Too many active sessions for UID "

    .line 2065
    .line 2066
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    .line 2068
    .line 2069
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2070
    .line 2071
    .line 2072
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v1

    .line 2076
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2077
    .line 2078
    .line 2079
    throw v0

    .line 2080
    :goto_31
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2081
    throw v0

    .line 2082
    :cond_65
    const-string v0, "PackageInstaller"

    .line 2083
    .line 2084
    const-string/jumbo v1, "not an approved installer"

    .line 2085
    .line 2086
    .line 2087
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    .line 2089
    .line 2090
    new-instance v0, Ljava/io/IOException;

    .line 2091
    .line 2092
    const-string/jumbo v1, "not an approved installer"

    .line 2093
    .line 2094
    .line 2095
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2096
    .line 2097
    .line 2098
    throw v0

    .line 2099
    :cond_66
    new-instance v0, Ljava/lang/SecurityException;

    .line 2100
    .line 2101
    const-string v1, "User restriction prevents installing"

    .line 2102
    .line 2103
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2104
    .line 2105
    .line 2106
    throw v0
.end method

.method public final disableVerificationForUid(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string p1, "Operation not allowed for caller"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    .line 15
    .line 16
    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    :goto_0
    if-ge v6, v4, :cond_3

    .line 28
    .line 29
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 36
    .line 37
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_0

    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-virtual {p0, v8}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_9

    .line 54
    .line 55
    :cond_0
    move-object v8, v7

    .line 56
    :goto_1
    if-nez v8, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_2

    .line 67
    .line 68
    invoke-virtual {v3, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v1, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const-string v4, "Active"

    .line 79
    .line 80
    invoke-virtual {v1, v4, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v2, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    xor-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    const-string v1, "Orphaned"

    .line 94
    .line 95
    invoke-virtual {v2, v1, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    const-string v1, "Finalized"

    .line 99
    .line 100
    invoke-virtual {v3, v1, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "Historical install sessions:"

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 112
    .line 113
    check-cast v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    move v2, v5

    .line 120
    :goto_3
    if-ge v2, v1, :cond_5

    .line 121
    .line 122
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 123
    .line 124
    check-cast v3, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    .line 131
    .line 132
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageInstallerHistoricalSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 145
    .line 146
    .line 147
    const-string v1, "Legacy install sessions:"

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 168
    .line 169
    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 172
    .line 173
    iget-object v1, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 174
    .line 175
    monitor-enter v1

    .line 176
    :try_start_1
    iget-object v2, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 177
    .line 178
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_6

    .line 183
    .line 184
    monitor-exit v1

    .line 185
    goto :goto_6

    .line 186
    :catchall_1
    move-exception p0

    .line 187
    goto/16 :goto_8

    .line 188
    .line 189
    :cond_6
    const-string v2, "Last silent updated Infos:"

    .line 190
    .line 191
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 195
    .line 196
    .line 197
    iget-object v2, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 198
    .line 199
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    move v3, v5

    .line 204
    :goto_4
    if-ge v3, v2, :cond_8

    .line 205
    .line 206
    iget-object v4, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 207
    .line 208
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Landroid/util/Pair;

    .line 213
    .line 214
    if-nez v4, :cond_7

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_7
    const-string v6, "installerPackageName"

    .line 218
    .line 219
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 220
    .line 221
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 222
    .line 223
    .line 224
    const-string/jumbo v6, "packageName"

    .line 225
    .line 226
    .line 227
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 228
    .line 229
    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 230
    .line 231
    .line 232
    const-string/jumbo v4, "silentUpdatedMillis"

    .line 233
    .line 234
    .line 235
    iget-object v6, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 236
    .line 237
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-virtual {p1, v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 245
    .line 246
    .line 247
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 251
    .line 252
    .line 253
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :goto_6
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    .line 255
    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    const-string v0, "Gentle update with constraints info:"

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 265
    .line 266
    .line 267
    iget-boolean v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHasPendingIdleJob:Z

    .line 268
    .line 269
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v1, "hasPendingIdleJob"

    .line 274
    .line 275
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string v1, "Num of PendingIdleFutures"

    .line 292
    .line 293
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 297
    .line 298
    .line 299
    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 300
    .line 301
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    const-string v2, "Num of PendingChecks"

    .line 314
    .line 315
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 322
    .line 323
    .line 324
    :goto_7
    if-ge v5, v0, :cond_9

    .line 325
    .line 326
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 327
    .line 328
    .line 329
    const-string v1, ":"

    .line 330
    .line 331
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    check-cast v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    .line 339
    .line 340
    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->packageNames:Ljava/util/List;

    .line 341
    .line 342
    const-string/jumbo v3, "packageNames"

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 349
    .line 350
    .line 351
    iget-wide v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->mFinishTime:J

    .line 352
    .line 353
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    const-string v3, "finishTime"

    .line 358
    .line 359
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 363
    .line 364
    .line 365
    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 366
    .line 367
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isNotInCallRequired()Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    const-string v3, "constraints notInCallRequired"

    .line 376
    .line 377
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 381
    .line 382
    .line 383
    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 384
    .line 385
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isDeviceIdleRequired()Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    const-string v3, "constraints deviceIdleRequired"

    .line 394
    .line 395
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 399
    .line 400
    .line 401
    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 402
    .line 403
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotForegroundRequired()Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    const-string v3, "constraints appNotForegroundRequired"

    .line 412
    .line 413
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 417
    .line 418
    .line 419
    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 420
    .line 421
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotInteractingRequired()Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    const-string v3, "constraints appNotInteractingRequired"

    .line 430
    .line 431
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 435
    .line 436
    .line 437
    iget-object v1, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 438
    .line 439
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotTopVisibleRequired()Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    const-string v2, "constraints appNotTopVisibleRequired"

    .line 448
    .line 449
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 453
    .line 454
    .line 455
    add-int/lit8 v5, v5, 0x1

    .line 456
    .line 457
    goto/16 :goto_7

    .line 458
    .line 459
    :cond_9
    return-void

    .line 460
    :goto_8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 461
    throw p0

    .line 462
    :goto_9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    throw p0
.end method

.method public final expireSessionsLocked()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v4, v2, :cond_9

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 23
    .line 24
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    iget-wide v8, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 37
    .line 38
    sub-long/2addr v6, v8

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    iget-object v10, v5, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v10

    .line 46
    :try_start_0
    iget-wide v11, v5, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 47
    .line 48
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sub-long/2addr v8, v11

    .line 50
    iget-object v10, v5, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 51
    .line 52
    iget-boolean v10, v10, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 53
    .line 54
    if-eqz v10, :cond_1

    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_8

    .line 61
    .line 62
    const-wide/32 v6, 0x6c258c00

    .line 63
    .line 64
    .line 65
    cmp-long v6, v8, v6

    .line 66
    .line 67
    if-gez v6, :cond_7

    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_1
    const-wide/32 v8, 0xf731400

    .line 72
    .line 73
    .line 74
    cmp-long v8, v6, v8

    .line 75
    .line 76
    if-ltz v8, :cond_2

    .line 77
    .line 78
    const-string v6, "PackageInstaller"

    .line 79
    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v8, "Abandoning old session created at "

    .line 83
    .line 84
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-wide v8, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 88
    .line 89
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    if-eqz v8, :cond_8

    .line 106
    .line 107
    const-string v8, "com.sec.android.easyMover"

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    iget-object v9, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_8

    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    iget v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 126
    .line 127
    if-gt v9, v1, :cond_6

    .line 128
    .line 129
    iput v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 130
    .line 131
    :try_start_1
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 134
    .line 135
    .line 136
    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    const-string v10, "com.sec.android.easyMover"

    .line 138
    .line 139
    if-nez v9, :cond_3

    .line 140
    .line 141
    const/4 v11, 0x0

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const/16 v11, 0x80

    .line 144
    .line 145
    :try_start_2
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    :goto_1
    if-nez v11, :cond_4

    .line 150
    .line 151
    move v11, v3

    .line 152
    goto :goto_2

    .line 153
    :cond_4
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 154
    .line 155
    :goto_2
    iput v11, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 156
    .line 157
    if-lez v11, :cond_6

    .line 158
    .line 159
    invoke-virtual {v9, v10, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    if-eqz v9, :cond_5

    .line 164
    .line 165
    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 166
    .line 167
    const v10, 0x11e1a300

    .line 168
    .line 169
    .line 170
    if-ge v9, v10, :cond_6

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :catch_0
    move-exception v9

    .line 174
    goto :goto_4

    .line 175
    :cond_5
    :goto_3
    iput v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v11, "isValidSmartSwitchSession "

    .line 181
    .line 182
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    const-string v10, "PackageInstaller"

    .line 197
    .line 198
    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :cond_6
    :goto_5
    iget v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 202
    .line 203
    if-lez v9, :cond_7

    .line 204
    .line 205
    if-ne v9, v8, :cond_7

    .line 206
    .line 207
    const-wide/32 v8, 0x1499700

    .line 208
    .line 209
    .line 210
    cmp-long v6, v6, v8

    .line 211
    .line 212
    if-gez v6, :cond_7

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_7
    :goto_6
    const-string v6, "PackageInstaller"

    .line 216
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v8, "Remove old session: "

    .line 220
    .line 221
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget v8, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 225
    .line 226
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 237
    .line 238
    .line 239
    :cond_8
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :catchall_0
    move-exception p0

    .line 244
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    throw p0

    .line 246
    :cond_9
    return-void
.end method

.method public final getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    const-string v1, "getAllSessions"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v0, v7

    .line 16
    move v2, v6

    .line 17
    move v3, p1

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, v2

    .line 31
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v3, v4, :cond_3

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 46
    .line 47
    iget v5, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 48
    .line 49
    if-ne v5, p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    sget-boolean v5, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    :goto_1
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 69
    .line 70
    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 71
    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    :cond_1
    invoke-virtual {v4, v6, v2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance p1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-direct {p1, p0, v7, v6, v1}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 98
    .line 99
    .line 100
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 101
    .line 102
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    return-object p0

    .line 106
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0
.end method

.method public final getExistingDraftSessionIdInternal(ILandroid/content/pm/PackageInstaller$SessionParams;I)I
    .locals 4

    .line 1
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    if-eq p1, v2, :cond_5

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v3, 0x3e8

    .line 24
    .line 25
    invoke-interface {v1, v3, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    invoke-interface {v1, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 43
    .line 44
    if-lez p2, :cond_3

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-static {p0, v0, p1, p3}, Lcom/android/server/pm/PackageInstallerService;->isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 63
    .line 64
    return p0

    .line 65
    :cond_2
    return v2

    .line 66
    :cond_3
    const/4 p2, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-ge p2, v1, :cond_5

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-static {v1, v0, p1, p3}, Lcom/android/server/pm/PackageInstallerService;->isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    iget p0, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 92
    .line 93
    return p0

    .line 94
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    :goto_1
    return v2
.end method

.method public final getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v2, "getMySessions"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    move v3, v0

    .line 16
    move v4, p2

    .line 17
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 21
    .line 22
    invoke-virtual {v1, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    const/4 v2, 0x0

    .line 34
    move v3, v2

    .line 35
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ge v3, v4, :cond_1

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 50
    .line 51
    const/16 v5, 0x3e8

    .line 52
    .line 53
    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 68
    .line 69
    if-ne v6, p2, :cond_0

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_0

    .line 76
    .line 77
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 84
    .line 85
    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 86
    .line 87
    const/high16 v6, 0x20000000

    .line 88
    .line 89
    and-int/2addr v4, v6

    .line 90
    if-nez v4, :cond_0

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 103
    .line 104
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    return-object p0

    .line 108
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p0
.end method

.method public final getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

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

.method public final getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object v3, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 20
    .line 21
    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 35
    invoke-virtual {p1, v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object p1, v2

    .line 41
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v2, p1

    .line 56
    :goto_2
    return-object v2

    .line 57
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
.end method

.method public final getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ge v4, v5, :cond_1

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 30
    .line 31
    iget-object v6, v5, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 32
    .line 33
    iget-boolean v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 34
    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    invoke-virtual {v5, v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    invoke-direct {v3, p0, v2, v0, v4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 70
    .line 71
    .line 72
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 73
    .line 74
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public final installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .locals 6

    .line 1
    iget-object p6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, p6, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move v2, p5

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILandroid/content/IntentSender;)Landroid/util/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Landroid/content/IntentSender;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p2, p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final installPackageArchived(Landroid/content/pm/ArchivedPackageParcel;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v2, p2

    .line 3
    .line 4
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-object v7, p1

    .line 20
    iget-object v0, v7, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v3, "Requested archived install of package %s for user %s."

    .line 35
    .line 36
    invoke-static {v3, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v3, "PackageInstaller"

    .line 41
    .line 42
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const-string v9, "installPackageArchived"

    .line 60
    .line 61
    const/4 v12, 0x1

    .line 62
    const/4 v13, 0x1

    .line 63
    move v11, v4

    .line 64
    invoke-interface/range {v8 .. v13}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const-string v3, "android.permission.INSTALL_PACKAGES"

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    iget v0, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 78
    .line 79
    const/high16 v3, 0x8000000

    .line 80
    .line 81
    or-int/2addr v0, v3

    .line 82
    iput v0, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 83
    .line 84
    iget-object v0, v2, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 85
    .line 86
    if-nez v0, :cond_0

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    new-instance v8, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;

    .line 101
    .line 102
    move-object v0, v8

    .line 103
    move-object v1, p0

    .line 104
    move-object/from16 v2, p2

    .line 105
    .line 106
    move-object/from16 v3, p4

    .line 107
    .line 108
    move-object/from16 v6, p3

    .line 109
    .line 110
    move-object v7, p1

    .line 111
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;Landroid/content/IntentSender;Landroid/content/pm/ArchivedPackageParcel;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v8}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    const-string v1, "Incompatible session param: dataLoaderParams has to be null"

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 127
    .line 128
    const-string v1, "You need the com.android.permission.INSTALL_PACKAGES permission to request archived package install"

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0
.end method

.method public final onInstallerPackageDeleted(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_4

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    if-ne p1, v4, :cond_0

    .line 27
    .line 28
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, p1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ne v5, v3, :cond_3

    .line 40
    .line 41
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 59
    .line 60
    :goto_2
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-ne p1, v4, :cond_2

    .line 67
    .line 68
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ne v3, p1, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-ne v4, v3, :cond_3

    .line 80
    .line 81
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_5

    .line 93
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public final openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 3

    .line 1
    const-string v0, "Caller has no access to session "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerService;->checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 21
    .line 22
    .line 23
    monitor-exit v1

    .line 24
    return-object v2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final openSessionInternalQuick(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession;
    .locals 3

    .line 1
    const-string v0, "Caller has no access to session "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerService;->checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageInstallerSession;->openQuick(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v1

    .line 24
    return-object v2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final openSessionQuick(ILjava/lang/String;)Landroid/content/pm/IPackageInstallerSession;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternalQuick(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public final readSessionsLocked()V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PackageInstaller"

    .line 6
    .line 7
    const-string/jumbo v1, "readSessionsLocked()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v11}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v2, v0, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    invoke-interface {v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string/jumbo v3, "session"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 65
    .line 66
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 67
    .line 68
    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 69
    .line 70
    move-object v2, v11

    .line 71
    move-object v9, p0

    .line 72
    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;)Lcom/android/server/pm/PackageInstallerSession;

    .line 73
    .line 74
    .line 75
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 77
    .line 78
    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 79
    .line 80
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 84
    .line 85
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 86
    .line 87
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :catch_0
    move-exception v2

    .line 94
    goto :goto_2

    .line 95
    :catch_1
    move-exception v2

    .line 96
    const-string v3, "PackageInstaller"

    .line 97
    .line 98
    const-string v4, "Could not read session"

    .line 99
    .line 100
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_2
    :cond_2
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :goto_2
    :try_start_3
    const-string v3, "PackageInstaller"

    .line 109
    .line 110
    const-string v4, "Failed reading install sessions"

    .line 111
    .line 112
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :goto_4
    const/4 v1, 0x0

    .line 121
    :goto_5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-ge v1, v2, :cond_c

    .line 128
    .line 129
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 138
    .line 139
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter v4

    .line 142
    :try_start_4
    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 143
    .line 144
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    sub-int/2addr v5, v0

    .line 149
    :goto_6
    if-ltz v5, :cond_4

    .line 150
    .line 151
    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 162
    .line 163
    if-eqz v7, :cond_3

    .line 164
    .line 165
    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 166
    .line 167
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_7

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    goto/16 :goto_e

    .line 173
    .line 174
    :cond_3
    const-string v7, "PackageInstallerSession"

    .line 175
    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v9, "Child session not existed: "

    .line 182
    .line 183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 197
    .line 198
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 199
    .line 200
    .line 201
    :goto_7
    add-int/lit8 v5, v5, -0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_4
    iget-boolean v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 205
    .line 206
    if-eqz v5, :cond_b

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    .line 209
    .line 210
    .line 211
    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    if-eqz v5, :cond_5

    .line 213
    .line 214
    goto :goto_c

    .line 215
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    .line 216
    .line 217
    .line 218
    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 219
    .line 220
    iget-boolean v6, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 221
    .line 222
    if-nez v6, :cond_9

    .line 223
    .line 224
    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 225
    .line 226
    if-eqz v5, :cond_9

    .line 227
    .line 228
    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 229
    .line 230
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-nez v5, :cond_6

    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_7

    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :catch_3
    move-exception v2

    .line 255
    goto :goto_a

    .line 256
    :cond_7
    move-object v3, v2

    .line 257
    :goto_8
    if-eqz v3, :cond_a

    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-nez v3, :cond_a

    .line 264
    .line 265
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_8

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    .line 272
    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()V
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 276
    .line 277
    .line 278
    goto :goto_b

    .line 279
    :cond_9
    :goto_9
    :try_start_6
    monitor-exit v4

    .line 280
    goto :goto_d

    .line 281
    :goto_a
    const-string v3, "PackageInstallerSession"

    .line 282
    .line 283
    const-string v5, "Package not valid"

    .line 284
    .line 285
    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .line 287
    .line 288
    :cond_a
    :goto_b
    monitor-exit v4

    .line 289
    goto :goto_d

    .line 290
    :cond_b
    :goto_c
    monitor-exit v4

    .line 291
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 292
    .line 293
    goto/16 :goto_5

    .line 294
    .line 295
    :goto_e
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 296
    throw p0

    .line 297
    :cond_c
    return-void
.end method

.method public final reconcileStagesLocked(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Lcom/android/server/pm/PackageInstallerService$1;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p1}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    array-length v2, p1

    .line 41
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ge p1, v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string/jumbo v2, "registerCallback"

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    move v4, p2

    .line 17
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda5;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 26
    .line 27
    new-instance p2, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-direct {p2, v1, v0}, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;-><init>(ILjava/util/function/IntPredicate;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 32
    .line 33
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public final removeStagingDirs(Landroid/util/ArraySet;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/io/File;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Deleting orphan stage "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "PackageInstaller"

    .line 32
    .line 33
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-ne v1, v5, :cond_2

    .line 16
    .line 17
    cmp-long v6, p3, v3

    .line 18
    .line 19
    if-lez v6, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "Insufficient storage error set, but requiredStorageBytes unspecified."

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_2
    :goto_0
    if-eq v1, v5, :cond_4

    .line 31
    .line 32
    cmp-long v3, p3, v3

    .line 33
    .line 34
    if-gtz v3, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "requiredStorageBytes set, but error is %s."

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const/4 v2, 0x3

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const/4 v2, 0x4

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const/4 v2, 0x5

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    const/16 v2, 0x64

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    invoke-static/range {v6 .. v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 115
    .line 116
    monitor-enter v6

    .line 117
    :try_start_0
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 118
    .line 119
    move v4, p1

    .line 120
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    iget v5, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 129
    .line 130
    if-ne v5, v2, :cond_6

    .line 131
    .line 132
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 133
    .line 134
    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v5, :cond_6

    .line 137
    .line 138
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    move v1, p2

    .line 145
    move v2, p1

    .line 146
    move-wide/from16 v3, p3

    .line 147
    .line 148
    move-object/from16 v5, p5

    .line 149
    .line 150
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerSession;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;)V

    .line 151
    .line 152
    .line 153
    monitor-exit v6

    .line 154
    return-void

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    goto :goto_2

    .line 157
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    const-string v1, "The caller UID %s does not have access to the session with unarchiveId %d."

    .line 160
    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_6
    new-instance v0, Landroid/os/ParcelableException;

    .line 182
    .line 183
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 184
    .line 185
    const-string v3, "No valid session with unarchival ID %s found for user %s."

    .line 186
    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    throw v0

    .line 212
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 213
    .line 214
    const-string v2, "Invalid status code passed "

    .line 215
    .line 216
    invoke-static {p2, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0
.end method

.method public final requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final requestCopy(Ljava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    const-string v0, "Invalid name: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "android.permission.INSTALL_PACKAGES"

    .line 21
    .line 22
    invoke-interface {v2, v3, v1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mCreateLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/PackageInstallerService;->prepareCustomCopyDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    new-instance v0, Ljava/io/File;

    .line 43
    .line 44
    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    .line 46
    .line 47
    :try_start_3
    new-instance p1, Landroid/os/ParcelFileDescriptor;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    .line 54
    .line 55
    sget v3, Landroid/system/OsConstants;->O_WRONLY:I

    .line 56
    .line 57
    or-int/2addr v2, v3

    .line 58
    const/16 v3, 0x1b6

    .line 59
    .line 60
    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {p1, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .line 76
    cmp-long v0, p2, v0

    .line 77
    .line 78
    if-lez v0, :cond_1

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    const-class v0, Landroid/os/storage/StorageManager;

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p0

    .line 100
    goto :goto_3

    .line 101
    :catch_1
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :cond_1
    :goto_1
    return-object p1

    .line 104
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    new-instance p1, Ljava/io/IOException;

    .line 108
    .line 109
    const-string p2, "Failed to open tempStageDir"

    .line 110
    .line 111
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 136
    :goto_3
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    throw p0

    .line 141
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 142
    .line 143
    const-string p1, "Caller not authorised to use this method !!"

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0
.end method

.method public final requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final restoreAndApplyStagedSessionIfNeeded()V
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/16 v5, -0x80

    .line 18
    .line 19
    if-ge v3, v4, :cond_3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 28
    .line 29
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 30
    .line 31
    iget-boolean v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 32
    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-nez v6, :cond_1

    .line 63
    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v7, "An orphan staged session "

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 75
    .line 76
    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v7, " is found, parent "

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v7, " is missing"

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto/16 :goto_18

    .line 110
    .line 111
    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_2

    .line 118
    .line 119
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 120
    .line 121
    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_2

    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-nez v5, :cond_2

    .line 134
    .line 135
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    new-instance v3, Landroid/util/TimingsTraceLog;

    .line 155
    .line 156
    const-string v4, "StagingManagerTiming"

    .line 157
    .line 158
    const-wide/32 v6, 0x40000

    .line 159
    .line 160
    .line 161
    invoke-direct {v3, v4, v6, v7}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v4, "restoreSessions"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v4}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string/jumbo v4, "sys.boot_completed"

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_4

    .line 178
    .line 179
    goto/16 :goto_16

    .line 180
    .line 181
    :cond_4
    move v4, v2

    .line 182
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    const/4 v7, 0x1

    .line 187
    if-ge v4, v6, :cond_5

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    check-cast v6, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 194
    .line 195
    move-object v8, v6

    .line 196
    check-cast v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 197
    .line 198
    iget-object v9, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 199
    .line 200
    invoke-virtual {v9}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    xor-int/2addr v9, v7

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    iget-object v11, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 211
    .line 212
    iget v11, v11, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 213
    .line 214
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v11, " is a child session"

    .line 218
    .line 219
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iget-object v9, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 230
    .line 231
    iget-object v9, v9, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 232
    .line 233
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v11, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 243
    .line 244
    iget v11, v11, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 245
    .line 246
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v11, " is not committed"

    .line 250
    .line 251
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    xor-int/2addr v7, v9

    .line 266
    new-instance v9, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-object v8, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 272
    .line 273
    iget v8, v8, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 274
    .line 275
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v8, " is in terminal state"

    .line 279
    .line 280
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v6}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 291
    .line 292
    .line 293
    add-int/lit8 v4, v4, 0x1

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_5
    if-eqz p0, :cond_6

    .line 297
    .line 298
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result p0

    .line 302
    if-ge v2, p0, :cond_1e

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    check-cast p0, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 309
    .line 310
    const-string v1, "Build fingerprint has changed"

    .line 311
    .line 312
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 313
    .line 314
    invoke-virtual {p0, v5, v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v2, v2, 0x1

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    .line 333
    .line 334
    .line 335
    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 336
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    if-le v6, v7, :cond_8

    .line 341
    .line 342
    if-eqz p0, :cond_7

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 346
    .line 347
    const-string v0, "Detected multiple staged sessions on a device without fs-checkpoint support"

    .line 348
    .line 349
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw p0

    .line 353
    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    move v8, v2

    .line 358
    :goto_5
    if-ge v8, v6, :cond_b

    .line 359
    .line 360
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    check-cast v9, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 365
    .line 366
    move-object v10, v9

    .line 367
    check-cast v10, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 368
    .line 369
    iget-object v11, v10, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 370
    .line 371
    invoke-virtual {v11}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    if-eqz v11, :cond_9

    .line 376
    .line 377
    iget-object v10, v10, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 378
    .line 379
    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 380
    .line 381
    .line 382
    add-int/lit8 v10, v6, -0x1

    .line 383
    .line 384
    invoke-virtual {v0, v10, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    check-cast v9, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 389
    .line 390
    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    :goto_6
    add-int/lit8 v6, v6, -0x1

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_9
    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    .line 397
    .line 398
    .line 399
    move-result v11

    .line 400
    if-nez v11, :cond_a

    .line 401
    .line 402
    new-instance v11, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v12, "Restart verification for session="

    .line 405
    .line 406
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget-object v10, v10, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 410
    .line 411
    iget v10, v10, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 412
    .line 413
    const-string v12, "StagingManager"

    .line 414
    .line 415
    invoke-static {v11, v10, v12}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v10, v1, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    .line 419
    .line 420
    new-instance v11, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;

    .line 421
    .line 422
    const/4 v12, 0x1

    .line 423
    invoke-direct {v11, v12, v9}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v10, v11}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 427
    .line 428
    .line 429
    add-int/lit8 v10, v6, -0x1

    .line 430
    .line 431
    invoke-virtual {v0, v10, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    check-cast v9, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 436
    .line 437
    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 445
    .line 446
    .line 447
    move-result v8

    .line 448
    invoke-virtual {v0, v6, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 453
    .line 454
    .line 455
    iget-object v6, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 456
    .line 457
    check-cast v6, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 458
    .line 459
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-interface {v6}, Landroid/apex/IApexService;->getSessions()[Landroid/apex/ApexSessionInfo;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    new-instance v8, Landroid/util/SparseArray;

    .line 471
    .line 472
    array-length v9, v6

    .line 473
    invoke-direct {v8, v9}, Landroid/util/SparseArray;-><init>(I)V

    .line 474
    .line 475
    .line 476
    move v9, v2

    .line 477
    :goto_7
    array-length v10, v6

    .line 478
    if-ge v9, v10, :cond_c

    .line 479
    .line 480
    aget-object v10, v6, v9

    .line 481
    .line 482
    iget v11, v10, Landroid/apex/ApexSessionInfo;->sessionId:I

    .line 483
    .line 484
    invoke-virtual {v8, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 485
    .line 486
    .line 487
    add-int/lit8 v9, v9, 0x1

    .line 488
    .line 489
    goto :goto_7

    .line 490
    :catch_0
    move-exception p0

    .line 491
    goto/16 :goto_17

    .line 492
    .line 493
    :cond_c
    move v6, v2

    .line 494
    move v9, v6

    .line 495
    move v10, v9

    .line 496
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 497
    .line 498
    .line 499
    move-result v11

    .line 500
    if-ge v6, v11, :cond_19

    .line 501
    .line 502
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    check-cast v11, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 507
    .line 508
    check-cast v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 509
    .line 510
    invoke-virtual {v11}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 511
    .line 512
    .line 513
    move-result v12

    .line 514
    if-nez v12, :cond_d

    .line 515
    .line 516
    goto/16 :goto_11

    .line 517
    .line 518
    :cond_d
    iget-object v12, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 519
    .line 520
    iget v12, v12, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 521
    .line 522
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v12

    .line 526
    check-cast v12, Landroid/apex/ApexSessionInfo;

    .line 527
    .line 528
    if-eqz v12, :cond_18

    .line 529
    .line 530
    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 531
    .line 532
    if-eqz v13, :cond_e

    .line 533
    .line 534
    goto/16 :goto_10

    .line 535
    .line 536
    :cond_e
    iget-boolean v14, v12, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 537
    .line 538
    if-nez v14, :cond_13

    .line 539
    .line 540
    if-nez v13, :cond_13

    .line 541
    .line 542
    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 543
    .line 544
    if-nez v13, :cond_13

    .line 545
    .line 546
    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    .line 547
    .line 548
    if-nez v13, :cond_13

    .line 549
    .line 550
    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    .line 551
    .line 552
    if-eqz v13, :cond_f

    .line 553
    .line 554
    goto :goto_b

    .line 555
    :cond_f
    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isActivated:Z

    .line 556
    .line 557
    if-nez v13, :cond_12

    .line 558
    .line 559
    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 560
    .line 561
    if-eqz v13, :cond_10

    .line 562
    .line 563
    goto :goto_a

    .line 564
    :cond_10
    iget-boolean v10, v12, Landroid/apex/ApexSessionInfo;->isStaged:Z

    .line 565
    .line 566
    if-eqz v10, :cond_11

    .line 567
    .line 568
    new-instance v10, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    const-string v12, "Staged session "

    .line 571
    .line 572
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget-object v12, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 576
    .line 577
    iget v12, v12, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 578
    .line 579
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v12, " at boot didn\'t activate nor fail. Marking it as failed anyway."

    .line 583
    .line 584
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v10

    .line 591
    invoke-virtual {v11, v5, v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :goto_9
    move v10, v7

    .line 595
    goto/16 :goto_11

    .line 596
    .line 597
    :cond_11
    const-string v10, "StagingManager"

    .line 598
    .line 599
    new-instance v12, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    const-string v13, "Apex session "

    .line 602
    .line 603
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object v13, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 607
    .line 608
    iget v13, v13, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 609
    .line 610
    const-string v14, " is in impossible state"

    .line 611
    .line 612
    invoke-static {v12, v13, v14, v10}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    const-string v10, "Impossible state"

    .line 616
    .line 617
    invoke-virtual {v11, v5, v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 618
    .line 619
    .line 620
    goto :goto_9

    .line 621
    :cond_12
    :goto_a
    move v9, v7

    .line 622
    goto :goto_11

    .line 623
    :cond_13
    :goto_b
    iget-object v10, v12, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    .line 624
    .line 625
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    if-nez v10, :cond_15

    .line 630
    .line 631
    iget-object v10, v12, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    .line 632
    .line 633
    iget-object v13, v1, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 634
    .line 635
    monitor-enter v13

    .line 636
    :try_start_3
    iput-object v10, v1, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 637
    .line 638
    iget-object v10, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 639
    .line 640
    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v10

    .line 644
    if-eqz v10, :cond_14

    .line 645
    .line 646
    iget-object v10, v1, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 647
    .line 648
    iget-object v14, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 649
    .line 650
    invoke-virtual {v14}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v14

    .line 654
    check-cast v10, Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    goto :goto_c

    .line 660
    :catchall_1
    move-exception p0

    .line 661
    goto :goto_d

    .line 662
    :cond_14
    :goto_c
    monitor-exit v13

    .line 663
    goto :goto_e

    .line 664
    :goto_d
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 665
    throw p0

    .line 666
    :cond_15
    :goto_e
    const-string v10, "APEX activation failed."

    .line 667
    .line 668
    invoke-virtual {v1}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v13

    .line 672
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 673
    .line 674
    .line 675
    move-result v14

    .line 676
    if-nez v14, :cond_16

    .line 677
    .line 678
    const-string v10, "APEX activation failed. Reason: "

    .line 679
    .line 680
    invoke-static {v10, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v10

    .line 684
    goto :goto_f

    .line 685
    :cond_16
    iget-object v13, v12, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    .line 686
    .line 687
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 688
    .line 689
    .line 690
    move-result v13

    .line 691
    if-nez v13, :cond_17

    .line 692
    .line 693
    new-instance v10, Ljava/lang/StringBuilder;

    .line 694
    .line 695
    const-string v13, "APEX activation failed. Error: "

    .line 696
    .line 697
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    iget-object v12, v12, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    .line 701
    .line 702
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v10

    .line 709
    :cond_17
    :goto_f
    const-string v12, "StagingManager"

    .line 710
    .line 711
    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .line 713
    .line 714
    invoke-virtual {v11, v5, v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 715
    .line 716
    .line 717
    goto :goto_9

    .line 718
    :cond_18
    :goto_10
    const-string v10, "apexd did not know anything about a staged session supposed to be activated"

    .line 719
    .line 720
    invoke-virtual {v11, v5, v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_9

    .line 724
    .line 725
    :goto_11
    add-int/lit8 v6, v6, 0x1

    .line 726
    .line 727
    goto/16 :goto_8

    .line 728
    .line 729
    :cond_19
    if-eqz v9, :cond_1a

    .line 730
    .line 731
    if-eqz v10, :cond_1a

    .line 732
    .line 733
    const-string v0, "Found both applied and failed apex sessions"

    .line 734
    .line 735
    invoke-virtual {v1, v0, p0, v4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    .line 736
    .line 737
    .line 738
    goto :goto_16

    .line 739
    :cond_1a
    if-eqz v10, :cond_1c

    .line 740
    .line 741
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 742
    .line 743
    .line 744
    move-result p0

    .line 745
    if-ge v2, p0, :cond_1e

    .line 746
    .line 747
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object p0

    .line 751
    check-cast p0, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 752
    .line 753
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 754
    .line 755
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 756
    .line 757
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 758
    .line 759
    monitor-enter v3

    .line 760
    :try_start_4
    iget-boolean v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 761
    .line 762
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 763
    if-eqz v1, :cond_1b

    .line 764
    .line 765
    goto :goto_13

    .line 766
    :cond_1b
    const-string v1, "Another apex session failed"

    .line 767
    .line 768
    invoke-virtual {p0, v5, v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 769
    .line 770
    .line 771
    :goto_13
    add-int/lit8 v2, v2, 0x1

    .line 772
    .line 773
    goto :goto_12

    .line 774
    :catchall_2
    move-exception p0

    .line 775
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 776
    throw p0

    .line 777
    :cond_1c
    :goto_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 778
    .line 779
    .line 780
    move-result v5

    .line 781
    if-ge v2, v5, :cond_1d

    .line 782
    .line 783
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 788
    .line 789
    :try_start_6
    invoke-virtual {v1, v5, p0, v4}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 790
    .line 791
    .line 792
    goto :goto_15

    .line 793
    :catch_1
    move-exception v6

    .line 794
    const-string v7, "StagingManager"

    .line 795
    .line 796
    const-string v8, "Staged install failed due to unhandled exception"

    .line 797
    .line 798
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    .line 800
    .line 801
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    .line 802
    .line 803
    new-instance v8, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    const-string v9, "Staged install failed due to unhandled exception: "

    .line 806
    .line 807
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v6

    .line 817
    const/16 v8, -0x6e

    .line 818
    .line 819
    invoke-direct {v7, v8, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1, v5, v7, p0, v4}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    .line 823
    .line 824
    .line 825
    goto :goto_15

    .line 826
    :catch_2
    move-exception v6

    .line 827
    invoke-virtual {v1, v5, v6, p0, v4}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    .line 828
    .line 829
    .line 830
    :goto_15
    add-int/lit8 v2, v2, 0x1

    .line 831
    .line 832
    goto :goto_14

    .line 833
    :cond_1d
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 834
    .line 835
    .line 836
    :cond_1e
    :goto_16
    return-void

    .line 837
    :goto_17
    const-string v0, "ApexManager"

    .line 838
    .line 839
    const-string v1, "Unable to contact apexservice"

    .line 840
    .line 841
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    .line 843
    .line 844
    new-instance v0, Ljava/lang/RuntimeException;

    .line 845
    .line 846
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 847
    .line 848
    .line 849
    throw v0

    .line 850
    :catch_3
    move-exception p0

    .line 851
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 852
    .line 853
    const-string v1, "Failed to get checkpoint status"

    .line 854
    .line 855
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 856
    .line 857
    .line 858
    throw v0

    .line 859
    :goto_18
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 860
    throw p0
.end method

.method public final setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

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
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mAllowUnlimitedSilentUpdatesInstaller:Ljava/lang/String;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 33
    .line 34
    const-string p1, "Caller not allowed to unlimite silent updates"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final setPermissionsResult(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->setPermissionsResult_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final setSilentUpdatesThrottleTime(J)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long v1, p1, v1

    .line 19
    .line 20
    if-ltz v1, :cond_0

    .line 21
    .line 22
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    sget-wide p1, Lcom/android/server/pm/SilentUpdatePolicy;->SILENT_UPDATE_THROTTLE_TIME_MS:J

    .line 32
    .line 33
    :goto_0
    iput-wide p1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 40
    .line 41
    const-string p1, "Caller not allowed to set silent updates throttle time"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final setUnknownSourceConfirmResult(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.INSTALL_PACKAGES"

    .line 4
    .line 5
    const-string v2, "PackageInstaller"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setUnknownSourceConfirmResult(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerService;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    return-void
.end method

.method public final uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    .line 4
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    .line 5
    const-string/jumbo v3, "uninstall"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v14

    move/from16 v4, p6

    move/from16 v5, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 6
    invoke-static/range {p6 .. p6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v12, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8
    :cond_0
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 9
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2, v1, v12}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v11, v12, v14, v2}, Lcom/android/server/pm/PackageInstallerSession;->isEmergencyInstallerEnabled(IILcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    move v15, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 13
    :goto_1
    new-instance v9, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    move-object v2, v9

    move-object/from16 v4, p4

    move v6, v15

    move/from16 v7, p5

    move-object/from16 p4, v9

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZILcom/android/server/pm/PackageArchiver;I)V

    .line 15
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v2, v3, v13, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_4

    .line 16
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual/range {p4 .. p4}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    .line 17
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p5

    move/from16 v4, p3

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    goto/16 :goto_2

    :cond_4
    if-eqz v15, :cond_5

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 20
    :try_start_0
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual/range {p4 .. p4}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v4

    .line 21
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p3

    .line 22
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, 0x71

    .line 24
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw v0

    :cond_5
    const-wide/16 v2, 0x0

    .line 29
    invoke-interface {v14, v1, v2, v3, v11}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 30
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v1, v2, :cond_6

    .line 31
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v0, v1, v13, v12, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 32
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v1, "package"

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    new-instance v1, Landroid/content/pm/PackageManager$UninstallCompleteCallback;

    .line 35
    invoke-virtual/range {p4 .. p4}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$UninstallCompleteCallback;-><init>(Landroid/os/IBinder;)V

    .line 36
    const-string v2, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    and-int/lit8 v1, v10, 0x10

    if-eqz v1, :cond_7

    .line 37
    const-string v1, "android.content.pm.extra.DELETE_FLAGS"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    move-object/from16 v1, p4

    .line 38
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public final uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.DELETE_PACKAGES"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "uninstall"

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x1

    .line 24
    move v2, v6

    .line 25
    move v3, p4

    .line 26
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 27
    .line 28
    .line 29
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 36
    .line 37
    invoke-virtual {v0, v6, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance p2, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {p2, p4, v0, p3, v1}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "Caller has no access to session "

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 5
    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 14
    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v1, "activity"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/app/ActivityManager;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    mul-int/lit8 v4, p1, 0x2

    .line 44
    .line 45
    if-gt v1, v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-le v1, v4, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 57
    invoke-static {p2, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :cond_1
    iget-object p1, v3, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 62
    .line 63
    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 64
    .line 65
    const-wide/16 v4, -0x1

    .line 66
    .line 67
    iput-wide v4, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 74
    .line 75
    iget p2, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 76
    .line 77
    iget v1, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 78
    .line 79
    sget v3, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 80
    .line 81
    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    .line 91
    .line 92
    .line 93
    monitor-exit v2

    .line 94
    return-void

    .line 95
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0
.end method

.method public final updateSessionAppLabel(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Caller has no access to session "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object p1, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 33
    .line 34
    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 41
    .line 42
    iget p2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 43
    .line 44
    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 45
    .line 46
    sget v2, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    invoke-virtual {p1, v2, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final waitForInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    .locals 6

    .line 1
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p5, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    const-wide/32 v0, 0x240c8400

    .line 11
    .line 12
    .line 13
    cmp-long v0, p5, v0

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    move-object v2, p2

    .line 20
    move-object v3, p3

    .line 21
    move-wide v4, p5

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService;->checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p5, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    invoke-direct {p5, p0, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerService;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p5}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "Invalid timeoutMillis="

    .line 38
    .line 39
    invoke-static {p5, p6, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method
