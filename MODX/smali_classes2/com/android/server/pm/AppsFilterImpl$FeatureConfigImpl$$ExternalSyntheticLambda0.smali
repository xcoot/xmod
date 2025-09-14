.class public final synthetic Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "package_query_filtering_enabled"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    const-string/jumbo v0, "package_query_filtering_enabled"

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput-boolean p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1

    .line 35
    :cond_0
    :goto_0
    return-void
.end method
