.class public abstract Lcom/android/server/wm/DesktopModeLaunchParamsModifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field public static final ENFORCE_DEVICE_RESTRICTIONS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.wm.debug.desktop_mode_initial_bounds_scale"

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x4b

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "persist.wm.debug.desktop_mode_enforce_device_restrictions"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->ENFORCE_DEVICE_RESTRICTIONS:Z

    .line 18
    .line 19
    return-void
.end method

.method public static enforceDeviceRestrictions()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->ENFORCE_DEVICE_RESTRICTIONS:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isDesktopModeSupported(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x11101bc

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method
