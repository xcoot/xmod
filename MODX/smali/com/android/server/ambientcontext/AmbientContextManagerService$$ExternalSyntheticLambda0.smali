.class public final synthetic Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "service_enabled"

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    const-string p1, "ambient_context_manager_service"

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    .line 28
    const-string/jumbo p1, "wearable_sensing"

    .line 31
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    move-result p1

    .line 35
    iput-boolean p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsWearableServiceEnabled:Z

    .line 37
    :cond_0
    return-void
.end method
