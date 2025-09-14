.class public final synthetic Lcom/android/server/wm/ActivitySecurityModelFeatureFlags$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 1
    const-string/jumbo p0, "window_manager"

    .line 2
    .line 3
    .line 4
    const-string p1, "ActivitySecurity__asm_toasts_enabled"

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sput p1, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmToastsEnabled:I

    .line 12
    .line 13
    const-string p1, "ActivitySecurity__asm_restrictions_enabled"

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    sput p0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    .line 20
    .line 21
    return-void
.end method
