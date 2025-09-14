.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final synthetic this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    .line 8
    new-instance p1, Landroid/content/IntentFilter;

    .line 10
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 15
    const-string p0, "android.intent.action.PACKAGE_ADDED"

    .line 17
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    const-string p0, "android.intent.action.PACKAGE_CHANGED"

    .line 22
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 27
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string/jumbo p0, "package"

    .line 33
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "AppCompatOverridesService"

    .line 7
    if-nez p1, :cond_0

    .line 9
    const-string p0, "Failed to get package name in package receiver"

    .line 11
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_1

    .line 25
    const-string p0, "Failed to get action in package receiver"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 31
    :cond_1
    const-string v7, ""

    .line 33
    const/4 v1, -0x1

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 37
    move-result v2

    .line 38
    sparse-switch v2, :sswitch_data_0

    .line 41
    goto :goto_0

    .line 42
    :sswitch_0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 44
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x2

    .line 52
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 55
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :sswitch_2
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 66
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 74
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 77
    const-string p0, "Unsupported action in package receiver: "

    .line 79
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto/16 :goto_3

    .line 88
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 90
    invoke-virtual {p2, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_5

    .line 96
    goto/16 :goto_3

    .line 98
    :cond_5
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 100
    iget-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p2

    .line 106
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_a

    .line 112
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ljava/lang/String;

    .line 118
    invoke-static {v1, p1, v7}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_6

    .line 128
    goto :goto_1

    .line 129
    :cond_6
    invoke-static {v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_7

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    new-instance v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 142
    invoke-direct {v2, v1}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 147
    invoke-interface {v1, v2, p1}, Lcom/android/internal/compat/IPlatformCompat;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_1

    .line 151
    :catch_0
    move-exception v1

    .line 152
    const-string v2, "Failed to call IPlatformCompat#removeOverridesOnReleaseBuilds"

    .line 154
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    goto :goto_1

    .line 158
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 163
    move-result-object p2

    .line 164
    if-nez p2, :cond_8

    .line 166
    goto :goto_3

    .line 167
    :cond_8
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object v8

    .line 173
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_a

    .line 179
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/String;

    .line 185
    invoke-static {v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    .line 188
    move-result-object v2

    .line 189
    invoke-static {v1, p1, v7}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 196
    move-result-wide v4

    .line 197
    invoke-virtual {p0, v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    .line 200
    move-result-object v1

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 204
    move-result-object v2

    .line 205
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-result-object v1

    .line 209
    move-object v6, v1

    .line 210
    check-cast v6, Ljava/util/Set;

    .line 212
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    .line 214
    move-object v2, v3

    .line 215
    move-object v3, p1

    .line 216
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parsePackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Ljava/util/Map;

    .line 219
    move-result-object v1

    .line 220
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_9

    .line 226
    goto :goto_2

    .line 227
    :cond_9
    new-instance v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 229
    invoke-direct {v2, v1}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 232
    :try_start_1
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 234
    invoke-interface {v1, v2, p1}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    goto :goto_2

    .line 238
    :catch_1
    move-exception v1

    .line 239
    const-string v2, "Failed to call IPlatformCompat#putOverridesOnReleaseBuilds"

    .line 241
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    goto :goto_2

    .line 245
    :cond_a
    :goto_3
    return-void

    .line 246
    nop

    .line 247
    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
