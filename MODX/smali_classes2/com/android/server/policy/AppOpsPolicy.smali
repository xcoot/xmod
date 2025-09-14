.class public final Lcom/android/server/policy/AppOpsPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z


# instance fields
.field public final mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mIsHotwordDetectionServiceRequired:Z

.field public final mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPerUidLocationTags:Landroid/util/SparseArray;

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public final mToken:Landroid/os/IBinder;

.field public final mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/policy/AppOpsPolicy;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v0, "ro.hotword.detection_service_required"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/android/server/policy/AppOpsPolicy;->SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

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
    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Binder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    new-instance v1, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-class v1, Landroid/app/role/RoleManager;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/app/role/RoleManager;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    .line 48
    .line 49
    const-class v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 56
    .line 57
    iput-object v2, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lcom/android/server/policy/AppOpsPolicy;->isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iput-boolean v2, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    .line 68
    .line 69
    const-class v2, Landroid/location/LocationManagerInternal;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/location/LocationManagerInternal;

    .line 76
    .line 77
    new-instance v3, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v3, p0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/location/LocationManagerInternal;->setLocationPackageTagsListener(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;)V

    .line 83
    .line 84
    .line 85
    new-instance v7, Landroid/content/IntentFilter;

    .line 86
    .line 87
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 91
    .line 92
    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 96
    .line 97
    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v2, "package"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v5, Lcom/android/server/policy/AppOpsPolicy$1;

    .line 107
    .line 108
    invoke-direct {v5, p0}, Lcom/android/server/policy/AppOpsPolicy$1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v9, 0x0

    .line 115
    move-object v4, p1

    .line 116
    move-object v6, v2

    .line 117
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v4, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;

    .line 125
    .line 126
    invoke-direct {v4, p0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v3, v4, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string v1, "android.hardware.telephony"

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_0

    .line 146
    .line 147
    const-string v1, "android.hardware.microphone"

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_0

    .line 154
    .line 155
    const-string v1, "android.software.telecom"

    .line 156
    .line 157
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    if-nez p0, :cond_0

    .line 162
    .line 163
    const-class p0, Landroid/app/AppOpsManager;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, Landroid/app/AppOpsManager;

    .line 170
    .line 171
    const/4 v5, 0x0

    .line 172
    const/4 v6, -0x1

    .line 173
    const/16 v2, 0x64

    .line 174
    .line 175
    const/4 v3, 0x1

    .line 176
    move-object v1, p0

    .line 177
    move-object v4, v0

    .line 178
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 179
    .line 180
    .line 181
    const/16 v2, 0x65

    .line 182
    .line 183
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 184
    .line 185
    .line 186
    :cond_0
    return-void
.end method

.method public static isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z
    .locals 1

    .line 1
    const-string v0, "android.hardware.type.automotive"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.software.leanback"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-boolean p0, Lcom/android/server/policy/AppOpsPolicy;->SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public static writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    .line 24
    const-string v2, "    #"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v0, 0x1

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 32
    .line 33
    .line 34
    const-string v0, ": "

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "="

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/os/PackageTagsList;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 64
    .line 65
    .line 66
    move v0, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public final checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p5, p0, p1, p2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    move-object v0, p7

    .line 22
    move-object v3, p3

    .line 23
    move-object v4, p4

    .line 24
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final dumpTags(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "  AppOps policy location tags:"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "  AppOps policy activity recognition tags:"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    move-object v1, p7

    .line 22
    move-object v2, p1

    .line 23
    move-object v5, p4

    .line 24
    move-object v6, p5

    .line 25
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p5, p1, p0, p3, p2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final initializeActivityRecognizersTags()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    .line 2
    .line 3
    const-string v1, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    :cond_1
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/android/internal/util/function/OctFunction;)Landroid/app/SyncNotedAppOp;
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    move-object/from16 v1, p9

    .line 30
    .line 31
    move-object v4, p3

    .line 32
    move-object v5, p4

    .line 33
    move-object/from16 v8, p7

    .line 34
    .line 35
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/util/function/OctFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/app/SyncNotedAppOp;

    .line 40
    .line 41
    return-object v0
.end method

.method public final noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    move-object v0, p7

    .line 34
    move-object v2, p2

    .line 35
    move-object v4, p4

    .line 36
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/app/SyncNotedAppOp;

    .line 41
    .line 42
    return-object p0
.end method

.method public final resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/16 v0, 0x66

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    if-ne p1, v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne p2, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move p1, v1

    .line 28
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    const/16 v0, 0x1a

    .line 35
    .line 36
    if-eq p1, v1, :cond_3

    .line 37
    .line 38
    if-eq p1, v0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_6

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ne p2, v2, :cond_6

    .line 54
    .line 55
    if-eq p1, v0, :cond_5

    .line 56
    .line 57
    if-eq p1, v1, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    const/16 p1, 0x87

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    const/16 p1, 0x86

    .line 64
    .line 65
    :cond_6
    :goto_1
    if-nez p4, :cond_7

    .line 66
    .line 67
    return p1

    .line 68
    :cond_7
    if-eqz p1, :cond_9

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    if-eq p1, v0, :cond_8

    .line 72
    .line 73
    move v0, p1

    .line 74
    goto :goto_2

    .line 75
    :cond_8
    const/16 v0, 0x6c

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_9
    const/16 v0, 0x6d

    .line 79
    .line 80
    :goto_2
    if-eq v0, p1, :cond_a

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    .line 84
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Landroid/os/PackageTagsList;

    .line 97
    .line 98
    if-eqz p0, :cond_c

    .line 99
    .line 100
    invoke-virtual {p0, p3, p4}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_c

    .line 105
    .line 106
    return v0

    .line 107
    :cond_a
    const/16 v0, 0x4f

    .line 108
    .line 109
    if-ne p1, v0, :cond_b

    .line 110
    .line 111
    const/16 v0, 0x71

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_b
    move v0, p1

    .line 115
    :goto_3
    if-eq v0, p1, :cond_c

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Landroid/os/PackageTagsList;

    .line 132
    .line 133
    if-eqz p0, :cond_c

    .line 134
    .line 135
    invoke-virtual {p0, p3, p4}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_c

    .line 140
    .line 141
    return v0

    .line 142
    :cond_c
    return p1
.end method

.method public final resolveUid(II)I
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x1b

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x66

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x1a

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-ne p2, p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    :cond_1
    return p2
.end method

.method public final startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    move/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    invoke-virtual {p0, p2, v2, v4, v5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0, p2, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    move-object/from16 v0, p13

    .line 50
    .line 51
    move-object v1, p1

    .line 52
    move-object v2, v3

    .line 53
    move-object v3, v6

    .line 54
    move-object v6, v7

    .line 55
    move-object v7, v8

    .line 56
    move-object v8, v9

    .line 57
    move-object/from16 v9, p9

    .line 58
    .line 59
    invoke-interface/range {v0 .. v12}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/app/SyncNotedAppOp;

    .line 64
    .line 65
    return-object v0
.end method

.method public final startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .locals 13

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    move-object v3, p0

    .line 14
    move v4, p2

    .line 15
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    move-object/from16 v1, p12

    .line 52
    .line 53
    move-object v2, p1

    .line 54
    move-object/from16 v4, p3

    .line 55
    .line 56
    move-object/from16 v7, p6

    .line 57
    .line 58
    invoke-interface/range {v1 .. v12}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/app/SyncNotedAppOp;

    .line 63
    .line 64
    return-object v0
.end method

.method public final updateActivityRecognizerTags(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "android.intent.action.ACTIVITY_RECOGNIZER"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0xc8084

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string v1, "android:activity_recognition_allow_listed_tags"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    new-instance v1, Landroid/os/PackageTagsList$Builder;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-direct {v1, v2}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 52
    .line 53
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, ";"

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v2, v0}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v1

    .line 76
    :try_start_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 77
    .line 78
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    .line 80
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 81
    .line 82
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    monitor-exit v1

    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0

    .line 100
    :cond_2
    :goto_0
    return-void

    .line 101
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    .line 102
    .line 103
    const-string p1, "Service recognizer doesn\'t handle android.intent.action.ACTIVITY_RECOGNIZER, ignoring!"

    .line 104
    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return-void
.end method
