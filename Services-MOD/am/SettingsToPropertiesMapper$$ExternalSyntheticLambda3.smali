.class public final synthetic Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/aconfig_new_storage/Flags;->enableAconfigStorageDaemon()Z

    .line 4
    return-void
.end method
