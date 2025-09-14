.class public final synthetic Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SynchedDeviceConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SynchedDeviceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mDefaultValue:Z

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mNamespace:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iput-boolean p0, p2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mOverrideValue:Z

    .line 19
    .line 20
    return-void
.end method
