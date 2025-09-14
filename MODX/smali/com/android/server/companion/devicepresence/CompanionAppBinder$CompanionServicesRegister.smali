.class public final Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;
.super Lcom/android/internal/infra/PerUser;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->this$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/infra/PerUser;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final create(I)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->this$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mContext:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/android/server/companion/utils/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lcom/android/server/companion/utils/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    .line 13
    const-wide/16 v1, 0x0

    .line 15
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/HashMap;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 48
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 50
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 52
    const-string v4, "android.permission.BIND_COMPANION_DEVICE_SERVICE"

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    const-string v4, "CompanionDeviceService "

    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, " must require android.permission.BIND_COMPANION_DEVICE_SERVICE"

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    const-string v3, "CDM_PackageUtils"

    .line 89
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 95
    new-instance v4, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;

    .line 97
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 109
    move-result-object v2

    .line 110
    const/4 v4, 0x0

    .line 111
    :try_start_0
    const-string v5, "android.companion.PROPERTY_PRIMARY_COMPANION_DEVICE_SERVICE"

    .line 113
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {p0, v5, v6, v7, p1}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 128
    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move v5, v4

    .line 131
    :goto_1
    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 136
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    return-object v1
.end method

.method public final bridge synthetic forUser(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->forUser(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized forUser(I)Ljava/util/Map;
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/infra/PerUser;->forUser(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
