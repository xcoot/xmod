.class public final Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final RULES_DIR:Ljava/io/File;

.field public static final factoryMap:Ljava/util/HashMap;


# instance fields
.field public mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field public final mAms:Lcom/android/server/am/ActivityManagerService$PidMap;

.field public mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field public final mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

.field public mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "ifw"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    .line 14
    .line 15
    sget-object v3, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/AndFilter$1;

    .line 16
    .line 17
    sget-object v4, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/OrFilter$1;

    .line 18
    .line 19
    sget-object v5, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/NotFilter$1;

    .line 20
    .line 21
    sget-object v6, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/StringFilter$1;

    .line 22
    .line 23
    sget-object v7, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$1;

    .line 24
    .line 25
    sget-object v8, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$1;

    .line 26
    .line 27
    sget-object v9, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$1;

    .line 28
    .line 29
    sget-object v10, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$1;

    .line 30
    .line 31
    sget-object v11, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$1;

    .line 32
    .line 33
    sget-object v12, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$1;

    .line 34
    .line 35
    sget-object v13, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$1;

    .line 36
    .line 37
    sget-object v14, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$1;

    .line 38
    .line 39
    sget-object v15, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$1;

    .line 40
    .line 41
    sget-object v16, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/CategoryFilter$1;

    .line 42
    .line 43
    sget-object v17, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/SenderFilter$1;

    .line 44
    .line 45
    sget-object v18, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/SenderPackageFilter$1;

    .line 46
    .line 47
    sget-object v19, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/SenderPermissionFilter$1;

    .line 48
    .line 49
    sget-object v20, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/PortFilter$1;

    .line 50
    .line 51
    filled-new-array/range {v3 .. v20}, [Lcom/android/server/firewall/FilterFactory;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/HashMap;

    .line 56
    .line 57
    const/16 v2, 0x18

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 60
    .line 61
    .line 62
    sput-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_0
    const/16 v2, 0x12

    .line 66
    .line 67
    if-ge v1, v2, :cond_0

    .line 68
    .line 69
    aget-object v2, v0, v1

    .line 70
    .line 71
    sget-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    .line 72
    .line 73
    iget-object v4, v2, Lcom/android/server/firewall/FilterFactory;->mTag:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$PidMap;Lcom/android/server/am/ActivityManagerService$UiHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 26
    .line 27
    new-instance p1, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p0, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;-><init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 37
    .line 38
    sget-object p1, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    .line 47
    .line 48
    invoke-direct {p2, p0, p1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v4, v1

    .line 9
    move v3, v2

    .line 10
    :goto_0
    array-length v5, p0

    .line 11
    if-ge v3, v5, :cond_3

    .line 12
    .line 13
    aget-object v5, p0, v3

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    add-int/2addr v7, v6

    .line 24
    add-int/2addr v7, v1

    .line 25
    const/16 v6, 0x96

    .line 26
    .line 27
    if-ge v7, v6, :cond_1

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    const/16 v6, 0x2c

    .line 32
    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v4, v2

    .line 38
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/16 v6, 0x7d

    .line 47
    .line 48
    if-lt v5, v6, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    array-length v0, p0

    .line 65
    if-lez v0, :cond_4

    .line 66
    .line 67
    aget-object p0, p0, v2

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/lit16 v1, v1, -0x95

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 p0, 0x2d

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_4
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method

.method public static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 21
    .line 22
    const-string v1, "Unknown element in filter list: "

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method


# virtual methods
.method public final checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const-wide/16 v7, 0x0

    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    move-object/from16 v3, p4

    .line 20
    .line 21
    move-object/from16 v4, p7

    .line 22
    .line 23
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    :cond_0
    move-object/from16 v1, p1

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    .line 37
    .line 38
    move-object/from16 v10, p2

    .line 39
    .line 40
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    move v11, v1

    .line 57
    move v12, v11

    .line 58
    move v13, v12

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ge v11, v2, :cond_3

    .line 64
    .line 65
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move-object v14, v2

    .line 70
    check-cast v14, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 71
    .line 72
    move-object v2, v14

    .line 73
    move-object v3, p0

    .line 74
    move-object/from16 v4, p2

    .line 75
    .line 76
    move-object/from16 v5, p4

    .line 77
    .line 78
    move/from16 v6, p5

    .line 79
    .line 80
    move/from16 v7, p6

    .line 81
    .line 82
    move-object/from16 v8, p7

    .line 83
    .line 84
    move/from16 v9, p8

    .line 85
    .line 86
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/firewall/AndFilter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    iget-boolean v2, v14, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    .line 93
    .line 94
    or-int/2addr v12, v2

    .line 95
    iget-boolean v2, v14, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    .line 96
    .line 97
    or-int/2addr v13, v2

    .line 98
    if-eqz v12, :cond_2

    .line 99
    .line 100
    if-eqz v13, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    :goto_1
    if-eqz v13, :cond_7

    .line 107
    .line 108
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/4 v2, 0x0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    move-object v4, v0

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    move-object v4, v2

    .line 122
    :goto_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    move/from16 v3, p5

    .line 129
    .line 130
    :try_start_0
    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    array-length v1, v0

    .line 137
    invoke-static {v0}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_3

    .line 142
    :catch_0
    move-exception v0

    .line 143
    goto :goto_4

    .line 144
    :cond_5
    :goto_3
    move-object v7, v2

    .line 145
    goto :goto_5

    .line 146
    :goto_4
    const-string v5, "IntentFirewall"

    .line 147
    .line 148
    const-string v6, "Remote exception while retrieving packages"

    .line 149
    .line 150
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    move/from16 v3, p5

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :goto_5
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    move-object v3, v2

    .line 186
    move-object/from16 v9, p7

    .line 187
    .line 188
    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const v1, 0xc8c8

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 196
    .line 197
    .line 198
    :cond_7
    xor-int/lit8 v0, v12, 0x1

    .line 199
    .line 200
    return v0
.end method

.method public final getPackageManager()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    return-object p0
.end method

.method public final readRulesDir(Ljava/io/File;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    new-array v3, v2, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    move v0, v4

    .line 8
    :goto_0
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    new-instance v5, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 11
    .line 12
    invoke-direct {v5}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    .line 13
    .line 14
    .line 15
    aput-object v5, v3, v0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-eqz v5, :cond_b

    .line 25
    .line 26
    move v8, v4

    .line 27
    :goto_1
    array-length v0, v5

    .line 28
    if-ge v8, v0, :cond_b

    .line 29
    .line 30
    aget-object v9, v5, v8

    .line 31
    .line 32
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v10, ".xml"

    .line 37
    .line 38
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_a

    .line 43
    .line 44
    const-string v10, "Error reading intent firewall rules from "

    .line 45
    .line 46
    const-string v11, "Error while closing "

    .line 47
    .line 48
    const-string v12, "IntentFirewall"

    .line 49
    .line 50
    new-instance v13, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    move v0, v4

    .line 56
    :goto_2
    if-ge v0, v2, :cond_1

    .line 57
    .line 58
    new-instance v14, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    .line 70
    .line 71
    invoke-direct {v14, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 72
    .line 73
    .line 74
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-interface {v15, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo v0, "rules"

    .line 83
    .line 84
    .line 85
    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    :cond_2
    :goto_3
    invoke-static {v15, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v7, "activity"

    .line 103
    .line 104
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    const/4 v6, -0x1

    .line 109
    if-eqz v7, :cond_3

    .line 110
    .line 111
    move v0, v4

    .line 112
    goto :goto_4

    .line 113
    :cond_3
    const-string/jumbo v7, "broadcast"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_4

    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    goto :goto_4

    .line 124
    :cond_4
    const-string/jumbo v7, "service"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    const/4 v0, 0x2

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    move v0, v6

    .line 136
    :goto_4
    if-eq v0, v6, :cond_2

    .line 137
    .line 138
    new-instance v6, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 139
    .line 140
    invoke-direct {v6}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    :try_start_2
    invoke-virtual {v6, v15}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    :try_start_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    move-object v1, v0

    .line 158
    goto/16 :goto_d

    .line 159
    .line 160
    :catch_0
    move-exception v0

    .line 161
    goto/16 :goto_a

    .line 162
    .line 163
    :catch_1
    move-exception v0

    .line 164
    goto/16 :goto_c

    .line 165
    .line 166
    :catch_2
    move-exception v0

    .line 167
    move-object v6, v0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v7, "Error reading an intent firewall rule from "

    .line 174
    .line 175
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v12, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_6
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :catch_3
    move-exception v0

    .line 194
    move-object v2, v0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v12, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .line 209
    .line 210
    :goto_5
    move v0, v4

    .line 211
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-ge v0, v2, :cond_a

    .line 216
    .line 217
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Ljava/util/List;

    .line 222
    .line 223
    aget-object v6, v3, v0

    .line 224
    .line 225
    move v7, v4

    .line 226
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-ge v7, v9, :cond_9

    .line 231
    .line 232
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    check-cast v9, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 237
    .line 238
    move v10, v4

    .line 239
    :goto_8
    iget-object v11, v9, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    if-ge v10, v11, :cond_7

    .line 246
    .line 247
    iget-object v11, v9, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    check-cast v11, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 254
    .line 255
    invoke-virtual {v6, v11}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    add-int/lit8 v10, v10, 0x1

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_7
    move v10, v4

    .line 262
    :goto_9
    iget-object v11, v9, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    if-ge v10, v11, :cond_8

    .line 269
    .line 270
    iget-object v11, v9, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    check-cast v11, Landroid/content/ComponentName;

    .line 277
    .line 278
    iget-object v12, v6, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    .line 279
    .line 280
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    check-cast v12, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 285
    .line 286
    const-class v14, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 287
    .line 288
    invoke-static {v14, v12, v9}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    check-cast v12, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 293
    .line 294
    iget-object v14, v6, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    .line 295
    .line 296
    invoke-virtual {v14, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    add-int/lit8 v10, v10, 0x1

    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :goto_a
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-static {v12, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 324
    .line 325
    .line 326
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 327
    .line 328
    .line 329
    goto :goto_f

    .line 330
    :catch_4
    move-exception v0

    .line 331
    move-object v2, v0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :goto_b
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v12, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    .line 346
    .line 347
    goto :goto_f

    .line 348
    :goto_c
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-static {v12, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 364
    .line 365
    .line 366
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 367
    .line 368
    .line 369
    goto :goto_f

    .line 370
    :catch_5
    move-exception v0

    .line 371
    move-object v2, v0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    goto :goto_b

    .line 378
    :goto_d
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 379
    .line 380
    .line 381
    goto :goto_e

    .line 382
    :catch_6
    move-exception v0

    .line 383
    move-object v2, v0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v12, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .line 398
    .line 399
    :goto_e
    throw v1

    .line 400
    :catch_7
    :cond_a
    :goto_f
    add-int/lit8 v8, v8, 0x1

    .line 401
    .line 402
    const/4 v2, 0x3

    .line 403
    goto/16 :goto_1

    .line 404
    .line 405
    :cond_b
    const-string v0, "IntentFirewall"

    .line 406
    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v5, "Read new rules (A:"

    .line 410
    .line 411
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    aget-object v5, v3, v4

    .line 415
    .line 416
    iget-object v5, v5, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 417
    .line 418
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v5, " B:"

    .line 430
    .line 431
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const/4 v5, 0x1

    .line 435
    aget-object v6, v3, v5

    .line 436
    .line 437
    iget-object v5, v6, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 438
    .line 439
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v5, " S:"

    .line 451
    .line 452
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const/4 v5, 0x2

    .line 456
    aget-object v6, v3, v5

    .line 457
    .line 458
    iget-object v5, v6, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 459
    .line 460
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v5, ")"

    .line 472
    .line 473
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    iget-object v0, v1, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 484
    .line 485
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 486
    .line 487
    move-object v2, v0

    .line 488
    check-cast v2, Lcom/android/server/am/ActivityManagerService;

    .line 489
    .line 490
    monitor-enter v2

    .line 491
    :try_start_a
    aget-object v0, v3, v4

    .line 492
    .line 493
    iput-object v0, v1, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 494
    .line 495
    const/4 v4, 0x1

    .line 496
    aget-object v0, v3, v4

    .line 497
    .line 498
    iput-object v0, v1, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 499
    .line 500
    const/4 v4, 0x2

    .line 501
    aget-object v0, v3, v4

    .line 502
    .line 503
    iput-object v0, v1, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 504
    .line 505
    monitor-exit v2

    .line 506
    return-void

    .line 507
    :catchall_1
    move-exception v0

    .line 508
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 509
    throw v0
.end method
