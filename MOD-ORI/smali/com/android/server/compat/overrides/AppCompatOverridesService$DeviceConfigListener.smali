.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNamespace:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "remove_overrides"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string/jumbo v2, "owned_change_ids"

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v3, v4, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v4, Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Ljava/lang/String;

    .line 76
    .line 77
    new-instance v8, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 78
    .line 79
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Ljava/util/Set;

    .line 84
    .line 85
    invoke-direct {v8, v6}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removeAllPackageOverrides(Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    if-eqz v0, :cond_3

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    new-array v0, v0, [Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p0, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 116
    .line 117
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method
