.class public final Lcom/samsung/android/server/util/CompatChangeableAppsService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static getCompatChangeablePackageInfoList(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/server/util/CompatChangeableAppsService$LazyHolder;->sService:Lcom/samsung/android/server/util/CompatChangeableAppsService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/util/CompatChangeableAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/samsung/android/server/util/CompatChangeableAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/server/util/CompatChangeableAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string p0, "CompatChangeableApps"

    .line 18
    .line 19
    const-string p1, "PackageManager is null."

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v2, "android.intent.action.MAIN"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "android.intent.category.LAUNCHER"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/high16 v2, 0xc0000

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v3, 0x0

    .line 68
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_7

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 79
    .line 80
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 81
    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v5, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    if-nez v3, :cond_6

    .line 100
    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_6

    .line 108
    .line 109
    :cond_5
    const/4 v3, 0x1

    .line 110
    :cond_6
    new-instance v6, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;

    .line 111
    .line 112
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 113
    .line 114
    invoke-direct {v6, v4, v0, v5}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->build()Lcom/samsung/android/core/CompatChangeablePackageInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_7
    if-nez v3, :cond_8

    .line 126
    .line 127
    if-eqz p0, :cond_8

    .line 128
    .line 129
    new-instance p1, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 130
    .line 131
    invoke-direct {p1}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->build()Lcom/samsung/android/core/CompatChangeablePackageInfo;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :cond_8
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 146
    .line 147
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    return-object p0
.end method
