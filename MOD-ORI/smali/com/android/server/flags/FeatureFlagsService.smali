.class public final Lcom/android/server/flags/FeatureFlagsService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

.field public final mShellCommand:Lcom/android/server/flags/FlagsShellCommand;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/flags/FlagOverrideStore;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/flags/GlobalSettingsProxy;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v1, p1}, Lcom/android/server/flags/GlobalSettingsProxy;-><init>(Landroid/content/ContentResolver;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/flags/FlagOverrideStore;-><init>(Lcom/android/server/flags/GlobalSettingsProxy;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/flags/FeatureFlagsService;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/flags/FlagsShellCommand;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lcom/android/server/flags/FlagsShellCommand;-><init>(Lcom/android/server/flags/FlagOverrideStore;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsService;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x1f4

    .line 5
    .line 6
    if-ne p1, p0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/flags/FeatureFlags;->sync()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    const-string v0, "FeatureFlagsService"

    .line 2
    .line 3
    const-string v1, "Started Feature Flag Service"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/flags/FeatureFlagsBinder;

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/flags/FeatureFlagsService;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/flags/FeatureFlagsService;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    .line 22
    .line 23
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/flags/FeatureFlagsBinder;-><init>(Lcom/android/server/flags/FlagOverrideStore;Lcom/android/server/flags/FlagsShellCommand;Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "feature_flags"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    const-class v1, Landroid/flags/FeatureFlags;

    .line 33
    .line 34
    new-instance v2, Landroid/flags/FeatureFlags;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Landroid/flags/FeatureFlags;-><init>(Landroid/flags/IFeatureFlags;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
