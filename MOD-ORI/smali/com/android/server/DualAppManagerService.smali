.class public final Lcom/android/server/DualAppManagerService;
.super Lcom/samsung/android/app/ISemDualAppManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

.field public static final DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

.field public static inOpsCallback:I

.field public static isNotNullInputContextNotified:Z

.field public static isNullInputContextNotified:Z

.field public static lastResumedActivity:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static final mDaMonthlyUsageCount:Ljava/util/List;

.field public static final mDaWeeklyUsageCount:Ljava/util/List;

.field public static mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

.field public static final mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

.field public static mWhitelistedPkgMap:Ljava/util/HashMap;

.field public static sDAMSInstance:Lcom/android/server/DualAppManagerService;

.field public static thisWeek:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    const-string/jumbo v10, "com.google.android.overlay.modules.permissioncontroller.forframework"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v11, "com.google.android.overlay.modules.modulemetadata.forframework"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "com.google.android.gms"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "com.google.android.gsf"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "com.google.android.gsf.login"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "com.android.chrome"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v4, "com.google.android.webview"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v5, "com.android.nfc"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "com.google.android.permissioncontroller"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v7, "com.android.permissioncontroller"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v8, "com.samsung.android.permissioncontroller"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v9, "com.google.android.overlay.modules.permissioncontroller"

    .line 35
    .line 36
    .line 37
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/DualAppManagerService;->DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v25, "com.android.server.telecom"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v26, "com.google.android.webview"

    .line 47
    .line 48
    .line 49
    const-string v1, "android"

    .line 50
    .line 51
    const-string v2, "android.auto_generated_rro_product__"

    .line 52
    .line 53
    const-string/jumbo v3, "com.sec.android.provider.badge"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v4, "com.android.chrome"

    .line 57
    .line 58
    .line 59
    const-string/jumbo v5, "com.android.credentialmanager"

    .line 60
    .line 61
    .line 62
    const-string/jumbo v6, "com.android.providers.downloads"

    .line 63
    .line 64
    .line 65
    const-string/jumbo v7, "com.facebook.appmanager"

    .line 66
    .line 67
    .line 68
    const-string/jumbo v8, "com.google.android.overlay.gmsconfig.geotz"

    .line 69
    .line 70
    .line 71
    const-string/jumbo v9, "com.google.android.overlay.modules.modulemetadata.forframework"

    .line 72
    .line 73
    .line 74
    const-string/jumbo v10, "com.google.android.overlay.modules.permissioncontroller"

    .line 75
    .line 76
    .line 77
    const-string/jumbo v11, "com.google.android.overlay.modules.permissioncontroller.forframework"

    .line 78
    .line 79
    .line 80
    const-string/jumbo v12, "com.google.android.packageinstaller"

    .line 81
    .line 82
    .line 83
    const-string/jumbo v13, "com.google.android.gms"

    .line 84
    .line 85
    .line 86
    const-string/jumbo v14, "com.google.android.permissioncontroller"

    .line 87
    .line 88
    .line 89
    const-string/jumbo v15, "com.samsung.android.permissioncontroller"

    .line 90
    .line 91
    .line 92
    const-string/jumbo v16, "com.google.android.apps.restore"

    .line 93
    .line 94
    .line 95
    const-string/jumbo v17, "com.google.android.gsf"

    .line 96
    .line 97
    .line 98
    const-string/jumbo v18, "com.android.intentresolver"

    .line 99
    .line 100
    .line 101
    const-string/jumbo v19, "com.android.keychain"

    .line 102
    .line 103
    .line 104
    const-string/jumbo v20, "com.android.nfc"

    .line 105
    .line 106
    .line 107
    const-string/jumbo v21, "com.samsung.android.packageinstaller"

    .line 108
    .line 109
    .line 110
    const-string/jumbo v22, "com.android.phone"

    .line 111
    .line 112
    .line 113
    const-string/jumbo v23, "com.android.settings"

    .line 114
    .line 115
    .line 116
    const-string/jumbo v24, "com.android.providers.settings"

    .line 117
    .line 118
    .line 119
    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sput-object v0, Lcom/android/server/DualAppManagerService;->DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

    .line 124
    .line 125
    new-instance v0, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    sput-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 131
    .line 132
    new-instance v0, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .line 136
    .line 137
    sput-object v0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 138
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    sput-object v0, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    .line 145
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    sput-object v0, Lcom/android/server/DualAppManagerService;->mDaMonthlyUsageCount:Ljava/util/List;

    .line 152
    .line 153
    const/4 v0, -0x1

    .line 154
    sput v0, Lcom/android/server/DualAppManagerService;->thisWeek:I

    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    sput-object v0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 158
    .line 159
    sput-object v0, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    .line 160
    .line 161
    sput-object v0, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    sput-boolean v0, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 165
    .line 166
    sput-boolean v0, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 167
    .line 168
    return-void
