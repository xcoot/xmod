.class public final Lcom/android/server/app/GameManagerService$LocalService;
.super Landroid/app/GameManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/CompatScaleProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/GameManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getResolutionScalingFactor(Ljava/lang/String;I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    .line 2
    .line 3
    sget v1, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {v0, p2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/high16 p1, -0x40800000    # -1.0f

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :cond_1
    :goto_0
    return p1
.end method

.method public final updateResolutionScalingFactorInternal(Ljava/lang/String;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string/jumbo v2, "game_overlay"

    .line 39
    .line 40
    .line 41
    invoke-static {v2, p1}, Landroid/provider/DeviceConfig;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/app/GameManagerService;->updateResolutionScalingFactor(Ljava/lang/String;IFI)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method
