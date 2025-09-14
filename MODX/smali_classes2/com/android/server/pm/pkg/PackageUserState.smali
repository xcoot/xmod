.class public interface abstract Lcom/android/server/pm/pkg/PackageUserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;

    .line 2
    .line 3
    sput-object v0, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract dataExists()Z
.end method

.method public abstract getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
.end method

.method public abstract getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;
.end method

.method public abstract getCeDataInode()J
.end method

.method public abstract getDeDataInode()J
.end method

.method public abstract getDisabledComponents()Landroid/util/ArraySet;
.end method

.method public abstract getDistractionFlags()I
.end method

.method public abstract getEnabledComponents()Landroid/util/ArraySet;
.end method

.method public abstract getEnabledState()I
.end method

.method public abstract getFirstInstallTimeMillis()J
.end method

.method public abstract getHarmfulAppWarning()Ljava/lang/String;
.end method

.method public abstract getInstallReason()I
.end method

.method public abstract getLastDisableAppCaller()Ljava/lang/String;
.end method

.method public abstract getMinAspectRatio()I
.end method

.method public abstract getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
.end method

.method public abstract getSharedLibraryOverlayPaths()Ljava/util/Map;
.end method

.method public abstract getSplashScreenTheme()Ljava/lang/String;
.end method

.method public abstract getUninstallReason()I
.end method

.method public abstract isComponentDisabled(Ljava/lang/String;)Z
.end method

.method public abstract isComponentEnabled(Ljava/lang/String;)Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isInstalled()Z
.end method

.method public abstract isInstantApp()Z
.end method

.method public abstract isNotLaunched()Z
.end method

.method public abstract isQuarantined()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract isSuspended()Z
.end method

.method public abstract isVirtualPreload()Z
.end method
