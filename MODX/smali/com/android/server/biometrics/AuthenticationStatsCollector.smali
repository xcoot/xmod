.class public final Lcom/android/server/biometrics/AuthenticationStatsCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MAXIMUM_ENROLLMENT_NOTIFICATIONS:I = 0x1


# instance fields
.field public final mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

.field public final mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

.field public final mBroadcastReceiver:Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

.field public final mContext:Landroid/content/Context;

.field public final mEnabled:Z

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mModality:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mThreshold:F

.field public final mUserAuthenticationStatsMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/biometrics/sensors/BiometricNotificationImpl;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    .line 9
    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    const v2, 0x1110062

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 21
    move-result v1

    .line 22
    iput-boolean v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v1

    .line 28
    const v2, 0x1130001

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    .line 38
    new-instance v2, Ljava/util/HashMap;

    .line 40
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 45
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    .line 47
    iput-object p3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    const-class p2, Landroid/hardware/face/FaceManager;

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/hardware/face/FaceManager;

    .line 63
    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 65
    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 73
    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 75
    new-instance p2, Lcom/android/server/biometrics/AuthenticationStatsPersister;

    .line 77
    invoke-direct {p2, p1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    .line 85
    iget-object p0, p2, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 90
    move-result-object p0

    .line 91
    const-string/jumbo p2, "frr_threshold"

    .line 94
    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 97
    move-result-object p0

    .line 98
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    new-instance p0, Landroid/content/IntentFilter;

    .line 103
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    const-string p2, "android.intent.action.USER_REMOVED"

    .line 108
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method


# virtual methods
.method public getAuthenticationStatsForUser(I)Lcom/android/server/biometrics/AuthenticationStats;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 16
    return-object p0
.end method

.method public final initializeUserAuthenticationStatsMap()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v0, v0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 13
    const-string/jumbo v2, "frr_stats"

    .line 16
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 40
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 42
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget v9, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    .line 47
    const/4 v4, 0x4

    .line 48
    const-string/jumbo v5, "enrollment_notifications"

    .line 51
    const/16 v6, -0x2710

    .line 53
    const-string/jumbo v7, "user_id"

    .line 56
    const/4 v8, 0x0

    .line 57
    if-ne v9, v4, :cond_1

    .line 59
    :try_start_1
    new-instance v10, Lcom/android/server/biometrics/AuthenticationStats;

    .line 61
    invoke-static {v3, v7, v6}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 64
    move-result v6

    .line 65
    const-string/jumbo v4, "face_attempts"

    .line 68
    invoke-static {v3, v4, v8}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 71
    move-result v7

    .line 72
    const-string/jumbo v4, "face_rejections"

    .line 75
    invoke-static {v3, v4, v8}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 78
    move-result v11

    .line 79
    invoke-static {v3, v5, v8}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 82
    move-result v8

    .line 83
    move-object v4, v10

    .line 84
    move v5, v6

    .line 85
    move v6, v7

    .line 86
    move v7, v11

    .line 87
    invoke-direct/range {v4 .. v9}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(IIIII)V

    .line 90
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/4 v4, 0x1

    .line 95
    if-ne v9, v4, :cond_0

    .line 97
    new-instance v10, Lcom/android/server/biometrics/AuthenticationStats;

    .line 99
    invoke-static {v3, v7, v6}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 102
    move-result v6

    .line 103
    const-string/jumbo v4, "fingerprint_attempts"

    .line 106
    invoke-static {v3, v4, v8}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 109
    move-result v7

    .line 110
    const-string/jumbo v4, "fingerprint_rejections"

    .line 113
    invoke-static {v3, v4, v8}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 116
    move-result v11

    .line 117
    invoke-static {v3, v5, v8}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 120
    move-result v8

    .line 121
    move-object v4, v10

    .line 122
    move v5, v6

    .line 123
    move v6, v7

    .line 124
    move v7, v11

    .line 125
    invoke-direct/range {v4 .. v9}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(IIIII)V

    .line 128
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    goto :goto_0

    .line 132
    :catch_0
    const-string v3, "Unable to resolve authentication stats JSON: "

    .line 134
    const-string v4, "AuthenticationStatsPersister"

    .line 136
    invoke-static {v3, v2, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v0

    .line 144
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_3

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 156
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 158
    iget v3, v1, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v3

    .line 164
    check-cast v2, Ljava/util/HashMap;

    .line 166
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    goto :goto_1

    .line 170
    :cond_3
    return-void
.end method

.method public setAuthenticationStatsForUser(ILcom/android/server/biometrics/AuthenticationStats;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method
