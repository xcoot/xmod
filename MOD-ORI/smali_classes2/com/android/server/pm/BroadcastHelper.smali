.class public final Lcom/android/server/pm/BroadcastHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

.field public static final vzwCarrierId:Ljava/lang/String;

.field public static final vzwSalesCode:Ljava/lang/String;


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field public final mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_INSTANT_APPS"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/pm/BroadcastHelper;->INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v0, "ro.boot.carrierid"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/pm/BroadcastHelper;->vzwCarrierId:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/server/pm/BroadcastHelper;->vzwSalesCode:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 11
    .line 12
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 35
    .line 36
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 37
    .line 38
    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 45
    .line 46
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 47
    .line 48
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 49
    .line 50
    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/server/pm/AppsFilterImpl;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 57
    .line 58
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    invoke-static {v0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public static filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    const-string v0, "android.intent.extra.changed_package_list"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    return-object p2

    .line 21
    :cond_1
    const-string v2, "android.intent.extra.user_handle"

    .line 22
    .line 23
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "android.intent.extra.changed_uid_list"

    .line 32
    .line 33
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/pm/Computer;

    .line 42
    .line 43
    array-length v5, v1

    .line 44
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/4 v7, 0x0

    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    array-length v6, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v6, v7

    .line 54
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    if-lez v6, :cond_3

    .line 61
    .line 62
    new-instance v10, Landroid/util/IntArray;

    .line 63
    .line 64
    invoke-direct {v10, v6}, Landroid/util/IntArray;-><init>(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v10, v9

    .line 69
    :goto_1
    if-ge v7, v5, :cond_6

    .line 70
    .line 71
    aget-object v11, v1, v7

    .line 72
    .line 73
    invoke-interface {p0, v11}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-interface {p0, v12, p1, v2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-eqz v12, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    if-eqz v10, :cond_5

    .line 88
    .line 89
    if-ge v7, v6, :cond_5

    .line 90
    .line 91
    aget v11, v4, v7

    .line 92
    .line 93
    invoke-virtual {v10, v11}, Landroid/util/IntArray;->add(I)V

    .line 94
    .line 95
    .line 96
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    new-instance p0, Landroid/util/Pair;

    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-lez p1, :cond_7

    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    new-array p1, p1, [Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, [Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    move-object p1, v9

    .line 121
    :goto_3
    if-eqz v10, :cond_8

    .line 122
    .line 123
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-lez v1, :cond_8

    .line 128
    .line 129
    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_4

    .line 134
    :cond_8
    move-object v1, v9

    .line 135
    :goto_4
    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, [Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_9

    .line 147
    .line 148
    return-object v9

    .line 149
    :cond_9
    new-instance p1, Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p2, [Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p0, [I

    .line 164
    .line 165
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 166
    .line 167
    .line 168
    return-object p1
.end method

.method public static isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "privacy"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "safety_label_change_notifications_enabled"

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v0, "android.hardware.type.automotive"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, "android.software.leanback"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string v0, "android.hardware.type.watch"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    return v2
.end method


# virtual methods
.method public final doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p7

    .line 12
    .line 13
    move-object/from16 v7, p9

    .line 14
    .line 15
    const/4 v8, -0x1

    .line 16
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    .line 17
    .line 18
    const-string v11, "android.intent.action.PACKAGE_REMOVED"

    .line 19
    .line 20
    array-length v12, v6

    .line 21
    const/4 v14, 0x0

    .line 22
    :goto_0
    if-ge v14, v12, :cond_1b

    .line 23
    .line 24
    aget v15, v6, v14

    .line 25
    .line 26
    new-instance v10, Landroid/content/Intent;

    .line 27
    .line 28
    const/4 v13, 0x0

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const-string/jumbo v0, "package"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v3, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move-object v0, v13

    .line 40
    :goto_1
    invoke-direct {v10, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v10, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    :cond_1
    if-eqz v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    :cond_2
    const-string v0, "android.intent.extra.UID"

    .line 54
    .line 55
    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v16

    .line 59
    if-ltz v16, :cond_3

    .line 60
    .line 61
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eq v8, v15, :cond_3

    .line 66
    .line 67
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getAppId(I)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-static {v15, v8}, Landroid/os/UserHandle;->getUid(II)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    :cond_3
    if-eqz v7, :cond_4

    .line 79
    .line 80
    const-string v0, "android"

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, [I

    .line 93
    .line 94
    const-string v8, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    .line 95
    .line 96
    invoke-virtual {v10, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    :cond_4
    const-string v0, "android.intent.extra.user_handle"

    .line 100
    .line 101
    invoke-virtual {v10, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    const/high16 v0, 0x4000000

    .line 105
    .line 106
    or-int v0, p4, v0

    .line 107
    .line 108
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    if-eqz p8, :cond_5

    .line 112
    .line 113
    sget-object v0, Lcom/android/server/pm/BroadcastHelper;->INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

    .line 114
    .line 115
    move-object/from16 v18, v0

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move-object/from16 v18, v13

    .line 119
    .line 120
    :goto_2
    iget-object v0, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 121
    .line 122
    if-nez v7, :cond_6

    .line 123
    .line 124
    move-object/from16 v20, v13

    .line 125
    .line 126
    :goto_3
    move v8, v15

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    check-cast v8, [I

    .line 133
    .line 134
    move-object/from16 v20, v8

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :goto_4
    move-object v15, v0

    .line 138
    move-object/from16 v16, v10

    .line 139
    .line 140
    move-object/from16 v17, p6

    .line 141
    .line 142
    move/from16 v19, v8

    .line 143
    .line 144
    move-object/from16 v21, p10

    .line 145
    .line 146
    move-object/from16 v22, p11

    .line 147
    .line 148
    invoke-virtual/range {v15 .. v22}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 149
    .line 150
    .line 151
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 152
    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_7

    .line 158
    .line 159
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    :cond_7
    const-string v0, "android.intent.extra.changed_package_list"

    .line 168
    .line 169
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v15, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v13, " : user "

    .line 182
    .line 183
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    const/4 v15, 0x4

    .line 194
    invoke-static {v15, v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    if-eqz v0, :cond_8

    .line 198
    .line 199
    new-instance v13, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string/jumbo v15, "pkgs: "

    .line 202
    .line 203
    .line 204
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const/4 v13, 0x4

    .line 219
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    if-nez v5, :cond_e

    .line 223
    .line 224
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_9

    .line 229
    .line 230
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_9

    .line 235
    .line 236
    goto/16 :goto_6

    .line 237
    .line 238
    :cond_9
    invoke-virtual {v10}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Landroid/content/Intent;

    .line 243
    .line 244
    iget-object v13, v1, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 245
    .line 246
    sget-object v15, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v15

    .line 252
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    if-eqz v15, :cond_a

    .line 257
    .line 258
    const-string v15, "com.samsung.android.da.daagent.PACKAGE_REMOVED"

    .line 259
    .line 260
    const/16 v16, 0x0

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_a
    const-string v15, "com.samsung.android.da.daagent.PACKAGE_ADDED"

    .line 264
    .line 265
    const/16 v16, 0x1

    .line 266
    .line 267
    :goto_5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 268
    .line 269
    .line 270
    move-result-object v17

    .line 271
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    if-nez v4, :cond_b

    .line 276
    .line 277
    const-string v0, "DualAppManagerService"

    .line 278
    .line 279
    const-string v4, " can not sendBroadcast intent, becuase pkgName is null"

    .line 280
    .line 281
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_b
    if-nez v8, :cond_c

    .line 286
    .line 287
    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-virtual {v6, v4}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_c

    .line 296
    .line 297
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Landroid/content/Intent;

    .line 302
    .line 303
    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    .line 305
    .line 306
    const-string v6, "com.samsung.android.da.daagent"

    .line 307
    .line 308
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 312
    .line 313
    invoke-virtual {v13, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    .line 315
    .line 316
    :cond_c
    if-eqz v16, :cond_e

    .line 317
    .line 318
    const-string v0, "com.samsung.android.app.smartscan"

    .line 319
    .line 320
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-nez v0, :cond_d

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_d
    :try_start_0
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const/16 v6, 0x80

    .line 332
    .line 333
    invoke-virtual {v0, v4, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    if-eqz v0, :cond_e

    .line 338
    .line 339
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 340
    .line 341
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 342
    .line 343
    if-eqz v0, :cond_e

    .line 344
    .line 345
    const-string v4, "com.samsung.android.bbcagent.notify_install"

    .line 346
    .line 347
    const/4 v6, 0x0

    .line 348
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 349
    .line 350
    .line 351
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    if-eqz v0, :cond_e

    .line 353
    .line 354
    const-string/jumbo v0, "sys.datawedge.prop"

    .line 355
    .line 356
    .line 357
    const/4 v4, 0x1

    .line 358
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    goto :goto_6

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .line 369
    .line 370
    :cond_e
    :goto_6
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 371
    .line 372
    if-eqz v0, :cond_f

    .line 373
    .line 374
    iget-object v0, v1, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 375
    .line 376
    iget-object v4, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 377
    .line 378
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-eqz v4, :cond_f

    .line 383
    .line 384
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_f

    .line 389
    .line 390
    if-nez v8, :cond_f

    .line 391
    .line 392
    const-string v4, "com.sec.android.app.samsungapps"

    .line 393
    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    if-eqz v4, :cond_f

    .line 399
    .line 400
    if-eqz v3, :cond_f

    .line 401
    .line 402
    const/4 v4, 0x1

    .line 403
    const/4 v6, 0x0

    .line 404
    invoke-virtual {v0, v3, v4, v6, v6}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 405
    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_f
    const/4 v6, 0x0

    .line 409
    :goto_7
    const-wide/16 v24, 0x0

    .line 410
    .line 411
    if-nez v5, :cond_13

    .line 412
    .line 413
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    const-string v4, "SEC_FLOATING_FEATURE_SECURITY_CONFIG_DEVICEMONITOR_PACKAGE_NAME"

    .line 418
    .line 419
    const-string v13, "com.samsung.android.sm.devicesecurity"

    .line 420
    .line 421
    invoke-virtual {v0, v4, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    :try_start_1
    iget-object v4, v1, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 426
    .line 427
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-static/range {v24 .. v25}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 432
    .line 433
    .line 434
    move-result-object v13

    .line 435
    invoke-virtual {v4, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 440
    .line 441
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    .line 443
    and-int/lit16 v4, v4, 0x81

    .line 444
    .line 445
    if-eqz v4, :cond_10

    .line 446
    .line 447
    goto :goto_8

    .line 448
    :catch_1
    :cond_10
    const/4 v0, 0x0

    .line 449
    :goto_8
    if-eqz v0, :cond_13

    .line 450
    .line 451
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    if-nez v4, :cond_12

    .line 456
    .line 457
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-nez v4, :cond_11

    .line 462
    .line 463
    const/4 v4, 0x0

    .line 464
    goto :goto_9

    .line 465
    :cond_11
    const-string v4, "com.samsung.android.sm.devicesecurity.PACKAGE_ADDED"

    .line 466
    .line 467
    goto :goto_9

    .line 468
    :cond_12
    const-string v4, "com.samsung.android.sm.devicesecurity.PACKAGE_REMOVED"

    .line 469
    .line 470
    :goto_9
    if-eqz v4, :cond_13

    .line 471
    .line 472
    invoke-virtual {v10}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v13

    .line 476
    check-cast v13, Landroid/content/Intent;

    .line 477
    .line 478
    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v13, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    .line 483
    .line 484
    iget-object v15, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 485
    .line 486
    const/16 v19, 0x0

    .line 487
    .line 488
    const/16 v21, 0x0

    .line 489
    .line 490
    const/16 v17, 0x0

    .line 491
    .line 492
    const/16 v18, 0x0

    .line 493
    .line 494
    const/16 v22, 0x0

    .line 495
    .line 496
    const/16 v23, 0x0

    .line 497
    .line 498
    move-object/from16 v16, v13

    .line 499
    .line 500
    move/from16 v20, v8

    .line 501
    .line 502
    invoke-virtual/range {v15 .. v23}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 503
    .line 504
    .line 505
    :cond_13
    if-nez v5, :cond_14

    .line 506
    .line 507
    const-string v0, "VZW"

    .line 508
    .line 509
    sget-object v4, Lcom/android/server/pm/BroadcastHelper;->vzwSalesCode:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_15

    .line 516
    .line 517
    const-string v0, "VPP"

    .line 518
    .line 519
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_14

    .line 524
    .line 525
    goto :goto_b

    .line 526
    :cond_14
    :goto_a
    const/4 v4, 0x1

    .line 527
    goto/16 :goto_11

    .line 528
    .line 529
    :cond_15
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string/jumbo v13, "vzwCarrierId : "

    .line 532
    .line 533
    .line 534
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    sget-object v13, Lcom/android/server/pm/BroadcastHelper;->vzwCarrierId:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    const-string v13, "PackageManager"

    .line 547
    .line 548
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string/jumbo v15, "vzwSalesCode : "

    .line 554
    .line 555
    .line 556
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    new-instance v0, Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .line 573
    .line 574
    const-string v4, "com.verizon.loginengine.unbranded"

    .line 575
    .line 576
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    const-string v4, "com.verizon.mips.services"

    .line 580
    .line 581
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    if-eqz v0, :cond_17

    .line 593
    .line 594
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    check-cast v0, Ljava/lang/String;

    .line 599
    .line 600
    :try_start_2
    iget-object v15, v1, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 601
    .line 602
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 603
    .line 604
    .line 605
    move-result-object v15

    .line 606
    invoke-static/range {v24 .. v25}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    invoke-virtual {v15, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 611
    .line 612
    .line 613
    move-result-object v6

    .line 614
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 615
    .line 616
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 617
    .line 618
    and-int/lit16 v6, v6, 0x81

    .line 619
    .line 620
    if-eqz v6, :cond_16

    .line 621
    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .line 626
    .line 627
    const-string v15, "getMVSPackageName : "

    .line 628
    .line 629
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 640
    .line 641
    .line 642
    goto :goto_d

    .line 643
    :catch_2
    move-exception v0

    .line 644
    new-instance v6, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    const-string v15, "getMVSPackageName exception : "

    .line 647
    .line 648
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .line 660
    .line 661
    :cond_16
    const/4 v6, 0x0

    .line 662
    goto :goto_c

    .line 663
    :cond_17
    const/4 v0, 0x0

    .line 664
    :goto_d
    if-eqz v0, :cond_14

    .line 665
    .line 666
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    sparse-switch v4, :sswitch_data_0

    .line 671
    .line 672
    .line 673
    :goto_e
    const/4 v6, -0x1

    .line 674
    goto :goto_f

    .line 675
    :sswitch_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    if-nez v4, :cond_18

    .line 680
    .line 681
    goto :goto_e

    .line 682
    :cond_18
    const/4 v6, 0x2

    .line 683
    goto :goto_f

    .line 684
    :sswitch_1
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    if-nez v4, :cond_19

    .line 689
    .line 690
    goto :goto_e

    .line 691
    :cond_19
    const/4 v6, 0x1

    .line 692
    goto :goto_f

    .line 693
    :sswitch_2
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    .line 694
    .line 695
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result v4

    .line 699
    if-nez v4, :cond_1a

    .line 700
    .line 701
    goto :goto_e

    .line 702
    :cond_1a
    const/4 v6, 0x0

    .line 703
    :goto_f
    packed-switch v6, :pswitch_data_0

    .line 704
    .line 705
    .line 706
    const/4 v4, 0x0

    .line 707
    goto :goto_10

    .line 708
    :pswitch_0
    const-string v4, "com.verizon.provider.PACKAGE_ADDED"

    .line 709
    .line 710
    goto :goto_10

    .line 711
    :pswitch_1
    const-string v4, "com.verizon.provider.PACKAGE_REMOVED"

    .line 712
    .line 713
    goto :goto_10

    .line 714
    :pswitch_2
    const-string v4, "com.verizon.provider.PACKAGE_REPLACED"

    .line 715
    .line 716
    :goto_10
    if-eqz v4, :cond_14

    .line 717
    .line 718
    invoke-virtual {v10}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v6

    .line 722
    check-cast v6, Landroid/content/Intent;

    .line 723
    .line 724
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    .line 729
    .line 730
    iget-object v15, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 731
    .line 732
    const/16 v19, 0x0

    .line 733
    .line 734
    const/16 v21, 0x0

    .line 735
    .line 736
    const/16 v17, 0x0

    .line 737
    .line 738
    const/16 v18, 0x0

    .line 739
    .line 740
    const/16 v22, 0x0

    .line 741
    .line 742
    const/16 v23, 0x0

    .line 743
    .line 744
    move-object/from16 v16, v6

    .line 745
    .line 746
    move/from16 v20, v8

    .line 747
    .line 748
    invoke-virtual/range {v15 .. v23}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 749
    .line 750
    .line 751
    const-string/jumbo v6, "vzwCustomAction: "

    .line 752
    .line 753
    .line 754
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v4

    .line 758
    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .line 760
    .line 761
    const-string v4, "Target Package for explicit intent: "

    .line 762
    .line 763
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .line 769
    .line 770
    goto/16 :goto_a

    .line 771
    .line 772
    :goto_11
    add-int/2addr v14, v4

    .line 773
    move-object/from16 v4, p3

    .line 774
    .line 775
    move-object/from16 v6, p7

    .line 776
    .line 777
    const/4 v8, -0x1

    .line 778
    goto/16 :goto_0

    .line 779
    .line 780
    :cond_1b
    return-void

    .line 781
    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.extra.changed_package_list"

    .line 12
    .line 13
    invoke-virtual {v3, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p3, "android.intent.extra.changed_uid_list"

    .line 17
    .line 18
    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const-string p3, "android.intent.extra.REPLACING"

    .line 24
    .line 25
    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 31
    .line 32
    :goto_0
    move-object v1, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;ILcom/android/server/pm/PackageSender;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/android/server/pm/PackageRemovedInfo;

    .line 2
    .line 3
    invoke-direct {v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 15
    .line 16
    filled-new-array {p3}, [I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 21
    .line 22
    filled-new-array {p3}, [I

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 27
    .line 28
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 37
    .line 38
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iput-wide p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mHidden:Z

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    move-object v0, p0

    .line 51
    move-object v2, p4

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final sendDistractingPackagesChanged(Ljava/util/function/Supplier;[Ljava/lang/String;[III)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.extra.changed_package_list"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "android.intent.extra.changed_uid_list"

    .line 12
    .line 13
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 14
    .line 15
    .line 16
    const-string p2, "android.intent.extra.distraction_restrictions"

    .line 17
    .line 18
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;

    .line 22
    .line 23
    invoke-direct {p2, p0, v0, p4, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    .locals 16

    .line 1
    move-object/from16 v12, p1

    .line 2
    .line 3
    move-object/from16 v13, p2

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "MONETIZED_APP_OPENED"

    .line 10
    .line 11
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    move-object/from16 v1, p0

    .line 16
    .line 17
    iget-object v14, v1, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 18
    .line 19
    const/4 v15, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v14, v12, v15, v15, v15}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v6, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    move-object/from16 v0, p0

    .line 35
    .line 36
    move-object v1, v2

    .line 37
    move-object/from16 v2, p1

    .line 38
    .line 39
    move-object/from16 v5, p2

    .line 40
    .line 41
    move-object/from16 v7, p3

    .line 42
    .line 43
    move-object/from16 v8, p4

    .line 44
    .line 45
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v14, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const-string v0, "com.sec.android.app.samsungapps"

    .line 57
    .line 58
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    aget v1, p3, v0

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v14, v12, v15, v0, v0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object/from16 v1, p0

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v10, 0x0

    .line 82
    const/4 v11, 0x0

    .line 83
    move-object/from16 v0, p0

    .line 84
    .line 85
    move-object v1, v2

    .line 86
    move-object/from16 v2, p1

    .line 87
    .line 88
    move-object/from16 v5, p2

    .line 89
    .line 90
    move-object/from16 v7, p3

    .line 91
    .line 92
    move-object/from16 v8, p4

    .line 93
    .line 94
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-void
.end method

.method public final sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V
    .locals 15

    .line 1
    move-object v9, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v10, p2

    .line 5
    .line 6
    move-object/from16 v11, p6

    .line 7
    .line 8
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/16 v1, 0x3e8

    .line 22
    .line 23
    invoke-interface {v0, v1, v10}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v9, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 32
    .line 33
    invoke-virtual {v3, v0, v1, v11, v2}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    new-instance v13, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    move-object v0, v13

    .line 40
    move-object v1, p0

    .line 41
    move-object/from16 v2, p2

    .line 42
    .line 43
    move/from16 v3, p5

    .line 44
    .line 45
    move-object/from16 v4, p6

    .line 46
    .line 47
    move-object/from16 v5, p7

    .line 48
    .line 49
    move/from16 v6, p8

    .line 50
    .line 51
    move/from16 v7, p9

    .line 52
    .line 53
    move-object v8, v12

    .line 54
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    .line 55
    .line 56
    .line 57
    iget-object v14, v9, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    invoke-virtual {v14, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, v9, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v3, Landroid/os/Bundle;

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x0

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    aget v1, p7, v2

    .line 81
    .line 82
    :goto_0
    move/from16 v2, p5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    aget v1, v11, v2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :goto_1
    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const-string v2, "android.intent.extra.UID"

    .line 93
    .line 94
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    if-eqz p8, :cond_2

    .line 98
    .line 99
    const-string v1, "android.intent.extra.ARCHIVAL"

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    :cond_2
    const-string v1, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 106
    .line 107
    move/from16 v2, p9

    .line 108
    .line 109
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    const/4 v8, 0x0

    .line 113
    iget-object v7, v9, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 114
    .line 115
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 116
    .line 117
    move-object/from16 v2, p2

    .line 118
    .line 119
    move-object/from16 v4, p6

    .line 120
    .line 121
    move-object/from16 v5, p7

    .line 122
    .line 123
    move-object v6, v12

    .line 124
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 125
    .line 126
    .line 127
    if-eqz p3, :cond_3

    .line 128
    .line 129
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_3

    .line 134
    .line 135
    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;

    .line 136
    .line 137
    move/from16 v1, p4

    .line 138
    .line 139
    invoke-direct {v0, p0, v11, v10, v1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    :cond_3
    return-void
.end method

.method public final sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZLjava/lang/String;)V
    .locals 12

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    invoke-interface/range {p3 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 20
    .line 21
    :goto_0
    move-object v8, v6

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-array v6, v4, [I

    .line 24
    .line 25
    aput v0, v6, v3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    if-eqz v2, :cond_1

    .line 29
    .line 30
    new-array v2, v4, [I

    .line 31
    .line 32
    aput v0, v2, v3

    .line 33
    .line 34
    :goto_2
    move-object v9, v2

    .line 35
    goto :goto_3

    .line 36
    :cond_1
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_3
    const/4 v6, 0x0

    .line 40
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v11, 0x0

    .line 45
    move-object v2, p0

    .line 46
    move-object v3, p1

    .line 47
    move-object v4, p2

    .line 48
    move/from16 v10, p5

    .line 49
    .line 50
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 63
    .line 64
    move-object v1, p2

    .line 65
    iput-object v1, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 66
    .line 67
    move-object v1, p0

    .line 68
    move-object/from16 v4, p6

    .line 69
    .line 70
    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 22

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p7, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v8, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object/from16 v8, p7

    .line 17
    .line 18
    :goto_0
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    move-object/from16 v1, p0

    .line 26
    .line 27
    move-object/from16 v2, p1

    .line 28
    .line 29
    move-object/from16 v3, p2

    .line 30
    .line 31
    move-object/from16 v4, p3

    .line 32
    .line 33
    move/from16 v5, p4

    .line 34
    .line 35
    move-object/from16 v6, p5

    .line 36
    .line 37
    move-object/from16 v7, p6

    .line 38
    .line 39
    move-object/from16 v10, p9

    .line 40
    .line 41
    move-object/from16 v11, p10

    .line 42
    .line 43
    move-object/from16 v12, p11

    .line 44
    .line 45
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/16 v19, 0x0

    .line 50
    .line 51
    const/16 v20, 0x0

    .line 52
    .line 53
    const/16 v18, 0x1

    .line 54
    .line 55
    move-object/from16 v10, p0

    .line 56
    .line 57
    move-object/from16 v11, p1

    .line 58
    .line 59
    move-object/from16 v12, p2

    .line 60
    .line 61
    move-object/from16 v13, p3

    .line 62
    .line 63
    move/from16 v14, p4

    .line 64
    .line 65
    move-object/from16 v15, p5

    .line 66
    .line 67
    move-object/from16 v16, p6

    .line 68
    .line 69
    move-object/from16 v17, p8

    .line 70
    .line 71
    move-object/from16 v21, p11

    .line 72
    .line 73
    invoke-virtual/range {v10 .. v21}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    :goto_1
    return-void
.end method

.method public final sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .locals 13

    .line 1
    move-object v11, p0

    .line 2
    new-instance v12, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;

    .line 3
    .line 4
    move-object v0, v12

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object/from16 v4, p3

    .line 9
    .line 10
    move/from16 v5, p4

    .line 11
    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    move-object/from16 v8, p7

    .line 17
    .line 18
    move-object/from16 v9, p8

    .line 19
    .line 20
    move-object/from16 v10, p9

    .line 21
    .line 22
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v11, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    if-nez p5, :cond_0

    .line 31
    .line 32
    iget-object v0, v11, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 33
    .line 34
    iget-object v7, v11, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    move-object v1, p1

    .line 38
    move-object v2, p2

    .line 39
    move-object/from16 v3, p3

    .line 40
    .line 41
    move-object/from16 v4, p6

    .line 42
    .line 43
    move-object/from16 v5, p7

    .line 44
    .line 45
    move-object/from16 v6, p8

    .line 46
    .line 47
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v12, p4

    .line 8
    .line 9
    move-object/from16 v13, p6

    .line 10
    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-interface {v0, v1, v11}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-interface {v0, v2, v1, v11}, Lcom/android/server/pm/Computer;->isInstantAppInternal(IILjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v14, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 33
    .line 34
    :goto_0
    move-object v15, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-array v4, v3, [I

    .line 37
    .line 38
    aput v2, v4, v14

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    if-eqz v1, :cond_2

    .line 42
    .line 43
    new-array v3, v3, [I

    .line 44
    .line 45
    aput v2, v3, v14

    .line 46
    .line 47
    move-object/from16 v16, v3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 51
    .line 52
    move-object/from16 v16, v2

    .line 53
    .line 54
    :goto_2
    if-eqz v1, :cond_3

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_3
    move-object/from16 v17, v0

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_3
    invoke-interface {v0, v11, v15}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_3

    .line 65
    :goto_4
    new-instance v9, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    move-object v0, v9

    .line 68
    move-object/from16 v1, p0

    .line 69
    .line 70
    move-object/from16 v2, p2

    .line 71
    .line 72
    move/from16 v3, p3

    .line 73
    .line 74
    move-object/from16 v4, p4

    .line 75
    .line 76
    move/from16 v5, p5

    .line 77
    .line 78
    move-object/from16 v6, p6

    .line 79
    .line 80
    move-object v7, v15

    .line 81
    move-object/from16 v8, v16

    .line 82
    .line 83
    move-object v14, v9

    .line 84
    move-object/from16 v9, v17

    .line 85
    .line 86
    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v10, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    iget-object v0, v10, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroid/os/Bundle;

    .line 100
    .line 101
    const/4 v1, 0x4

    .line 102
    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/String;

    .line 111
    .line 112
    const-string v2, "android.intent.extra.changed_component_name"

    .line 113
    .line 114
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    new-array v1, v1, [Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    const-string v2, "android.intent.extra.changed_component_name_list"

    .line 127
    .line 128
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "android.intent.extra.DONT_KILL_APP"

    .line 132
    .line 133
    move/from16 v2, p3

    .line 134
    .line 135
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    const-string v1, "android.intent.extra.UID"

    .line 139
    .line 140
    move/from16 v2, p5

    .line 141
    .line 142
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    if-eqz v13, :cond_4

    .line 146
    .line 147
    const-string v1, "android.intent.extra.REASON"

    .line 148
    .line 149
    invoke-virtual {v3, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    const/4 v8, 0x0

    .line 153
    iget-object v7, v10, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 154
    .line 155
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 156
    .line 157
    move-object/from16 v2, p2

    .line 158
    .line 159
    move-object v4, v15

    .line 160
    move-object/from16 v5, v16

    .line 161
    .line 162
    move-object/from16 v6, v17

    .line 163
    .line 164
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v11, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v6, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v15, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 8
    .line 9
    iget-object v14, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 10
    .line 11
    iget-object v13, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 12
    .line 13
    iget-boolean v12, v0, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 16
    .line 17
    iget-boolean v10, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 20
    .line 21
    iget-boolean v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 22
    .line 23
    new-instance v8, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "android.intent.extra.UID"

    .line 29
    .line 30
    iget v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 31
    .line 32
    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string v3, "android.intent.extra.DATA_REMOVED"

    .line 36
    .line 37
    invoke-virtual {v8, v3, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v3, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    .line 41
    .line 42
    invoke-virtual {v8, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v3, "android.intent.extra.DONT_KILL_APP"

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    xor-int/lit8 v5, p3, 0x1

    .line 49
    .line 50
    invoke-virtual {v8, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v3, "android.intent.extra.USER_INITIATED"

    .line 54
    .line 55
    xor-int/lit8 v5, p4, 0x1

    .line 56
    .line 57
    invoke-virtual {v8, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v3, "android.intent.extra.HIDDEN"

    .line 61
    .line 62
    iget-boolean v5, v0, Lcom/android/server/pm/PackageRemovedInfo;->mHidden:Z

    .line 63
    .line 64
    invoke-virtual {v8, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move/from16 v17, v16

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    move/from16 v17, v4

    .line 78
    .line 79
    :goto_1
    if-nez v17, :cond_2

    .line 80
    .line 81
    if-eqz p5, :cond_3

    .line 82
    .line 83
    :cond_2
    const-string v1, "android.intent.extra.REPLACING"

    .line 84
    .line 85
    invoke-virtual {v8, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    :cond_3
    if-eqz p5, :cond_4

    .line 89
    .line 90
    const-string v1, "android.intent.extra.ARCHIVAL"

    .line 91
    .line 92
    invoke-virtual {v8, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    :cond_4
    const-string v1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    .line 96
    .line 97
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    if-eqz v11, :cond_5

    .line 101
    .line 102
    if-eqz v6, :cond_5

    .line 103
    .line 104
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 105
    .line 106
    const/16 v18, 0x0

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    const/16 v19, 0x0

    .line 110
    .line 111
    move-object/from16 v1, p0

    .line 112
    .line 113
    move-object v3, v11

    .line 114
    move-object v4, v8

    .line 115
    move-object v7, v15

    .line 116
    move-object/from16 p3, v8

    .line 117
    .line 118
    move-object v8, v14

    .line 119
    move/from16 v20, v9

    .line 120
    .line 121
    move-object/from16 v9, v19

    .line 122
    .line 123
    move/from16 v19, v10

    .line 124
    .line 125
    move-object/from16 v10, v18

    .line 126
    .line 127
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    move-object/from16 p3, v8

    .line 132
    .line 133
    move/from16 v20, v9

    .line 134
    .line 135
    move/from16 v19, v10

    .line 136
    .line 137
    :goto_2
    if-eqz v20, :cond_6

    .line 138
    .line 139
    return-void

    .line 140
    :cond_6
    if-eqz v11, :cond_8

    .line 141
    .line 142
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v10, 0x0

    .line 147
    move-object/from16 v1, p0

    .line 148
    .line 149
    move-object v3, v11

    .line 150
    move-object/from16 v4, p3

    .line 151
    .line 152
    move-object v7, v15

    .line 153
    move-object v8, v14

    .line 154
    move-object v9, v13

    .line 155
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 156
    .line 157
    .line 158
    const-string v2, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    .line 159
    .line 160
    const-string v6, "android"

    .line 161
    .line 162
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    if-eqz v12, :cond_8

    .line 166
    .line 167
    if-nez v19, :cond_8

    .line 168
    .line 169
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 170
    .line 171
    const/high16 v5, 0x1000000

    .line 172
    .line 173
    const/4 v6, 0x0

    .line 174
    const/4 v10, 0x0

    .line 175
    move-object/from16 v1, p0

    .line 176
    .line 177
    move-object v3, v11

    .line 178
    move-object/from16 v4, p3

    .line 179
    .line 180
    move-object v7, v15

    .line 181
    move-object v8, v14

    .line 182
    move-object v9, v13

    .line 183
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    iget v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 187
    .line 188
    move-object/from16 v2, p2

    .line 189
    .line 190
    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 191
    .line 192
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 193
    .line 194
    iget-object v3, v2, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    .line 195
    .line 196
    monitor-enter v3

    .line 197
    :try_start_0
    iget-object v2, v2, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 198
    .line 199
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    move/from16 v4, v16

    .line 205
    .line 206
    :goto_3
    if-ge v4, v3, :cond_7

    .line 207
    .line 208
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    check-cast v5, Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 213
    .line 214
    invoke-interface {v5, v11, v1}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageRemoved(Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v4, v4, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-static {v1, v11}, Landroid/content/pm/UserPackage;->removeFromCache(ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    throw v0

    .line 231
    :cond_8
    :goto_4
    iget-boolean v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 232
    .line 233
    if-eqz v0, :cond_b

    .line 234
    .line 235
    if-nez v17, :cond_a

    .line 236
    .line 237
    if-eqz p5, :cond_9

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_9
    move-object/from16 v1, p3

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_a
    :goto_5
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 244
    .line 245
    move-object/from16 v1, p3

    .line 246
    .line 247
    invoke-virtual {v1, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :goto_6
    const-string v0, "android.intent.action.UID_REMOVED"

    .line 251
    .line 252
    const/high16 v16, 0x1000000

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    const/4 v2, 0x0

    .line 257
    const/16 v21, 0x0

    .line 258
    .line 259
    move-object/from16 v12, p0

    .line 260
    .line 261
    move-object v3, v13

    .line 262
    move-object v13, v0

    .line 263
    move-object v0, v14

    .line 264
    move-object v14, v2

    .line 265
    move-object v2, v15

    .line 266
    move-object v15, v1

    .line 267
    move-object/from16 v18, v2

    .line 268
    .line 269
    move-object/from16 v19, v0

    .line 270
    .line 271
    move-object/from16 v20, v3

    .line 272
    .line 273
    invoke-virtual/range {v12 .. v21}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 274
    .line 275
    .line 276
    :cond_b
    return-void
.end method

.method public final sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V
    .locals 9

    .line 1
    new-instance v7, Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v0, "android.intent.extra.changed_package_list"

    .line 8
    .line 9
    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p3, "android.intent.extra.changed_uid_list"

    .line 13
    .line 14
    invoke-virtual {v7, p3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 15
    .line 16
    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    const-string p3, "android.intent.extra.quarantined"

    .line 20
    .line 21
    const/4 p4, 0x1

    .line 22
    invoke-virtual {v7, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance p3, Landroid/app/BroadcastOptions;

    .line 26
    .line 27
    invoke-direct {p3}, Landroid/app/BroadcastOptions;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 p4, 0x2

    .line 31
    invoke-virtual {p3, p4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    new-instance v8, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-direct {v8, p1, p3}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;I)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    move-object v1, p0

    .line 49
    move-object v2, p2

    .line 50
    move-object v3, v7

    .line 51
    move v4, p6

    .line 52
    move-object v5, v8

    .line 53
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    iget-object p3, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    filled-new-array {p6}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v1, p2

    .line 73
    move-object v3, v7

    .line 74
    move-object v7, p0

    .line 75
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final sendPreferredActivityChangedBroadcast(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[ILcom/android/server/pm/AsecInstallHelper$3;)V
    .locals 14

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "android.intent.extra.changed_package_list"

    .line 22
    .line 23
    move-object/from16 v2, p4

    .line 24
    .line 25
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "android.intent.extra.changed_uid_list"

    .line 29
    .line 30
    move-object/from16 v2, p5

    .line 31
    .line 32
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-string v1, "android.intent.extra.REPLACING"

    .line 38
    .line 39
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    if-eqz p2, :cond_2

    .line 43
    .line 44
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 45
    .line 46
    :goto_0
    move-object v3, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_1
    new-instance v12, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    move-object v1, p1

    .line 55
    invoke-direct {v12, p1, v0}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;I)V

    .line 56
    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v13, 0x0

    .line 65
    move-object v2, p0

    .line 66
    move-object/from16 v8, p6

    .line 67
    .line 68
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_2
    return-void
.end method

.method public final sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V
    .locals 10

    .line 1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v8, v0, [Ljava/lang/String;

    .line 6
    .line 7
    new-array v9, v0, [I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 17
    .line 18
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v8, v1

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    aput v2, v9, v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, p0

    .line 34
    move-object v2, p1

    .line 35
    move v3, p2

    .line 36
    move v4, p3

    .line 37
    move-object v5, v8

    .line 38
    move-object v6, v9

    .line 39
    move-object v7, p5

    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[ILcom/android/server/pm/AsecInstallHelper$3;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2, p3, v8, v9}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, p3

    .line 25
    :goto_0
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "android.intent.extra.USER"

    .line 30
    .line 31
    const-string v2, "android.content.pm.extra.SESSION"

    .line 32
    .line 33
    const-string v3, "android.content.pm.action.SESSION_COMMITTED"

    .line 34
    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    invoke-static {}, Landroid/multiuser/Flags;->enablePermissionToAccessHiddenProfiles()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 56
    .line 57
    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x1

    .line 66
    if-eq v4, v5, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string v6, "android.permission.ACCESS_HIDDEN_PROFILES_FULL"

    .line 80
    .line 81
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "android.permission.ACCESS_HIDDEN_PROFILES"

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_5

    .line 105
    .line 106
    :cond_4
    :goto_1
    new-instance v4, Landroid/content/Intent;

    .line 107
    .line 108
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    if-eqz p4, :cond_6

    .line 141
    .line 142
    new-instance p1, Landroid/content/Intent;

    .line 143
    .line 144
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    :goto_2
    return-void
.end method

.method public final sendSystemPackageUpdatedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;)V
    .locals 14

    .line 1
    iget-boolean v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v11, p1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v12, p1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v13, Landroid/os/Bundle;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v13, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.extra.UID"

    .line 19
    .line 20
    iget p1, p1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 21
    .line 22
    invoke-virtual {v13, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string p1, "android.intent.extra.REPLACING"

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v13, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move-object v3, v0

    .line 40
    move-object v4, v13

    .line 41
    move-object v9, v12

    .line 42
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    if-eqz v11, :cond_1

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    move-object v1, p0

    .line 55
    move-object v3, v0

    .line 56
    move-object v4, v13

    .line 57
    move-object v6, v11

    .line 58
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 62
    .line 63
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    move-object v1, p0

    .line 74
    move-object v3, v0

    .line 75
    move-object v4, v13

    .line 76
    move-object v9, v12

    .line 77
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    :goto_0
    move-wide v4, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const-wide/16 v1, 0x2710

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v8, ""

    .line 98
    .line 99
    const/16 v7, 0x137

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    move-object v3, p1

    .line 103
    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v7, 0x0

    .line 118
    move-object v1, p0

    .line 119
    move-object v6, v0

    .line 120
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