.end method

.method public static addWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "pkgName"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "pkgUid"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v2, 0x0

    .line 21
    const-string/jumbo v3, "result_desc"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v4, "result_code"

    .line 25
    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo p0, "package name is null"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v5, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x1

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo p0, "package is already added"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo p0, "success"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-object v0
.end method

.method public static changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v1, "com.samsung.android.da.daagent"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    const-string/jumbo v2, "com.android.settings"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_2
    invoke-static {p4}, Lcom/samsung/android/app/SemDualAppManager;->isSamsungLauncher(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-eqz p4, :cond_3

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    if-eqz p4, :cond_4

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    invoke-virtual {p4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    goto :goto_0

    .line 47
    :cond_4
    move-object p4, v0

    .line 48
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, p4}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_5
    const-string v2, "android.intent.extra.USER"

    .line 60
    .line 61
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/os/UserHandle;

    .line 66
    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    :cond_6
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_7

    .line 78
    .line 79
    if-eqz p3, :cond_7

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v2, Landroid/content/Intent;

    .line 87
    .line 88
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v3, "com.samsung.android.da.daagent.RemoveDualIM"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    const v4, 0x10480

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-virtual {p0, v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-eqz p0, :cond_8

    .line 106
    .line 107
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 108
    .line 109
    :cond_8
    if-eqz v0, :cond_9

    .line 110
    .line 111
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    new-instance p0, Landroid/content/Intent;

    .line 115
    .line 116
    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    const-string/jumbo p1, "com.samsung.android.da.original_intent"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    const-string/jumbo p0, "packageName"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const-string/jumbo p0, "userId"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_9
    return-object p1
.end method

.method public static changeUriForDualApp(ILandroid/content/Intent;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "output"

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/net/Uri;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v1, p0}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p0}, Landroid/content/ClipData;->fixUris(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, p0}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    :cond_2
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const-string v1, "android.intent.extra.STREAM"

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-lez v3, :cond_6

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/net/Uri;

    .line 119
    .line 120
    invoke-static {v3, p0}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_3

    .line 125
    .line 126
    invoke-static {v3, p0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    const-string v0, "android.intent.action.SEND"

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroid/net/Uri;

    .line 169
    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    invoke-static {v0, p0}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_6

    .line 177
    .line 178
    invoke-static {v0, p0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    :cond_6
    :goto_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/android/server/DualAppManagerService;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/DualAppManagerService;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/samsung/android/app/ISemDualAppManager$Stub;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/android/server/DualAppManagerService$OpChangeListener;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/android/server/DualAppManagerService$InternalHandler;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lcom/android/server/DualAppManagerService$InternalHandler;-><init>(Lcom/android/server/DualAppManagerService;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    .line 28
    .line 29
    sput-object v1, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 30
    .line 31
    sput-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 41
    .line 42
    return-object p0
.end method

.method public static hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "/storage/emulated/0/Android/data/"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "android.intent.extra.STREAM"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const-string/jumbo v3, "file"

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/net/Uri;

    .line 54
    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_0

    .line 72
    .line 73
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_0

    .line 78
    .line 79
    return v2

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    return v2

    .line 109
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_8

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/net/Uri;

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    return v2

    .line 156
    :cond_4
    const-string v0, "android.intent.action.SEND"

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    new-instance v4, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_6

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Landroid/net/Uri;

    .line 197
    .line 198
    if-eqz v4, :cond_5

    .line 199
    .line 200
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_5

    .line 209
    .line 210
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    if-eqz v4, :cond_5

    .line 215
    .line 216
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_5

    .line 221
    .line 222
    return v2

    .line 223
    :cond_6
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_7

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_7

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-eqz v0, :cond_7

    .line 244
    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_7

    .line 250
    .line 251
    return v2

    .line 252
    :cond_7
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    check-cast p0, Landroid/net/Uri;

    .line 261
    .line 262
    if-eqz p0, :cond_8

    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_8

    .line 273
    .line 274
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    if-eqz p0, :cond_8

    .line 279
    .line 280
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    if-eqz p0, :cond_8

    .line 285
    .line 286
    return v2

    .line 287
    :cond_8
    const/4 p0, 0x0

    .line 288
    return p0
.end method

.method public static isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string v0, "DualAppManagerService"

    .line 13
    .line 14
    const-string v1, "Exception occured in isInstalledWhitelistedPackageInternal. retrun false"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static mayForwardShare(Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string/jumbo v0, "com.samsung.android.da.daagent.FORWARD_SHARE_FROM_OWNER"

    .line 10
    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p0, "DualAppManagerService"

    .line 26
    .line 27
    const-string/jumbo p1, "illegal action. this action doens\'t use other app."

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    .line 35
    const-string/jumbo p1, "not allow this action"

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v3, 0x1

    .line 47
    const-string/jumbo v4, "com.samsung.android.da.daagent.activity.ForwardShareActivity"

    .line 48
    .line 49
    .line 50
    const-string v5, "android.intent.extra.INTENT"

    .line 51
    .line 52
    const-string/jumbo v6, "com.samsung.android.da.daagent"

    .line 53
    .line 54
    .line 55
    if-eqz v2, :cond_8

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    :try_start_1
    const-string p2, "android.intent.action.CHOOSER"

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/content/Intent;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object p2, p0

    .line 83
    :goto_1
    if-nez p2, :cond_4

    .line 84
    .line 85
    return v1

    .line 86
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    if-eqz p3, :cond_5

    .line 91
    .line 92
    return v1

    .line 93
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    if-eqz p3, :cond_6

    .line 98
    .line 99
    return v1

    .line 100
    :cond_6
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_7

    .line 105
    .line 106
    return v1

    .line 107
    :cond_7
    invoke-static {p2, p1}, Lcom/android/server/DualAppManagerService;->hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_b

    .line 112
    .line 113
    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    return v3

    .line 117
    :cond_8
    if-nez p3, :cond_b

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    if-nez p3, :cond_9

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_9

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    :cond_9
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_a

    .line 140
    .line 141
    return v1

    .line 142
    :cond_a
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_b

    .line 147
    .line 148
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_b

    .line 153
    .line 154
    invoke-static {p0, p1}, Lcom/android/server/DualAppManagerService;->hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_b

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/os/Parcelable;

    .line 165
    .line 166
    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    .line 174
    .line 175
    return v3

    .line 176
    :catch_0
    :cond_b
    return v1
.end method

.method public static notifyActivityResumedLocked(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "sys.datawedge.prop"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    const-string v0, "DW::notifyActivityResumedLocked "

    .line 13
    .line 14
    const-string v2, " 0"

    .line 15
    .line 16
    const-string v3, "DualAppManagerService"

    .line 17
    .line 18
    invoke-static {v0, p0, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object p0, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    .line 22
    .line 23
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 24
    .line 25
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    invoke-static {v0, v1, p0}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static printInstalledWhitelistedPkg()V
    .locals 5

    .line 1
    const-string v0, "DualAppManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "printInstalledWhitelistedPkg called!"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v3, "installed whitelisted dual app ["

    .line 32
    .line 33
    .line 34
    const-string v4, "/"

    .line 35
    .line 36
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "]"

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public static recordDaUsageCount(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-static {p0}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    const/4 p1, 0x0

    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-static {v0, p1, p0}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_1
    return-void
.end method

.method public static removeAllWhitelistedPkgs()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "result_code"

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "result_desc"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v2, "success"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static removeWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "pkgName"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string/jumbo v2, "result_desc"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "result_code"

    .line 18
    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo p0, "package name is null"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v4, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const/4 v6, 0x1

    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo p0, "package doesn\'t exist"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo p0, "success"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-object v0
.end method

.method public static renewWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    const-string v2, "allInstalledWhitelistedPkgs"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string/jumbo p0, "result_code"

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo p0, "result_desc"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "success"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public static sendInternalMsg(IILjava/lang/Object;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "sendInternalMsg() "

    .line 2
    .line 3
    .line 4
    const-string v1, "/"

    .line 5
    .line 6
    const-string v2, "/0"

    .line 7
    .line 8
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "DualAppManagerService"

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo p0, "sendInternalMsg() failed, handler is null"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public static setDualAppNotificationSound(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "sound_uri"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string/jumbo v1, "setDualAppNotificationSound : "

    .line 14
    .line 15
    .line 16
    const-string v2, "DualAppManagerService"

    .line 17
    .line 18
    invoke-static {v1, p0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const-string/jumbo v2, "result_desc"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v3, "result_code"

    .line 26
    .line 27
    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo p0, "uri is null"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x1

    .line 41
    :try_start_0
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo p0, "success"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-object v0
.end method

.method public static shouldForwardToOwner(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    return v2

    .line 56
    :cond_2
    sget-object v1, Lcom/android/server/DualAppManagerService;->DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

    .line 57
    .line 58
    move v3, v2

    .line 59
    :goto_0
    const/16 v4, 0xc

    .line 60
    .line 61
    if-ge v3, v4, :cond_4

    .line 62
    .line 63
    aget-object v4, v1, v3

    .line 64
    .line 65
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    return v2

    .line 72
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const-string/jumbo v1, "com.bst.floatingmsgproxy"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_6

    .line 83
    .line 84
    const-string/jumbo v1, "com.bst.airmessage"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    return v0

    .line 95
    :cond_6
    :goto_1
    return v2

    .line 96
    :cond_7
    :goto_2
    return v0
.end method

.method public static startDAChooserActivity(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 19

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const-string v4, "DualAppManagerService"

    .line 10
    .line 11
    const-string/jumbo v5, "ret2 : "

    .line 12
    .line 13
    .line 14
    const-string/jumbo v6, "ret1 : "

    .line 15
    .line 16
    .line 17
    const-string/jumbo v7, "intent : "

    .line 18
    .line 19
    .line 20
    const-string/jumbo v8, "com.bst.floatingmsgproxy"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    const/4 v9, 0x0

    .line 28
    if-nez v8, :cond_1b

    .line 29
    .line 30
    const-string/jumbo v8, "com.bst.airmessage"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-nez v8, :cond_1b

    .line 38
    .line 39
    const-string/jumbo v8, "com.samsung.android.da.daagent"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-nez v10, :cond_1b

    .line 47
    .line 48
    const-string/jumbo v10, "com.samsung.android.spay"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_0

    .line 56
    .line 57
    goto/16 :goto_8

    .line 58
    .line 59
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    new-instance v11, Landroid/content/ComponentName;

    .line 64
    .line 65
    const-string/jumbo v12, "com.samsung.android.da.daagent.activity.ForwardShareActivity"

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v8, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_1

    .line 80
    .line 81
    const-string/jumbo v0, "com.samsung.android.da.daagent.activity.EmptyActivity"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const-string v0, "Invalid call to share"

    .line 88
    .line 89
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-object v9

    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_1
    if-eqz v10, :cond_2

    .line 97
    .line 98
    invoke-static {v2, v3, v1, v0}, Lcom/android/server/DualAppManagerService;->mayForwardShare(Landroid/content/Intent;Ljava/lang/String;II)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_2

    .line 103
    .line 104
    return-object v9

    .line 105
    :cond_2
    const-string v8, "android.intent.action.SEND"

    .line 106
    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    const v11, 0x104105f

    .line 116
    .line 117
    .line 118
    if-nez v8, :cond_3

    .line 119
    .line 120
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    .line 121
    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_4

    .line 131
    .line 132
    :cond_3
    if-nez v10, :cond_16

    .line 133
    .line 134
    if-nez v0, :cond_4

    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :cond_4
    const/16 v8, 0x3e8

    .line 139
    .line 140
    const v14, 0x104104e

    .line 141
    .line 142
    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 146
    .line 147
    .line 148
    move-result v15

    .line 149
    if-eqz v15, :cond_7

    .line 150
    .line 151
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    if-eqz v15, :cond_7

    .line 156
    .line 157
    move/from16 v15, p2

    .line 158
    .line 159
    if-eq v15, v8, :cond_7

    .line 160
    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    if-nez v15, :cond_7

    .line 174
    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    invoke-static {v15}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    if-eqz v15, :cond_7

    .line 188
    .line 189
    const-string/jumbo v15, "com.sina.weibo"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v15

    .line 196
    if-nez v15, :cond_7

    .line 197
    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    invoke-static {v15}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    if-eqz v15, :cond_7

    .line 211
    .line 212
    new-instance v1, Landroid/content/Intent;

    .line 213
    .line 214
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    .line 216
    .line 217
    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :cond_6
    :goto_0
    const/4 v12, 0x1

    .line 228
    goto/16 :goto_6

    .line 229
    .line 230
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 231
    .line 232
    .line 233
    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    const-string/jumbo v16, "com.tencent.mobileqqi"

    .line 235
    .line 236
    .line 237
    const-string/jumbo v17, "com.tencent.mobileqq"

    .line 238
    .line 239
    .line 240
    if-eqz v15, :cond_b

    .line 241
    .line 242
    :try_start_1
    const-string/jumbo v15, "mqqapi"

    .line 243
    .line 244
    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 246
    .line 247
    .line 248
    move-result-object v18

    .line 249
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_b

    .line 258
    .line 259
    invoke-static/range {v17 .. v17}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    if-nez v12, :cond_8

    .line 264
    .line 265
    invoke-static/range {v16 .. v16}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v12

    .line 269
    if-eqz v12, :cond_b

    .line 270
    .line 271
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-eqz v1, :cond_9

    .line 276
    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    goto :goto_1

    .line 286
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    :goto_1
    if-eqz v3, :cond_a

    .line 291
    .line 292
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_a

    .line 297
    .line 298
    return-object v9

    .line 299
    :cond_a
    new-instance v1, Landroid/content/Intent;

    .line 300
    .line 301
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 302
    .line 303
    .line 304
    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 305
    .line 306
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    goto :goto_0

    .line 315
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 316
    .line 317
    .line 318
    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    const-string/jumbo v15, "com.tencent.mm"

    .line 320
    .line 321
    .line 322
    if-eqz v12, :cond_d

    .line 323
    .line 324
    :try_start_2
    const-string/jumbo v12, "weixin"

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 328
    .line 329
    .line 330
    move-result-object v18

    .line 331
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v13

    .line 335
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v12

    .line 339
    if-eqz v12, :cond_d

    .line 340
    .line 341
    invoke-static {v15}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 342
    .line 343
    .line 344
    move-result v12

    .line 345
    if-eqz v12, :cond_d

    .line 346
    .line 347
    new-instance v1, Landroid/content/Intent;

    .line 348
    .line 349
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 350
    .line 351
    .line 352
    sget-object v7, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 353
    .line 354
    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-static {v1, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    const-string/jumbo v7, "com.sec.android.app.sbrowser"

    .line 363
    .line 364
    .line 365
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v7

    .line 369
    if-nez v7, :cond_c

    .line 370
    .line 371
    const-string/jumbo v7, "com.android.chrome"

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_6

    .line 379
    .line 380
    :cond_c
    const-string v3, "android.intent.category.BROWSABLE"

    .line 381
    .line 382
    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_6

    .line 387
    .line 388
    const/high16 v3, 0x14000000

    .line 389
    .line 390
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 391
    .line 392
    .line 393
    const-string/jumbo v3, "startDAChooserActivity addFlags for chooserIntent"

    .line 394
    .line 395
    .line 396
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 402
    .line 403
    .line 404
    move-result-object v12

    .line 405
    if-eqz v12, :cond_f

    .line 406
    .line 407
    const-string/jumbo v12, "mqqwallet"

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v13

    .line 418
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v12

    .line 422
    if-eqz v12, :cond_f

    .line 423
    .line 424
    invoke-static/range {v17 .. v17}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    if-nez v12, :cond_e

    .line 429
    .line 430
    invoke-static/range {v16 .. v16}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 431
    .line 432
    .line 433
    move-result v12

    .line 434
    if-eqz v12, :cond_f

    .line 435
    .line 436
    :cond_e
    new-instance v1, Landroid/content/Intent;

    .line 437
    .line 438
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 439
    .line 440
    .line 441
    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 442
    .line 443
    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_f
    if-nez v1, :cond_12

    .line 454
    .line 455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    if-eq v1, v8, :cond_12

    .line 460
    .line 461
    const-string/jumbo v1, "com.taobao.taobao"

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-nez v1, :cond_10

    .line 469
    .line 470
    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-nez v1, :cond_10

    .line 478
    .line 479
    const-string/jumbo v1, "com.tmall.wireless"

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    if-eqz v1, :cond_12

    .line 487
    .line 488
    :cond_10
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    if-eqz v1, :cond_11

    .line 493
    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    goto :goto_2

    .line 503
    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    :goto_2
    if-eqz v3, :cond_15

    .line 508
    .line 509
    if-eqz v1, :cond_15

    .line 510
    .line 511
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    if-nez v3, :cond_15

    .line 516
    .line 517
    invoke-static {v1}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-eqz v3, :cond_15

    .line 522
    .line 523
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-eqz v1, :cond_15

    .line 528
    .line 529
    new-instance v1, Landroid/content/Intent;

    .line 530
    .line 531
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 532
    .line 533
    .line 534
    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 535
    .line 536
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    goto/16 :goto_0

    .line 545
    .line 546
    :cond_12
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v8

    .line 553
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-nez v1, :cond_14

    .line 558
    .line 559
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.voip"

    .line 560
    .line 561
    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-nez v1, :cond_14

    .line 571
    .line 572
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.tencent.mm.plugin.sns.timeline"

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v8

    .line 579
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    if-nez v1, :cond_14

    .line 584
    .line 585
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.voiceaction"

    .line 586
    .line 587
    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    if-eqz v1, :cond_13

    .line 597
    .line 598
    goto :goto_3

    .line 599
    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    if-eqz v1, :cond_15

    .line 604
    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    const-string/jumbo v3, "kakaotalk://settings/theme/"

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-eqz v1, :cond_15

    .line 617
    .line 618
    const-string/jumbo v1, "com.kakao.talk"

    .line 619
    .line 620
    .line 621
    invoke-static {v1}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    if-eqz v1, :cond_15

    .line 626
    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    new-instance v1, Landroid/content/Intent;

    .line 647
    .line 648
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 649
    .line 650
    .line 651
    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 652
    .line 653
    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    goto/16 :goto_0

    .line 662
    .line 663
    :cond_14
    :goto_3
    invoke-static {v15}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-eqz v1, :cond_15

    .line 668
    .line 669
    invoke-static/range {p4 .. p4}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_15

    .line 674
    .line 675
    new-instance v1, Landroid/content/Intent;

    .line 676
    .line 677
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 678
    .line 679
    .line 680
    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 681
    .line 682
    const v7, 0x1041065

    .line 683
    .line 684
    .line 685
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    goto/16 :goto_0

    .line 694
    .line 695
    :cond_15
    move-object v1, v9

    .line 696
    const/4 v12, 0x0

    .line 697
    goto :goto_6

    .line 698
    :cond_16
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    if-eqz v1, :cond_17

    .line 703
    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    goto :goto_5

    .line 713
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    :goto_5
    if-eqz v3, :cond_15

    .line 718
    .line 719
    if-eqz v1, :cond_15

    .line 720
    .line 721
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    if-nez v3, :cond_15

    .line 726
    .line 727
    invoke-static {v1}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    .line 728
    .line 729
    .line 730
    move-result v1

    .line 731
    if-eqz v1, :cond_15

    .line 732
    .line 733
    new-instance v1, Landroid/content/Intent;

    .line 734
    .line 735
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 736
    .line 737
    .line 738
    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 739
    .line 740
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v3

    .line 744
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    goto/16 :goto_0

    .line 749
    .line 750
    :goto_6
    if-eqz v12, :cond_1b

    .line 751
    .line 752
    new-instance v3, Ljava/util/ArrayList;

    .line 753
    .line 754
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .line 756
    .line 757
    if-eqz v10, :cond_18

    .line 758
    .line 759
    invoke-static {v0, v2}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(ILandroid/content/Intent;)V

    .line 760
    .line 761
    .line 762
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    if-eqz v0, :cond_19

    .line 767
    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 774
    .line 775
    .line 776
    move-result-object v6

    .line 777
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    if-eqz v0, :cond_1a

    .line 792
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    .line 794
    .line 795
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 799
    .line 800
    .line 801
    move-result-object v5

    .line 802
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    :cond_1a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    new-array v0, v0, [Landroid/content/Intent;

    .line 820
    .line 821
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    check-cast v0, [Landroid/content/Intent;

    .line 826
    .line 827
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    .line 828
    .line 829
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 830
    .line 831
    .line 832
    return-object v1

    .line 833
    :goto_7
    const-string/jumbo v1, "fail startDAChooserActivity"

    .line 834
    .line 835
    .line 836
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 840
    .line 841
    .line 842
    :cond_1b
    :goto_8
    return-object v9
.end method

.method public static systemReady()V
    .locals 3

    .line 1
    const-string/jumbo v0, "persist.sys.dualapp.directory.revision"

    .line 2
    .line 3
    .line 4
    const-string v1, "DualAppManagerService"

    .line 5
    .line 6
    const-string v2, "DualAppManagerService ready"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v2, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->writeDualAppProfileId(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string v2, "1"

    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v2, "Failed to write dual app profile id"

    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    const-string/jumbo v0, "systemReady done."

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static updateDAUsage()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x5

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget v3, Lcom/android/server/DualAppManagerService;->thisWeek:I

    .line 21
    .line 22
    if-eq v3, v2, :cond_0

    .line 23
    .line 24
    sget-object v3, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    .line 25
    .line 26
    check-cast v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    sput v2, Lcom/android/server/DualAppManagerService;->thisWeek:I

    .line 32
    .line 33
    :cond_0
    sget-object v2, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :try_start_0
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string/jumbo v2, "content://com.samsung.android.da.daagent.provider/recordUsage"

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Landroid/content/ContentValues;

    .line 68
    .line 69
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/DualAppManagerService;->mDaMonthlyUsageCount:Ljava/util/List;

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v1, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method public static updateInstalledWhitelistPackages()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v0, "content://com.samsung.android.da.daagent.provider/getInstalledApps"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v1, "DualAppManagerService"

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v3, "updateInstalledWhitelistPackages : "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, "/"

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    .line 102
    .line 103
    throw v1

    .line 104
    :cond_1
    :goto_2
    return-void
.end method

.method public static updateWhitelistPackages()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v0, "content://com.samsung.android.da.daagent.provider/getWhitelistApps"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "updateWhitelistPackages : "

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v3, "DualAppManagerService"

    .line 56
    .line 57
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public static updateWhitelistPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "packageList"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    sput-object p0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 18
    .line 19
    :cond_0
    const-string/jumbo p0, "result_code"

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo p0, "result_desc"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "success"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public static writeDualAppProfileId(Landroid/content/Context;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 26
    .line 27
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 28
    .line 29
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 36
    .line 37
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 p0, -0x2710

    .line 40
    .line 41
    move v0, v2

    .line 42
    :goto_0
    const-string/jumbo v3, "persist.sys.dualapp.prop"

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "DualAppManagerService"

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-lez v6, :cond_2

    .line 58
    .line 59
    const-string/jumbo v3, "dualapp_prop "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const-string v4, "0"

    .line 73
    .line 74
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string v4, "1"

    .line 79
    .line 80
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    const-string/jumbo v3, "sys.dualapp.profile_id"

    .line 84
    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, "Found DA Profile. Id = "

    .line 91
    .line 92
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v3, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :cond_4
    const-string p0, "Can not found DA Profile. Id"

    .line 114
    .line 115
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    const-string p0, ""

    .line 119
    .line 120
    invoke-static {v3, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return v2
.end method


# virtual methods
.method public final getAllInstalledWhitelistedPackages()Ljava/util/List;
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    move-object p0, v1

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string v0, "DualAppManagerService"

    .line 18
    .line 19
    const-string v1, "Exception occured in getAllInstalledWhitelistedPackages. retrun null"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-object p0
.end method

.method public final getAllWhitelistedPackages()[Ljava/lang/String;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p0, "DualAppManagerService"

    .line 13
    .line 14
    const-string/jumbo v1, "getAllWhitelistedPackages : empty"

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    sget-object p0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, [Ljava/lang/String;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    return-object v0
.end method

.method public final isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string p0, "DualAppManagerService"

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "Found!"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    const-string v0, "Exception occured in isInstalledWhitelistedPackage. retrun false"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final declared-synchronized updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const-string/jumbo v0, "updateDualAppData "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string/jumbo v1, "com.samsung.android.da.daagent"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_9

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v3, 0x3e8

    .line 20
    .line 21
    if-eq v1, v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    const-string v1, "DualAppManagerService"

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "/"

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "/"

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    if-nez p3, :cond_1

    .line 59
    .line 60
    const-string p1, "DualAppManagerService"

    .line 61
    .line 62
    const-string/jumbo p2, "updateDualAppData. Bundle is null"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-object v2

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_1
    :try_start_1
    const-string/jumbo p1, "command"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    const-string/jumbo p2, "renewInstalledWhitelistedPkgs"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    invoke-static {p3}, Lcom/android/server/DualAppManagerService;->renewWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :catch_0
    move-exception p1

    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_2
    const-string p2, "addInstalledWhitelistedPkg"

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    invoke-static {p3}, Lcom/android/server/DualAppManagerService;->addWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const-string/jumbo p2, "removeInstalledWhitelistedPkg"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    invoke-static {p3}, Lcom/android/server/DualAppManagerService;->removeWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    const-string/jumbo p2, "removeAllInstalledWhitelistedPkgs"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_5

    .line 133
    .line 134
    invoke-static {}, Lcom/android/server/DualAppManagerService;->removeAllWhitelistedPkgs()Landroid/os/Bundle;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    const-string/jumbo p2, "printInstalledWhitelistedPkg"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_6

    .line 147
    .line 148
    invoke-static {}, Lcom/android/server/DualAppManagerService;->printInstalledWhitelistedPkg()V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    const-string/jumbo p2, "setDualAppNotificationSound"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_7

    .line 160
    .line 161
    invoke-static {p3}, Lcom/android/server/DualAppManagerService;->setDualAppNotificationSound(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    goto :goto_1

    .line 166
    :cond_7
    const-string/jumbo p2, "updateWhitelistPkgs"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_8

    .line 174
    .line 175
    invoke-static {p3}, Lcom/android/server/DualAppManagerService;->updateWhitelistPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    goto :goto_1

    .line 180
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    .line 181
    .line 182
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .line 184
    .line 185
    :try_start_3
    const-string/jumbo p2, "result_code"

    .line 186
    .line 187
    .line 188
    const/4 p3, 0x0

    .line 189
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    const-string/jumbo p2, "result_desc"

    .line 193
    .line 194
    .line 195
    const-string/jumbo p3, "not defined command"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    .line 200
    .line 201
    move-object v2, p1

    .line 202
    goto :goto_1

    .line 203
    :catch_1
    move-exception p2

    .line 204
    move-object v2, p1

    .line 205
    move-object p1, p2

    .line 206
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    .line 208
    .line 209
    :goto_1
    monitor-exit p0

    .line 210
    return-object v2

    .line 211
    :cond_9
    :goto_2
    :try_start_5
    const-string p1, "DualAppManagerService"

    .line 212
    .line 213
    const-string/jumbo p2, "updateDualAppData is called from unauthorized app"

    .line 214
    .line 215
    .line 216
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 217
    .line 218
    .line 219
    monitor-exit p0

    .line 220
    return-object v2

    .line 221
    :goto_3
    monitor-exit p0

    .line 222
    throw p1
.end method
